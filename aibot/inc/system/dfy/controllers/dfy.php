<?php
class dfy extends MY_Controller {
	
	public $tb_users = "sp_users";
	public $tb_package_manger = "sp_package_manager";
	public $module_name;

	public function __construct(){
		parent::__construct();
		$CI = &get_instance();
		$this->load->model(get_class($this).'_model', 'model');
		$this->load->model('user_manager/user_manager_model', 'user_manager_model');

		//
		$this->module_name = get_module_config( $this, 'name' );
		$this->module_icon = get_module_config( $this, 'icon' );
		//
	}

	public function index($page = "", $ids = "")
	{    
		if(_s("u_id")){
            redirect( get_url("login") );
            }
		$ui = _u("id");
		$dataa = $this->model->get("*", $this->tb_users, "id = '".$ui."'");
		// if($dataa->oto_5 != 1){
		// 	redirect( get_url("login") );
  //           }
		$result = $this->model->get("*", $this->tb_users, "reseller_id = '{$ui}'");
		
		$page_type = is_ajax()?false:true;

		//
		$data = [];
		
		switch ($page) {
			case 'package':
				$package_id = _u("package");
				$package = $this->model->get("*", $this->tb_package_manger, "id = '{$package_id}'");
				$data['result'] = $package;
				break;
				case 'edit_market':
				$data['result'] = $this->model->get("*", "sp_market", "id = '{$ids}'");
					
				break;
				
			default:
				$uid = _u("id");
				$data['resultd'] = $this->model->get_2("*", "sp_market", ["uid" => 1, "dfy" => 1], "id", "desc");
				
		}

		$page = page($this, "pages", "general", $page, $data, $page_type);
		//

		if( !is_ajax() ){
			
			$views = [
				"subheader" => view( 'main/subheader', [ 'result' => $result, 'module_name' => $this->module_name, 'module_icon' => $this->module_icon ], true ),
				"column_one" => view("main/sidebar", [ 'result' => $result, 'module_name' => $this->module_name, 'module_icon' => $this->module_icon ], true ),
				"column_two" => view("main/content", [ 'view' => $page ] ,true), 
			];
			
			views( [
				"title" => $this->module_name,
				"fragment" => "fragment_two",
				"views" => $views
			] );

		}else{
			_e( $page, false ); 
		}
	}
	
	
	
	public function ajax_create_market(){
		$name = str_replace(' ', '_', post("name"));
		$uid = _u("id"); 
		validate('null', __('name'), $name);
		 $file_path = "";
		 $mm = $this->model->get("*", "sp_market", "name = '{$name}'");
		 if($mm){
		 $this->session->set_flashdata("market_fail", "Market name already taken!");
          redirect('market_place/index/create_market');
          exit(); 
		 }
		 if (isset($_FILES) && !empty($_FILES['logo']['name'])){
		 	$this->create_upload_folder();
		    $config['upload_path'] = get_upload_path();
			$config['allowed_types'] = 'jpg|JPG|jpeg|JPEG|png|PNG';
			$config['max_size'] = 10240;
			$config['file_name'] = time();
			$this->load->library('upload', $config);
			$this->upload->initialize($config);
          if (!$this->upload->do_upload("logo"))
		        {
	                // ms ( array(
	                // 	"status"  => "error",
	                // 	"message" => __( $this->upload->display_errors() )
	                // ) );
	               redirect('market_place/index');
		        }
		        else
		        {
		        	$cover = $this->upload->data()['full_path'];
				$file = $this->upload->data()['file_name'];
				$ext = $this->upload->data()['file_ext'];
		        $file_path = get_upload_path($file);
		        }
		}
		$param = array(
			"uid" => $uid,
			"name" => $name,
			"logo" => $file_path,
			"status"    => 0
		);
		
		$this->user_manager_model->create_market($param);
		redirect('market_place/index');
	}

	public function create_upload_folder(){
		$user_path = get_upload_path();
		$upload_path = $user_path ."../";
		if ( !file_exists( $upload_path ) ) 
		{
			$uold = umask( 0 );
	    	mkdir( $upload_path , 0777 ); 
			umask( $uold );
	    	file_put_contents( $upload_path . "index.php", '<?php header("Location: ../"); exit;' );
	    }

		if ( !file_exists( $user_path ) ) 
		{
			$uold = umask(0);
	    	mkdir($user_path, 0777);
			umask($uold);
	    	file_put_contents($user_path."index.php", '<?php header("Location: ../"); exit;');
	    }
	}


	

	public function save($ids = "")
	{	
  
  $name = str_replace(' ', '_', post("name"));
  $store = $this->model->get("*", "sp_market", "id = '{$ids}'");
  $file_path = "";
  if (isset($_FILES) && !empty($_FILES['logo']['name'])){
        	$this->create_upload_folder();
		$config['upload_path'] = get_upload_path();
			$config['allowed_types'] = 'jpg|JPG|jpeg|JPEG|png|PNG';
			$config['max_size'] = 10240;
			$config['file_name'] = time();
			$this->load->library('upload', $config);
			$this->upload->initialize($config);
          if (!$this->upload->do_upload("logo"))
		        {
	                // ms ( array(
	                // 	"status"  => "error",
	                // 	"message" => __( $this->upload->display_errors() )
	                // ) );
	               redirect('market_place/index');
		        }
		        else
		        {
		        $cover = $this->upload->data()['full_path'];
				$file = $this->upload->data()['file_name'];
				$ext = $this->upload->data()['file_ext'];
		        $file_path = get_upload_path($file);
		        }
	
		}else{
			$file_path = $store->logo;
		}


			$data = [
				"name" => $name,
				"logo" => $file_path,
			];


			$this->model->update("sp_market" , $data, ["id" => $ids]);
 			redirect('market_place/index');

	}

	public function copy_market($id = ""){
	  
	}

}