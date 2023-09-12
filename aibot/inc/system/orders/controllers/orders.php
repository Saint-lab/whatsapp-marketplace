<?php
class orders extends MY_Controller {
	
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
		$uid = _u("id");
		switch ($page) {
			case 'pending':
				$data['cartp'] = $this->model->get_2("*", "sp_cart", ["vid" => $uid, "status" => 1], "id", "desc");
				break;
				case 'success':
				$data['carts'] = $this->model->get_2("*", "sp_cart", ["vid" => $uid, "status" => 2], "id", "desc");
				break;
				case 'edit_product':
				$data['result'] = $this->model->get("*", "sp_product", "id = '{$ids}'");
				$data['markets'] = $this->model->get_2("*", "sp_market", "uid = '".$ui."'");	
				break;
				
			default:
				
				$data['resultd'] = $this->model->get_2("*", "sp_cart", "vid = '".$uid."'", "id", "desc");
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
	
	public function delete($id = ""){
		//$ids = post('id');

		if( empty($id) ){
			ms([
				"status" => "error",
				"message" => __('Please select an item to delete')
			]);
		}

			$this->model->delete("sp_cart", ['id' => $id]);
		

		ms([
			"status" => "success",
			"message" => __('Success')
		]);
	}

}