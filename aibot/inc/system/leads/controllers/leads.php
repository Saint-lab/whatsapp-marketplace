<?php
class leads extends MY_Controller {
	
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

	public function index($page = "")
	{    
		$offset = $page;
		if(_s("u_id")){
            redirect( get_url("login") );
            }
		$ui = _u("id");
		$dataa = $this->model->get("*", $this->tb_users, "id = '".$ui."'");
		// if($dataa->oto_5 != 1){
		// 	redirect( get_url("login") );
  //           }
		$result = $this->model->get("*", $this->tb_users, "id = '{$ui}'");
		
		$page_type = is_ajax()?false:true;

		//
		$data = [];
		$uid = _u("id");
		switch ($page) {
			case 'campaign':
				$data['cams'] = $this->db->where('uid', $uid)->get("sp_cam")->result();
				break;
				case 'success':
				$data['carts'] = $this->model->get_2("*", "sp_cart", ["vid" => $uid, "status" => 2], "id", "desc");
				break;
				case 'edit_product':
				//$data['result'] = $this->model->get("*", "sp_product", "id = '{$ids}'");
				$data['markets'] = $this->model->get_2("*", "sp_market", "uid = '".$ui."'");	
				break;
				
			default:
			_ss("page", $offset);
			$text = str_replace(' ', '-', $this->input->get("search"));
            $location = str_replace(' ', '-', $this->input->get("location"));
            if($this->input->get("filter")){
            $data['filter'] = $this->input->get("filter");
       		 }	
			if($this->input->get("search") && $this->input->get("location")){
         $data['leads'] = $this->model->leads_search($offset,$text,$location);
         $data['cams'] = $this->db->where('uid', $uid)->get("sp_cam")->result();
         $data['page']  = $offset;
        }else{
        $data['leads'] = ($this->input->get("search"))?$this->model->leads_search($offset,$text):$this->model->leads($offset);
        $data['cams'] = $this->db->where('uid', $uid)->get("sp_cam")->result();
        $data['page']  = $offset;
        }
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

	public function autosearch_lead($text){
        $API_KEY = "l_sdhz5UDGCv-zhyhWNeQZT8CxvpbnQmrSIlct-o5AU2kp2uUnK83BcbQX8UgucUzD7PzUxHXYC2v5bX0AhKEW210HMm9RADVS3XbRq52Yptjjy7mjW7oLWhyVUAX3Yx";
      
        $SEARCH_LIMIT = 3;
                
              $curl = curl_init();
                     curl_setopt_array($curl, array(
                        CURLOPT_URL => "https://api.yelp.com/v3/autocomplete?text=".$text."&latitude=37.786882&longitude=-122.399972",
                        CURLOPT_RETURNTRANSFER => true,  // Capture response.
                        CURLOPT_ENCODING => "",  // Accept gzip/deflate/whatever.
                        CURLOPT_MAXREDIRS => 10,
                        CURLOPT_SSL_VERIFYPEER => false,
                        CURLOPT_TIMEOUT => 30,
                        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
                        CURLOPT_CUSTOMREQUEST => "GET",
                        CURLOPT_HTTPHEADER => array(
                            "authorization: Bearer $API_KEY",
                            "cache-control: no-cache",
                        ),
                    ));
            
                    $response = curl_exec($curl);
                    $err = curl_error($curl);
                
                    curl_close($curl);
                
                    # Print any errors, to help with debugging.
                    if ($err) {
                      echo "cURL Error #:" . $err;
                    }
                
                    $body = json_decode($response, true);
                    echo json_encode($body);
                  
    }

      public function lead_details($id){
        
        $this->model->leads_details($id, $this->input->post("url"));    
    }

    public function emaid(){
        //$s = 'http://thebirdsf.com?utm_source=yext&utm_medium=yext';//$this->input->post("idd");
        //echo json_encode($this->model->extract_email_lead($s));
        $output = [];
        json_encode($output);
    }
 public function save_lead(){
       $name =  $this->input->post("name");
       $site = $this->input->post("site");
       $phone = $this->input->post("phone");
       $location =  $this->input->post("location");
       $email =  $this->input->post("email"); 
       $img =  $this->input->post("img");
       $country =  $this->input->post("country");
       $alias = $this->input->post("alias");
       $user_id =  _u("id");
       $cam_id = $this->input->post("campaign_id");
       $date = date("Y-m-d");
      // if(!$this->leads_exist($name)){
       $account = array("user_id" => $user_id, "campaign_id" => $cam_id, "name" => $name, "site" => $site,
                         "phone" => $phone, "location" => $location, "email" => $email,
                        "img" => $img, "country" => $country, "alias" => $alias, "dately" => $date); 
                        if($this->db->insert("sp_leads", $account)){
                            $output = array('status' => 'success');
                            echo (json_encode($output));
                        }
                 //  }else {
                     //  $output = array('status' => 'fail');
                      //     echo (json_encode($output));
                  // }          

    }

    public function contact_lead($c=''){
       if($c == 'c'){
           if($this->input->post("email") != ""){
            $this->session->set_userdata("dd", $this->input->post("name"));
            $contact = array(
                'lname' =>  $this->session->userdata("dd"),
                'lsite' => $this->input->post("site"),
                'lphone' => $this->input->post("phone"),
                'llocation' =>  $this->input->post("location"),
                'lemail' =>  $this->input->post("email"),
                'limg' =>  $this->input->post("img"),
                'lcountry' =>  $this->input->post("country"),
                'lalias' => $this->input->post("alias"),
                 'redirect' => base_url("leads/contact_lead"),
                 'status' => 'success'
            );
       
       
            $this->session->set_userdata($contact);
        echo (json_encode($contact));
      
        }else{
            $contact = array('status' => 'error');
            echo (json_encode($contact));  
        }
        }
        else{
           
        $this->load->view('leads_email'); 
            
        }
    }

    public function save_cam(){
    $param = ["uid" => _u("id"), "name" => post("name")];
    	if($this->db->insert("sp_cam", $param)){
          redirect('leads/index/campaign');
    	}
    }

    public function getleads($cam = null){
     $uid = _u("id");
     //$campaign = $this->db->where('user_id', $uid)->where('campaign_id', $cam)->get("sp_leads")->result();
     $cc = $this->db->get_where('sp_leads', array("user_id" => $uid, "campaign_id" => $cam)); 
     $cx = $cc->result();
     echo json_encode($cc);
    }


}