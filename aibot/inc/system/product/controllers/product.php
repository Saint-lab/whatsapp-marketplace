<?php
class product extends MY_Controller {
	
	public $tb_users = "sp_users";
	public $tb_package_manger = "sp_package_manager";
	public $module_name;

	public function __construct(){
		parent::__construct();
		$CI = &get_instance();
		$this->load->database();
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
				case 'edit_product':
				$data['result'] = $this->model->get("*", "sp_product", "id = '{$ids}'");
				$data['markets'] = $this->model->get_2("*", "sp_market", "uid = '".$ui."'");	
				break;
				
			default:
				$uid = _u("id");
				$data['resultd'] = $this->model->get_2("*", "sp_product", "uid = '".$uid."'", "id", "desc");
				$data['markets'] = $this->model->get_2("*", "sp_market", "uid = '".$uid."'");
				
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
	
	public function search_user(){
		$page_type = is_ajax()?false:true;
		$page = 'search_user';
		$email = post("search");
		$data['result'] = $this->model->get("*", "sp_market", "name = '{$name}'");
		$page = page($this, "pages", "general", $page, $data, $page_type);
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
	public function back_to_admin(){
		if( !_s("tmp_uid") || !_s("tmp_team_id") ){
			ms([
				"status" => "error",
				"message" => __("Unscuccessfull")
			]);
		}

		_ss("uid", _s("tmp_uid"));
		_ss("team_id", _s("tmp_team_id"));

		_us("tmp_uid");
		_us("tmp_team_id");

		ms([
			"status" => "success",
			"message" => __("Success")
		]);
	}

	public function ajax_account(){
		$fullname = post("fullname");
		$email = post("email");
		$timezone = post("timezone");

		$this->user_manager_model->update_account($fullname, $email, $timezone);
	}
	
	public function ajax_create_product(){
		$name = post("name");
		$category = post("category");
		$price = post("price");
		$old = post("old");
		$des = post("des");
		$ldes = post("ldes");
		$market = post("market");
		$feature = post("feature");
		$type = post("type");
		$uid = _u("id");
		validate('null', __('name'), $name);
		validate('null', __('category'), $category);
		validate('null', __('price'), $price);
		
		if($market == 0){
		  _ss("p_err", "Please Select a market place!");
		  redirect('product/index/create_product');	
		}
		$file_path = array();
	   $dataInfo = array();
		 if (!empty( $_FILES )){
		 	$ppt = $this->create_upload_folder();
		 	$config['upload_path'] = $ppt;
			$config['allowed_types'] = 'jpg|JPG|jpeg|JPEG|png|PNG';
			$config['max_size'] = 10240;
			$config['encrypt_name'] = TRUE;
			//$config['file_name'] = time();
			
             $files = $_FILES;
             // var_dump($_FILES);die();
             $cpt = count($_FILES['img']['name']);
             $this->load->library('upload', $config);
		    for ( $i=0; $i < $cpt; $i++ )
		    { 
		    	
          $_FILES['img']['name'] = $files['img']['name'][$i];
        $_FILES['img']['type']= $files['img']['type'][$i];
        $_FILES['img']['tmp_name']= $files['img']['tmp_name'][$i];
        $_FILES['img']['error']= $files['img']['error'][$i];
        $_FILES['img']['size']= $files['img']['size'][$i];    

        $this->upload->initialize($config);
        $this->upload->do_upload('img');
        $dataInfo[] = $this->upload->data();
     }
    
      for($k=0; $k < count($dataInfo); $k++){
      	$file_path[$k] = $ppt.'/'.$dataInfo[$k]['file_name'];
      }
		}
		
		$param = array(
			"uid" => $uid,
			"mid" => $market,
			"name" => $name,
			"price" => $price,
			"old_price"   => $old,
			"des"  => $des,
			"image" => json_encode($file_path),
			"logtext" => $ldes,
			"category" => $category,
			"feature"  => $feature,
			"type"  => $type,
		);
		
		$this->user_manager_model->create_product($param);
		 _ss("p_success", "Successful");
		redirect('product/index');
	}

	public function create_upload_folder(){
		$user_path = get_upload_path();
		$upload_path = $user_path ."../";
		$user_path = $user_path."product_images";
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
	    return $user_path;
	}


	public function logout(){
		_us("uid");
		_us("team_id");
		delete_cookie("uid");
		delete_cookie("team_id");
		redirect( get_url("login") );
	}


	public function save($ids = "")
	{	
  
 $name = post("name");
		$category = post("category");
		$price = post("price");
		$old = post("old");
		$des = post("des");
		$ldes = post("ldes");
		$market = post("market");
		$feature = post("feature");
		$type = post("type");
		$uid = _u("id");
		validate('null', __('name'), $name);
		validate('null', __('category'), $category);
		validate('null', __('price'), $price);
  $store = $this->model->get("*", "sp_product", "id = '{$ids}'");
  $file_path = array();
	   $dataInfo = array();
 //echo $_FILES['newimg']['name'][0];die();
   if($_FILES['newimg']['name'][0] != ""){
		 	$ppt = $this->create_upload_folder();
		 	$config['upload_path'] = $ppt;
			$config['allowed_types'] = 'jpg|JPG|jpeg|JPEG|png|PNG';
			$config['max_size'] = 10240;
			$config['encrypt_name'] = TRUE;
			//$config['file_name'] = time();
			
             $files = $_FILES;
             $cpt = count($_FILES['newimg']['name']);
             $this->load->library('upload', $config);
		    for ( $i=0; $i < $cpt; $i++ )
		    { 
          $_FILES['newimg']['name'] = $files['newimg']['name'][$i];
        $_FILES['newimg']['type']= $files['newimg']['type'][$i];
        $_FILES['newimg']['tmp_name']= $files['newimg']['tmp_name'][$i];
        $_FILES['newimg']['error']= $files['newimg']['error'][$i];
        $_FILES['newimg']['size']= $files['newimg']['size'][$i];    

        $this->upload->initialize($config);
        $this->upload->do_upload('newimg');
        $dataInfo[] = $this->upload->data();
     }
      for($k=0; $k < count($dataInfo); $k++){
      	$file_path[$k] = $ppt.'/'.$dataInfo[$k]['file_name'];
      }
		}
		else{
			$xx = json_decode($store->image, true);
			foreach ($xx as $key => $x) {
			$file_path[$key] = $x;
			}
	 	 // var_dump($file_path);	
    }
   
  $data = [
			
			"mid" => $market,
			"name" => $name,
			"price" => $price,
			"old_price"   => $old,
			"des"  => $des,
			"image" => json_encode($file_path),
			"logtext" => $ldes,
			"category" => $category,
			"feature"  => $feature,
			"type"  => $type,
			];


			$this->model->update("sp_product" , $data, ["id" => $ids]);
 			redirect('product/index');

	}

	public function delete($id = ""){
		//$ids = post('id');

		if( empty($id) ){
			ms([
				"status" => "error",
				"message" => __('Please select an item to delete')
			]);
		}

			$this->model->delete("sp_product", ['id' => $id]);
		

		ms([
			"status" => "success",
			"message" => __('Success')
		]);
	}


	public function pageproduct($type=null){
		if($type == 1){
    $pro = $this->db->where('uid', 1)->get("sp_product")->result();
    }
    elseif ($type == 2) {
    $p1 = $this->db->get_where('sp_product', array("uid" => 1, "type" => 0));
    $pro = $p1->result(); 	
    }
    elseif ($type == 3) {
    $p2 = $this->db->get_where('sp_product', array("uid" => 1, "type" => 1));
    $pro = $p2->result(); 	
    }
     echo json_encode($pro);
	}

	public function add_pro(){
		$uid = _u("id");
		$id = $this->input->post("selected");
		$sid = $this->input->post("store_id");
		if($sid > 0){
		$product = $this->db->get_where('sp_product', array("id" => $id))->row();
		$file_path = [];
		$p_img = json_decode($product->image, true);
		foreach ($p_img as $key => $img) {
			$file_path[$key] = $img;
		}
		$param = array(
			"uid" => $uid,
			"mid" => $sid,
			"name" => $product->name,
			"price" => $product->price,
			"old_price"   => $product->old_price,
			"des"  => $product->des,
			"image" => json_encode($file_path),
			"logtext" => $product->logtext,
			"category" => $product->category,
			"feature"  => 1,
			"type"  => $product->type,
		);
		$this->user_manager_model->create_product($param);
		$output = ["status" => "ok", "message" => "Product Successfully Added"];
		 echo json_encode($output);
		}else{
		$output = ["status" => "fail", "message" => "Please Select One Market Place"];
		echo json_encode($output);	
		}
	}

}