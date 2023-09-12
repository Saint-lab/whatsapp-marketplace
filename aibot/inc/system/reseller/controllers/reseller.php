<?php
class reseller extends MY_Controller {
	
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
				case 'edit_user':
				$data['result'] = $this->model->get("*", $this->tb_users, "id = '{$ids}'");
					// $packages = $this->model->fetch("*", $this->tb_package_manager);
					//  = $item;
					// $data['packages'] = $packages;
				break;
				
			default:
				$uid = _u("id");
				$data['resultd'] = $this->model->get_2("*", $this->tb_users, "reseller_id = '".$uid."'");
				
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
		$data['result'] = $this->model->get("*", $this->tb_users, "email = '{$email}'");
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
	
	public function ajax_create_user(){
		//$fe = post('fe',TRUE)==null ? 0 : 1;
		$oto_1 = post('unlimited',TRUE)==null?0:1;
		$fullname = post("fullname");
		$email = post("email");
		$password = post("password");
		$timezone = post("timezone");
		$confirm_password = post("confirm_password");
		$terms = 1;
		$reseller_id = _u("id");
		//$check_type = 'reseller'; 
		$this->user_manager_model->signup($fullname, $email, $password, $confirm_password, $timezone, $terms, $oto_1, $reseller_id);
		//$this->user_manager_model->update_password($current_password, $password, $confirm_password);
		redirect('reseller/index');
	}

	public function logout(){
		_us("uid");
		_us("team_id");
		delete_cookie("uid");
		delete_cookie("team_id");
		redirect( get_url("login") );
	}


	public function save($ids = "")
	{	$oto_1 = post('unlimited',TRUE)==null?0:1;
		$fullname = post('fullname');
		$email = post('email');
		$password = post('password');
		$confirm_password = post('confirm_password');
		$package_id = (int)post('package');
		$expiration_date = post('expiration_date');
		$timezone = post('timezone');
		$role = post('role');
		$status = post('status');

		
			$user = $this->model->get("*", $this->tb_users, "id != '{$ids}' AND email = '{$email}'");
			validate('null', __('Fullname'), $fullname);
			validate('null', __('Email'), $email);
			validate('email', __('Email'), $email);
			validate('not_empty', __('This email already exists'), $user);
			
			if($password != ""){
				validate('min_length', __('Password'), $password, 6);
				validate('null', __('Confirm password'), $confirm_password);
				validate('other', __('Your password and confirmation password do not match'), $password, $confirm_password);
			}

			//validate('empty', __('Please select a package'), $oto_1);
			validate('null', __('Expiration date'), $expiration_date);
			validate('null', __('Timezone'), $timezone);

			$data = [
				"role" => $role,
				"fullname" => $fullname,
				"email" => $email,
				"package" => ($oto_1 == 1)?2:1,
				"expiration_date" => date_sql($expiration_date),
				"timezone" => $timezone,
				"status" => $status,
				"changed" => now(),
				"fe"	  => 1,
				"oto_1"	  => $oto_1
			];

			if( $password ){
				$data['password'] = md5($password);
			}

			$this->model->update($this->tb_users , $data, ["id" => $ids]);

			$this->model->update( $this->tb_team, [
				"permissions" => $package->permissions,
				"pid" => $package->id
			],
			[
				"owner" => $item->id
			]);
		

		ms([
			"status" => "success",
			"message" => __('Success')
		]);

	}

	public function delete($ids = ""){
		//$ids = post('id');

		if( empty($ids) ){
			ms([
				"status" => "error",
				"message" => __('Please select an item to delete')
			]);
		}

		// if( is_array($ids) ){
		// 	foreach ($ids as $id) {
		// 		$this->model->delete($this->tb_users, ['id' => $id]);
		// 	}
		// }
		// elseif( is_string($ids) )
		// {
			$this->model->delete($this->tb_users, ['id' => $ids]);
		//}

		ms([
			"status" => "success",
			"message" => __('Success')
		]);
	}

}