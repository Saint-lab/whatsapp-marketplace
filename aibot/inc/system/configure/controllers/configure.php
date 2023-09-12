<?php
class configure extends MY_Controller {
	
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
				case 'user_phone':
				$data['result'] = $this->model->get("*", "sp_phone", "uid = '{$ui}'");
				break;
				default:
				$uid = _u("id");
				$data['paypal'] = $this->model->get("*", "payment_key", ["uid" => $uid, "type" => "paypal"]);
				$data['stripe'] = $this->model->get("*", "payment_key", ["uid" => $uid, "type" => "stripe"]);
				
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
	
	public function paypal()
{
   if($this->input->post()){
        $key = $this->input->post("api_key");
        $uid = _u("id");
     $account = array("uid" => $uid, "paypal_client_id" => $key, "type" => "paypal");
     //check if key exist
 if(!$this->paypal_key_exist()){
            $this->db->insert("payment_key", $account);
            $this->session->set_flashdata("paypal_key_success", "Your Paypal Client_ID Key saved!");
        redirect("payment_key/index");
     }
    else{
    	$this->db->where("type", "paypal");
    	$this->db->where("uid", $uid);
    	 $this->db->update('payment_key', ["paypal_client_id" => $key]);
        $this->session->set_flashdata("paypal_key_success", "Your Paypal Client_ID Key Updated!");
       redirect("payment_key/index");
    }
}
    else{
        $this->session->set_flashdata("paypal_key_fail", "Something went wrong!");
        redirect("payment_key/index");  
    }
}
public function paypal_key_exist()
{
   $uid = _u("id");
    $qry = $this->db->get_where('payment_key', array("uid" => $uid, "type" => "paypal"));
    if($qry->num_rows() > 0 ){
        return true; 
    }
    return false;
}

public function stripe(){

if($this->input->post()){
        $stripe_pu = $this->input->post("stripe_public");
        $stripe_se = $this->input->post("stripe_secret");
        $uid = _u("id");
     $account = array("uid" => $uid, "stripe_public" => $stripe_pu, "stripe_secret" => $stripe_se, "type" => "stripe");
     //check if key exist
 if(!$this->stripe_key_exist()){
            $this->db->insert("payment_key", $account);
            $this->session->set_flashdata("paypal_key_success", "Your Stipe Keys saved!");
        redirect("payment_key/index/stripe");
     }
    else{
    	$this->db->where("type", "stripe");
    	$this->db->where("uid", $uid);
    	 $this->db->update('payment_key', ["stripe_public" => $stripe_pu, "stripe_secret" => $stripe_se]);
        $this->session->set_flashdata("paypal_key_success", "Your Stripe Keys Updated!");
       redirect("payment_key/index/stripe");
    }
}
    else{
        $this->session->set_flashdata("paypal_key_fail", "Something went wrong!");
        redirect("payment_key/index/stripe");  
    }

}

public function stripe_key_exist()
{
   $uid = _u("id");
    $qry = $this->db->get_where('payment_key', array("uid" => $uid, "type" => "stripe"));
    if($qry->num_rows() > 0 ){
        return true; 
    }
    return false;
}

public function save_no(){

if($this->input->post()){
        $no = $this->input->post("num");
        
        $uid = _u("id");
     $account = array("uid" => $uid, "no" => $no);
     //check if key exist
 if(!$this->phone_exist()){
            $this->db->insert("sp_phone", $account);
            $this->session->set_flashdata("phone_success", "Your Whatsapp Number is Saved!");
        redirect("configure/index/user_phone");
     }
    else{
    	
    	$this->db->where("uid", $uid);
    	 $this->db->update('sp_phone', ["no" => $no]);
        $this->session->set_flashdata("phone_success", "Your Whatsapp Number was Updated!");
       redirect("configure/index/user_phone");
    }
}
    else{
        $this->session->set_flashdata("phone_fail", "Something went wrong!");
        redirect("configure/index/user_phone");  
    }

} 
 public function phone_exist(){
$uid = _u("id");
    $qry = $this->db->get_where('sp_phone', array("uid" => $uid));
    if($qry->num_rows() > 0 ){
        return true; 
    }
    return false;

 }
	
}