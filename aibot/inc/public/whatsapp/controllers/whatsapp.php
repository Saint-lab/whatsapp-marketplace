<?php
class whatsapp extends MY_Controller {

	public $tb_team = 'sp_team';
	public $tb_whatsapp_schedules = "sp_whatsapp_schedules";
	public $tb_account_manager = "sp_account_manager";
	public $tb_whatsapp_autoresponder = "sp_whatsapp_autoresponder";
	public $tb_whatsapp_contacts = "sp_whatsapp_contacts";
	public $tb_whatsapp_phone_numbers = "sp_whatsapp_phone_numbers";
	public $tb_whatsapp_chatbot = "sp_whatsapp_chatbot";
	public $tb_whatsapp_stats = "sp_whatsapp_stats";
	public $tb_whatsapp_template = "sp_whatsapp_template";

	public $module_name;

	public function __construct(){
		parent::__construct();
		_permission(get_class($this)."_enable");
		$this->load->model(get_class($this).'_model', 'model');

		$module_path = get_module_directory(__DIR__);
		include $module_path.'libraries/vendor/autoload.php';

		//
		$this->module_name = get_module_config( $this, 'name' );
		$this->module_icon = get_module_config( $this, 'icon' );
		//
	}

	public function index($page = "", $ids = "")
	{
		$team_id = _t('id');
		$result = [];
		$page_type = is_ajax()?false:true;

		$accounts = $this->model->fetch("*", $this->tb_account_manager, "team_id = '{$team_id}' AND status = 1 AND social_network = 'whatsapp'");

		//
		$data = [  'accounts' => $accounts, 'access_token' => _s("team_id") ];
		switch ($page) {
			case 'update':
				$data['result'] = $result;
				break;

			default:
				$data['result'] = $result;
				break;
		}

		$page = page($this, "pages", "general", $page, $data, $page_type);
		//

		if( !is_ajax() ){

			$views = [
				"subheader" => view( 'main/subheader', [ 'module_name' => $this->module_name, 'module_icon' => $this->module_icon ], true ),
				"column_one" => view("main/content", [ 'view' => $page ] ,true), 
			];
			
			views( [
				"title" => $this->module_name,
				"fragment" => "fragment_one",
				"views" => $views
			] );

		}else{
			_e( $page, false );
		}

	}

	public function block(){}

	public function get($page = ""){
		$team_id = _t('id');
		$instance_id = addslashes(post("instance_id"));
		$access_token = addslashes(post("access_token"));
		$body = post("body");
		$caption = post("caption");
		$chat_id = addslashes(post("chat_id"));
		$cursor = addslashes(post("cursor"));
		$fromMe = addslashes(post("fromMe"));
		$filename = addslashes(post("filename"));
		$message_id = addslashes(post("message_id"));
		$server_url = get_option('whatsapp_server_url', '');

		switch ($page) {
			case 'menu':
				$result = json_decode( wa_get_curl( $server_url."instance?instance_id=".$instance_id."&access_token=".$access_token ) );
				if(!empty($result)){
					if($result->status == "success"){
						if($result->data->avatar){
                            $avatar = save_img( $result->data->avatar, TMP_PATH.'avatar/' );
                            $this->model->update(
								$this->tb_account_manager, 
								[
									"avatar" => $avatar,
								], 
								array("token" => $instance_id)
							);
                        }

						wa_ms([
							"status" => "success",
							"message" => __('Success'), 
							"submenu" => false,
							"data" => $result->data,
							"content" => view("pages/sub/menu", [ 'instance_id' => $instance_id, 'access_token' => $access_token ], true)
		 				]);
					}else{
						wa_ms([
							"status" => "error",
							"relogin" => isset($result->relogin)?1:0,
							"message" => __($result->message)
		 				]);
					}
				}else{
					wa_ms([
						"status" => "error",
						"message" => __("Cannot connect to server. Please try again later")
	 				]);
				}
				
				break;

			case 'profile':
				$result = json_decode( wa_get_curl( $server_url."instance?instance_id=".$instance_id."&access_token=".$access_token ) );
				if(!empty($result)){
					if($result->status == "success"){
						$account = $this->model->get("*", $this->tb_account_manager, "token = '{$instance_id}' AND team_id = '{$team_id}'");
						wa_ms([
							"status" => "success",
							"message" => __('Success'),
							"submenu" => view("pages/sub/profile", [ 'result' => $result->data, 'account' => $account ], true),
							"content" => view("pages/sub/empty", [], true)
		 				]);
					}else{
						wa_ms([
							"status" => "error",
							"relogin" => isset($result->relogin)?1:0,
							"message" => __($result->message)
		 				]);
					}
				}else{
					wa_ms([
						"status" => "error",
						"message" => __("Cannot connect to server. Please try again later")
	 				]);
				}
				break;

			case 'contact':
				$result = json_decode( wa_get_curl( $server_url."get_contacts?instance_id=".$instance_id."&access_token=".$access_token ) );
				if(!empty($result)){
					if($result->status == "success"){

						wa_ms([
							"status" => "success",
							"message" => __('Success'),
							"submenu" => view("pages/sub/contact", [ 'result' => $result->data ], true),
							"content" => false,
		 				]);
					}else{
						wa_ms([
							"status" => "error",
							"relogin" => isset($result->relogin)?1:0,
							"message" => __($result->message)
		 				]);
					}
				}else{
					wa_ms([
						"status" => "error",
						"message" => __("Cannot connect to server. Please try again later")
	 				]);
				}
				break;

			case 'contact_group':
				$result = $this->model->get_contact_groups($team_id);
				wa_ms([
					"status" => "success",
					"message" => __('Success'),
					"content" => view("pages/sub/contact_group", [ 'result' => $result ], true),
					"submenu" => false,
 				]);
				break;

			case 'contact_group_list':
				wa_ms([
					"status" => "success",
					"content" => view("pages/sub/contact_group_list", [], true),
					"submenu" => false,
 				]);
				break;

			case 'contact_group_import':
				wa_ms([
					"status" => "success",
					"content" => view("pages/sub/contact_group_import", [], true),
					"submenu" => false,
 				]);
				break; 

			case 'contact_group_update':
				$groups = $this->model->fetch('*', $this->tb_whatsapp_contacts, "status = '1' AND team_id = '{$team_id}'");
				$result = $this->model->get('*', $this->tb_whatsapp_contacts, "ids = '".segment(4)."' AND team_id = '{$team_id}'");
				wa_ms([
					"status" => "success",
					"content" => view("pages/sub/contact_group_update", [ 'groups' => $groups, 'result' => $result ], true),
					"submenu" => false,
 				]);
				break;

			case 'contact_schedules':
				$schedules = $this->model->get_bulk_schedules();
				wa_ms([
					"status" => "success",
					"message" => __('Success'),
					"content" => view("pages/sub/contact_schedules", [ 'schedules' => $schedules ], true),
					"submenu" => false,
 				]);
				break;

			case 'campaign_report':
				$account = $this->model->get("*", $this->tb_account_manager, "token = '{$instance_id}' AND team_id = '{$team_id}'");
				$schedules = $this->model->get_bulk_report();
				$report = $this->model->get_report_info($instance_id);

				wa_ms([
					"status" => "success",
					"message" => __('Success'),
					"content" => view("pages/sub/campaign_report", [ 'schedules' => $schedules, 'account' => $account, 'report' => $report ], true),
					"submenu" => false,
 				]);
				break;

			case 'contact_create_campaign':
				$item = $this->model->get("*", $this->tb_whatsapp_schedules, "ids = '".segment(4)."'");
				$buttons = $this->model->fetch("*", $this->tb_whatsapp_template, "team_id = '{$team_id}' AND cate = 2", "id", "DESC");
				$list_message = $this->model->fetch("*", $this->tb_whatsapp_template, "team_id = '{$team_id}' AND cate = 1", "id", "DESC");
				$groups = $this->model->fetch('*', $this->tb_whatsapp_contacts, " status = '1' AND team_id = '{$team_id}'");
				$block_caption = Modules::run("whatsapp/block_caption");
				$file_manager = Modules::run("file_manager/block_file", "single", "all", "upload_media");
				Modules::run(get_class($this)."/block");
				wa_ms([
					"status" => "success",
					"message" => __('Success'),
					"content" => view("pages/sub/contact_create_campaign", [ 'file_manager' => $file_manager, 'block_caption' => $block_caption, 'groups' => $groups, "instance_id" => $instance_id, 'item' => $item, "buttons" => $buttons, "list_message" => $list_message ], true),
					"submenu" => false,
 				]);
	
				break;

			case 'export_participants':
				$result = json_decode( wa_get_curl( $server_url."get_groups?instance_id=".$instance_id."&access_token=".$access_token ) );
				if(!empty($result)){
					if($result->status == "success"){
						wa_ms([
							"status" => "success",
							"message" => __('Success'),
							"submenu" => view("pages/sub/group_chat", [ 'result' => $result->data ], true),
							"content" => view("pages/sub/empty", [], true)
		 				]);
					}else{
						wa_ms([
							"status" => "error",
							"relogin" => isset($result->relogin)?1:0,
							"message" => __($result->message)
		 				]);
					}
				}else{
					wa_ms([
						"status" => "error",
						"message" => __("Cannot connect to server. Please try again later")
	 				]);
				}
				break;

			case 'download_participants':
				$result = json_decode( wa_get_curl( $server_url."get_group_participants?group_id=".$chat_id."&instance_id=".$instance_id."&access_token=".$access_token ) );
				if(!empty($result)){
					if($result->status == "success"){
						$participants = [];
						foreach ($result->data as $value) {
							$participants[] = [
								'id' => $value->id,
								'user' => wa_get_phone($value->id)
							];
						}

						download_send_headers("data_export_participants-" . date("Y-m-d") . ".csv");
						echo array2csv($participants);
					}else{
						wa_ms([
							"status" => "error",
							"relogin" => isset($result->relogin)?1:0,
							"message" => __($result->message)
		 				]);
					}
				}else{
					wa_ms([
						"status" => "error",
						"message" => __("Cannot connect to server. Please try again later")
	 				]);
				}
				break;

			case 'template':
				wa_ms([
					"status" => "success",
					"message" => __('Success'),
					"submenu" => view("pages/sub/template", [], true),
					"content" => view("pages/sub/empty", [], true)
 				]);
				break;

			case 'template_list_message':
				$result = $this->model->fetch("*", $this->tb_whatsapp_template, "cate = 1 AND team_id = '{$team_id}'", "id", "desc");
				wa_ms([
					"status" => "success",
					"message" => __('Success'),
					"submenu" => false,
					"content" => view("pages/sub/template_list_message", ['result' => $result], true)
 				]);
				break;

			case 'template_list_message_update':
				$ids = segment(4);
				$result = $this->model->get("*", $this->tb_whatsapp_template, "cate = 1 AND ids = '{$ids}' AND team_id = '{$team_id}'");
				$block_caption = Modules::run("whatsapp/block_caption");
				$file_manager = Modules::run("file_manager/block_file", "single", "all", "upload_media");
				Modules::run(get_class($this)."/block");
				wa_ms([
					"status" => "success",
					"message" => __('Success'),
					"submenu" => false,
					"content" => view("pages/sub/template_list_message_update", [ 'file_manager' => $file_manager, 'block_caption' => $block_caption, "result" => $result ], true)
 				]);
				break;

			case 'template_button_message':
				$result = $this->model->fetch("*", $this->tb_whatsapp_template, "cate = 2 AND team_id = '{$team_id}'", "id", "desc");
				wa_ms([
					"status" => "success",
					"message" => __('Success'),
					"submenu" => false,
					"content" => view("pages/sub/template_button_message", [ "result" => $result ], true)
 				]);
				break;

			case 'template_button_update':
				$ids = segment(4);
				$result = $this->model->get("*", $this->tb_whatsapp_template, "cate = 2 AND ids = '{$ids}' AND team_id = '{$team_id}'");
				$block_caption = Modules::run("whatsapp/block_caption");
				$file_manager = Modules::run("file_manager/block_file", "single", "all", "upload_media");
				Modules::run(get_class($this)."/block");

				wa_ms([
					"status" => "success",
					"message" => __('Success'),
					"submenu" => false,
					"content" => view("pages/sub/template_button_message_update", [ 'file_manager' => $file_manager, 'block_caption' => $block_caption, "result" => $result ], true)
 				]);
				break;

			case 'send_message':
				switch (post("type")) {
					case 2:
						$result = json_decode( wa_post_curl( $server_url."send_message?type=media&chat_id=".$chat_id."&instance_id=".$instance_id."&access_token=".$access_token, [
							"body" => $body,
							"chat_id" => $chat_id,
							"caption" => $caption,
							"filename" => $filename
						] ) );

						if(!empty($result)){
							if($result->status == "success"){
								wa_ms([
									"status" => "success",
									"message" => __('Success'),
									"message_id" => $result->data->key->id,
									"content" => view("pages/sub/get_message", [ 'value' => $result->data ], true),
									"submenu" => false,
				 				]);
							}else{
								wa_ms([
									"status" => "error",
									"relogin" => isset($result->relogin)?1:0,
									"message" => __($result->message)
				 				]);
							}
						}else{
							wa_ms([
								"status" => "error",
								"message" => __("Cannot connect to server. Please try again later")
			 				]);
						}
						break;
					
					default:
						$result = json_decode( wa_post_curl( $server_url."send_message?type=chat&chat_id=".$chat_id."&instance_id=".$instance_id."&access_token=".$access_token, [
							"body" => $body,
							"chat_id" => $chat_id
						] ) );
						if(!empty($result)){
							if($result->status == "success"){
								wa_ms([
									"status" => "success",
									"message" => __('Success'),
									"message_id" => $result->data->key->id,
									"content" => view("pages/sub/get_message", [ 'value' => $result->data ], true),
									"submenu" => false
				 				]);
							}else{
								wa_ms([
									"status" => "error",
									"relogin" => isset($result->relogin)?1:0,
									"message" => __($result->message)
				 				]);
							}
						}else{
							wa_ms([
								"status" => "error",
								"message" => __("Cannot connect to server. Please try again later")
			 				]);
						}
						break;
				}
				break;

			case 'autoresponder':
				$result = $this->model->get("*", $this->tb_whatsapp_autoresponder, "team_id = '{$team_id}' AND instance_id = '{$instance_id}'");
				$buttons = $this->model->fetch("*", $this->tb_whatsapp_template, "team_id = '{$team_id}' AND cate = 2", "id", "DESC");
				$list_message = $this->model->fetch("*", $this->tb_whatsapp_template, "team_id = '{$team_id}' AND cate = 1", "id", "DESC");
				$block_caption = Modules::run("whatsapp/block_caption");
				$file_manager = Modules::run("file_manager/block_file", "single", "all", "upload_media");
				Modules::run(get_class($this)."/block");
				
				wa_ms([
					"status" => "success",
					"message" => __('Success'),
					"submenu" => view("pages/sub/autoresponder", [ 'file_manager' => $file_manager, 'block_caption' => $block_caption, "instance_id" => $instance_id, 'result' => $result, "buttons" => $buttons, "list_message" => $list_message ] , true),
					"content" => view("pages/sub/autoresponder_preview", [ 'file_manager' => $file_manager, 'block_caption' => $block_caption, "instance_id" => $instance_id, 'result' => $result ], true),
 				]);
				break;

			case 'search_contact':
				$result = json_decode( wa_get_curl( $server_url."get_contacts?instance_id=".$instance_id."&access_token=".$access_token ) );
				$data = [];
				if(!empty($result)){
					if($result->status == "success"){
						if(!empty($result->data) && !empty($result->data)){
							foreach ($result->data as $value) {
								if( isset($value->notify) ){
									$name = $value->notify;
								}else if( isset($value->vname) ){
									$name = $value->vname;
								}else{
									$name = $value->jid;
								}
								$data[] = [
									"id" => $value->jid."{|}".$name,
	                    			"name" => $name
								];
							}
						}
					}
				}

				echo json_encode($data);
				break;

			case 'bulk':
				wa_ms([
					"status" => "success",
					"message" => __('Success'),
					"submenu" => view("pages/sub/bulk", [], true),
					"content" => view("pages/sub/empty", [], true)
 				]);
				break;

			case 'chatbot':
				$result = $this->model->fetch("*", $this->tb_whatsapp_chatbot, "team_id = '{$team_id}' AND instance_id = '{$instance_id}'");
				wa_ms([
					"status" => "success",
					"message" => __('Success'),
					"submenu" => view("pages/sub/chatbot_list", [ 'result' => $result, 'instance_id' => $instance_id ], true),
					"content" => view("pages/sub/empty", [], true)
 				]);
				break;

			case 'chatbot_update':
				$result = $this->model->get("*", $this->tb_whatsapp_chatbot, "team_id = '{$team_id}' AND ids = '".segment(5)."'");
				$buttons = $this->model->fetch("*", $this->tb_whatsapp_template, "team_id = '{$team_id}' AND cate = 2", "id", "DESC");
				$list_message = $this->model->fetch("*", $this->tb_whatsapp_template, "team_id = '{$team_id}' AND cate = 1", "id", "DESC");
				$block_caption = Modules::run("whatsapp/block_caption");
				$file_manager = Modules::run("file_manager/block_file", "single", "all", "upload_media");
				Modules::run(get_class($this)."/block");
				wa_ms([
					"status" => "success",
					"message" => __('Success'),
					"content" => view("pages/sub/chatbot_update", [ 'file_manager' => $file_manager, 'block_caption' => $block_caption, "instance_id" => $instance_id, 'result' => $result, "buttons" => $buttons, "list_message" => $list_message ], true),
					"submenu" => view("pages/sub/empty", [], true)
 				]);
	
				break;

			case 'logout':
				$result = json_decode( wa_get_curl( $server_url."logout?instance_id=".$instance_id."&access_token=".$access_token ) );
				if(!empty($result)){
					if($result->status == "success"){

						wa_ms([
							"status" => "success",
							"message" => __('Success'),
							"submenu" => view("pages/sub/start", [], true),
							"content" => view("pages/sub/empty", [], true),
							"logout" => true
		 				]);
					}else{
						wa_ms([
							"status" => "error",
							"relogin" => isset($result->relogin)?1:0,
							"message" => $result->message
		 				]);
					}
				}else{
					wa_ms([
						"status" => "error",
						"message" => __("Cannot connect to server. Please try again later")
	 				]);
				}
				break;

			case 'api':
				wa_ms([
					"status" => "success",
					"message" => __('Success'),
					"submenu" => view("pages/sub/api_menu", [], true),
					"content" => view("pages/sub/api_content", [], true)
 				]);
				break;

			case 'empty':
				wa_ms([
					"status" => "success",
					"message" => __('Success'),
					"content" => view("pages/sub/empty", [], true),
					"submenu" => view("pages/sub/start", [], true),
 				]);
				break;

			default:
				wa_ms([
					"status" => "success",
					"message" => __('Success'),
					"content" => view("pages/sub/empty", [], true),
					"submenu" => view("pages/sub/start", [], true),
 				]);
				break;
		}
	}

	public function block_caption()
	{
		return view($this->dir."pages/block_caption", [], true, $this);
	}

	/*
	* TEMPLATE
	*/
	public function template_list_message_save(){
		$name = post("name");
		$title = post("title");
		$caption = post("caption");
		$footer_desc = post("footer_desc");
		$button_text = post("button_text");
		$section_name = post("section_name");
		$options = post("options");
		$team_id = _t("id");
		$ids = segment(3);

		if($caption==""){
			wa_ms([
				"status" => "error",
				"message" => __('Caption is required')
			]);
		}

		if($title==""){
			wa_ms([
				"status" => "error",
				"message" => __('Menu title is required')
			]);
		}

		if($footer_desc==""){
			wa_ms([
				"status" => "error",
				"message" => __('Footer description is required')
			]);
		}

		if($button_text==""){
			wa_ms([
				"status" => "error",
				"message" => __('Button text is required')
			]);
		}

		if( empty($section_name) ){
			wa_ms([
				"status" => "error",
				"message" => __('Add at least one section')
			]);
		}

		$sections_arr = [];
		$list_message = [];

		foreach ($section_name as $key => $section) {

			$section_item = ['title' => $section, 'rows' => [] ];

			if( !isset($section) || $section == "" ){
				wa_ms([
					"status" => "error",
					"message" => sprintf( __("Section %s: Section name is required") , $key + 1 )
				]);
			}

			if( !isset($options[$key]) || count($options[$key]) == 0 || !isset($options[$key]['name']) || !isset($options[$key]['desc'])){
				wa_ms([
					"status" => "error",
					"message" => sprintf( __("Section %s: Add at least one option") , $key + 1 )
				]);
			}

			if( count(  $options[$key]['name'] ) != count($options[$key]['desc']) ){
				wa_ms([
					"status" => "error",
					"message" => sprintf( __("Section %s: Invalid input data") , $key + 1 )
				]);
			}

			foreach ($options[$key]['name'] as $option_key => $option_value) {
				$option_value = trim($option_value);
				if($option_value == ""){
					wa_ms([
						"status" => "error",
						"message" => __('The option name is required')
					]);
				}

				$section_item['rows'][] = [
					"title" => $option_value,
					"rowId" => ids(),
					"description" => $options[$key]['desc'][$option_key]
				];
			}

			$sections_arr[] = $section_item;
		}

		$list_message = [
			"text" => $caption,
			"footer" => $footer_desc,
			"title" => $title,
			"buttonText" => $button_text,
			"sections" => $sections_arr
		];

		$item = $this->model->get("*", $this->tb_whatsapp_template, "ids = '{$ids}' AND team_id = '{$team_id}'");
		if( empty($item) ){
			$data = [
				"ids" => ids(),
				"team_id" => $team_id,
				"cate" => 1,
				"type" => 0,
				"name" => $name,
				"data" => json_encode($list_message),
				"changed" => now(),
				"created" => now(),
			];
			
			$this->db->insert( $this->tb_whatsapp_template, $data );
		}else{
			$data = [
				"name" => $name,
				"data" => json_encode($list_message),
				"changed" => now(),
			];
			
			$this->db->update( $this->tb_whatsapp_template, $data, ["ids" => $ids] );
		}

		wa_ms([
			"status" => "success",
			"message" => __('Success')
		]);
	}

	public function delete_list_template(){
		$ids = post('id');

		if( empty($ids) ){
			wa_ms([
				"status" => "error",
				"message" => __('Please select an item to delete')
			]);
		}

		if( is_array($ids) ){
			foreach ($ids as $id) {
				$this->model->delete($this->tb_whatsapp_template, ['ids' => $id]);
			}
		}
		elseif( is_string($ids) )
		{
			$this->model->delete($this->tb_whatsapp_template, ['ids' => $ids]);
		}

		wa_ms([
			"status" => "success",
			"message" => __('Success')
		]);
	}

	public function template_button_message_save(){
		$name = post("name");
		$main_desc = 0;
		$footer_desc = post("footer_desc");
		$media = post("media");
		$caption = post("caption");
		$btn_msg_type = post("btn_msg_type");
		$btn_msg_display_text = post("btn_msg_display_text");
		$btn_msg_link = post("btn_msg_link");
		$btn_msg_call = post("btn_msg_call");
		$team_id = _t("id");
		$ids = segment(3);

		validate('null', __('Button template name'), $name);
		validate('null', __('The type main description'), $main_desc);

		if($caption==""){
			wa_ms([
				"status" => "error",
				"message" => __('Caption is required for main description')
			]);
		}

		if( empty($btn_msg_type) ){
			wa_ms([
				"status" => "error",
				"message" => __('Add at least one button item')
			]);
		}

		if(count($btn_msg_type) > 3){
			wa_ms([
				"status" => "error",
				"message" => __('Only up to 3 button items allowed')
			]);
		}

		$btn_template = [];
		$item_button_message = [];

		foreach ($btn_msg_type as $key => $value) {
			$value = trim($value);


			switch ($value) {
				case 1:
					if( !isset($btn_msg_display_text[$key]) || $btn_msg_display_text[$key] == "" ){
						wa_ms([
							"status" => "error",
							"message" => sprintf( __("Button %s: Please enter display text") , $key + 1 )
						]);
					}

					$item_button_message[] = [
						"index" => $key + 1,
						"quickReplyButton" => [
							"displayText" => $btn_msg_display_text[$key],
							"id" => uniqid()
						]
					];
					break;

				case 2:
					if( !isset($btn_msg_display_text[$key]) || $btn_msg_display_text[$key] == "" ){
						wa_ms([
							"status" => "error",
							"message" => sprintf( __("Button %s: Please enter display text"), $key + 1 )
						]);
					}

					if (!isset($btn_msg_link[$key]) || filter_var($btn_msg_link[$key], FILTER_VALIDATE_URL) === FALSE) {
					    wa_ms([
							"status" => "error",
							"message" => sprintf( __( "Button %s: Invalid URL"), $key + 1 )
						]);
					}

					$item_button_message[] = [
						"index" => $key + 1,
						"urlButton" => [
							"displayText" => $btn_msg_display_text[$key],
							"url" => $btn_msg_link[$key],
						]
					];
					break;

				case 3:
					if( !isset($btn_msg_display_text[$key]) || $btn_msg_display_text[$key] == "" ){
						wa_ms([
							"status" => "error",
							"message" => sprintf( __( "Button %s: Please enter display text"), $key + 1 )
						]);
					}

					if ( !isset($btn_msg_call[$key]) || !isValidTelephoneNumber($btn_msg_call[$key]) ){
					    wa_ms([
							"status" => "error",
							"message" => sprintf( __( "Button %s: Invalid phone number") , $key + 1 )
						]);
					}

					if ( $btn_msg_call[$key] == "" ){
					    wa_ms([
							"status" => "error",
							"message" => sprintf( __( "Button %s: Phone number is required") , $key + 1 )
						]);
					}

					$item_button_message[] = [
						"index" => $key + 1,
						"callButton" => [
							"displayText" => $btn_msg_display_text[$key],
							"phoneNumber" => $btn_msg_call[$key],
						]
					];
					break;
				
				default:
					wa_ms([
						"status" => "error",
						"message" => __('The type button item incorrect')
					]);
					break;
			}

			if($value == ""){
				wa_ms([
					"status" => "error",
					"message" => __('The option name is required')
				]);
			}
		}

		$btn_template = [
			"templateButtons" => $item_button_message
		];

		if($footer_desc != ""){
			$btn_template["footer"] = $footer_desc;
		}

		if(!empty($media)){
			$btn_template["caption"] = $caption;
			$btn_template["image"] = [
				"url" =>  $media[0]
			];
		}else{
			$btn_template["text"] = $caption;
		}

		$item = $this->model->get("*", $this->tb_whatsapp_template, "ids = '{$ids}' AND team_id = '{$team_id}'");
		if( empty($item) ){
			$data = [
				"ids" => ids(),
				"team_id" => $team_id,
				"cate" => 2,
				"type" => $main_desc,
				"name" => $name,
				"data" => json_encode($btn_template),
				"changed" => now(),
				"created" => now(),
			];
			
			$this->db->insert( $this->tb_whatsapp_template, $data );
		}else{
			$data = [
				"name" => $name,
				"data" => json_encode($btn_template),
				"changed" => now(),
			];
			
			$this->db->update( $this->tb_whatsapp_template, $data, ["ids" => $ids] );
		}

		wa_ms([
			"status" => "success",
			"message" => __('Success')
		]);
	}

	/*
	* AUTORESPONDER
	*/
	public function autoresponder_save(){
		$team_id = _t("id");
		$status = (int)post('status');
		$medias = post("media");
		$caption = post('caption');
		$delay = post('delay');
		$instance_id = post('instance_id');
		$except = post('except');
		$send_to = (int)post('send_to');
		$cate = (int)post("cate");
		$template = 0;
		$btn_msg = (int)post("btn_msg");
		$list_msg = (int)post("list_msg");

		validate('null', __('Delay'), $delay);

		$account = $this->model->get("*", $this->tb_account_manager, "token = '{$instance_id}' AND team_id = '{$team_id}'");

		if(empty($account)){
			wa_ms([
				"status" => "error",
				"message" => __('Profile does not exist')
			]);
		}

		switch ($cate) {
			case 1:
				if( _p("whatsapp_chatbot_media") ){
					if(!is_array($medias) && $caption == ""){
						wa_ms([
							"status" => "error",
							"message" => __('Please enter a caption or add a media')
						]);
					}
				}else{
					validate('null', __('Caption'), $caption);
				}
				break;

			case 2:
				if($btn_msg == 0){
					wa_ms([
						"status" => "error",
						"message" => __('Please select a button message option')
					]);
				}
				$template = $btn_msg;
				break;

			case 3:
				if($list_msg == 0){
					wa_ms([
						"status" => "error",
						"message" => __('Please select a list message option')
					]);
				}

				$template = $list_msg;
				break;
			
			default:
				if($btn_msg == 0){
					wa_ms([
						"status" => "error",
						"message" => __('Invalid input data')
					]);
				}
				break;
		}

		if((int)_p("whatsapp_autoresponder_delay") > (int)$delay){
			wa_ms([
				"status" => "error",
				"message" => sprintf( __('You can only set autoresponder delays greater than %s minutes'), (int)_p("whatsapp_autoresponder_delay") )
			]);
		}

		$item = $this->model->get("*", $this->tb_whatsapp_autoresponder, "ids = '{$account->ids}' AND team_id = '{$team_id}'");

		if(!$item ){
			$this->model->insert($this->tb_whatsapp_autoresponder , [
				"team_id" => $team_id,
				"ids" => $account->ids,
				"cate" => $cate,
				"template" => $template,
				"instance_id" => $account->token,
				"data" => $caption,
				"media" => empty($medias)?"[]":json_encode($medias),
				"except" => empty($except)?"[]":json_encode($except),
				"path" => FCPATH,
				"delay" => $delay,
				"send_to" => $send_to,
				"status" => $status,
				"changed" => now(),
				"created" => now()
			]);
		}else{
			$this->model->update(
				$this->tb_whatsapp_autoresponder, 
				[
					"team_id" => $team_id,
					"cate" => $cate,
					"template" => $template,
					"instance_id" => $account->token,
					"data" => $caption,
					"media" => empty($medias)?"[]":json_encode($medias),
					"except" => empty($except)?"[]":json_encode($except),
					"path" => FCPATH,
					"delay" => $delay,
					"send_to" => $send_to,
					"status" => $status,
					"changed" => now()
				], 
				array("ids" => $account->ids)
			);
		}

		wa_ms([
			"status" => "success",
			"message" => __('Success')
		]);
	}

	public function chatbot_delete(){
		$ids = post('id');

		if( empty($ids) ){
			wa_ms([
				"status" => "error",
				"message" => __('Please select an item to delete')
			]);
		}

		if( is_array($ids) ){
			foreach ($ids as $id) {
				$this->model->delete($this->tb_whatsapp_chatbot, ['ids' => $id]);
			}
		}
		elseif( is_string($ids) )
		{
			$this->model->delete($this->tb_whatsapp_chatbot, ['ids' => $ids]);
		}

		wa_ms([
			"status" => "success",
			"message" => __('Success')
		]);
	}

	/*
	* CONTACT GROUP
	*/
	public function save_contact_group($ids = "")
	{
		$status = post('status');
		$name = post('name');
		$team_id = _t("id");

		$item = $this->model->get("*", $this->tb_whatsapp_contacts, "ids = '{$ids}'");
		if(!$item){
			$total_contact_group = $this->model->get("count(id) as count", $this->tb_whatsapp_contacts, "team_id = '{$team_id}'");
			$max_contact_group = (int)_p('whatsapp_bulk_max_contact_group');

			if($max_contact_group <= $total_contact_group->count){
				wa_ms([
					"status" => "error",
					"message" => sprintf( __( 'You can only create a maximum of %s contact groups' ), $max_contact_group )
				]);
			}

			$item = $this->model->get("*", $this->tb_whatsapp_contacts, "name = '{$name}'");
			validate('null', __('Group contact name'), $name);

			$this->model->insert($this->tb_whatsapp_contacts , [
				"ids" => ids(),
				"team_id" => $team_id,
				"name" => $name,
				"status" => $status,
				"changed" => now(),
				"created" => now()
			]);
		}else{
			$item = $this->model->get("*", $this->tb_whatsapp_contacts, "ids != '{$ids}' AND name = '{$name}'");
			validate('null', __('Group contact name'), $name);
			validate('not_empty', __('This group contact name already exists'), $item);

			$this->model->update(
				$this->tb_whatsapp_contacts, 
				[
					"team_id" => $team_id,
					"name" => $name,
					"status" => $status,
					"changed" => now()
				], 
				array("ids" => $ids)
			);
		}

		wa_ms([
			"status" => "success",
			"message" => __('Success')
		]);

	}

	public function download_example_upload_csv(){

		$module_path = get_module_directory(__DIR__);
		$filename = $module_path.'assets/csv_template.csv';
		if(file_exists($filename)) {

			//Define header information
			header('Content-Description: File Transfer');
			header('Content-Type: application/octet-stream');
			header("Cache-Control: no-cache, must-revalidate");
			header("Expires: 0");
			header('Content-Disposition: attachment; filename="'.basename($filename).'"');
			header('Content-Length: ' . filesize($filename));
			header('Pragma: public');

			//Clear system output buffer
			flush();

			//Read the size of the file
			readfile($filename);

			//Terminate from the script
			die();
		}else{
			echo "File does not exist.";
		}
	}
	
	public function delete_contact_group(){
		$ids = post('id');

		if( empty($ids) ){
			wa_ms([
				"status" => "error",
				"message" => __('Please select an item to delete')
			]);
		}

		if( is_array($ids) ){
			foreach ($ids as $id) {
				$item = $this->model->get("*", $this->tb_whatsapp_contacts, "ids = '{$id}'");
				if(!empty($item)){
					$this->model->delete($this->tb_whatsapp_contacts, ['ids' => $id]);
					$this->model->delete($this->tb_whatsapp_phone_numbers, ['pid' => $item->id]);
				}
			}
		}
		elseif( is_string($ids) )
		{
			$item = $this->model->get("*", $this->tb_whatsapp_contacts, "ids = '{$ids}'");
			if(!empty($item)){
				$this->model->delete($this->tb_whatsapp_contacts, ['ids' => $ids]);
				$this->model->delete($this->tb_whatsapp_phone_numbers, ['pid' => $item->id]);
			}
		}

		wa_ms([
			"status" => "success",
			"message" => __('Success')
		]);
	}

	public function ajax_load_contact_group($ids = ""){
		$team_id = _t("id");
		$numbers = $this->model->get("*", $this->tb_whatsapp_contacts, "ids = '{$ids}' AND team_id = '{$team_id}'");
		if( !$numbers ) return false;

		$page = (int)post("page");

		$data = [
			'page' => $page,
			'result' => $this->model->get_phone_numbers($numbers->id, $page)
		];

		view("pages/sub/ajax_load_phone_numbers", $data, false);
	}

	public function delete_phone(){
		$ids = post('id');

		if( empty($ids) ){
			wa_ms([
				"status" => "error",
				"message" => __('Please select an item to delete')
			]);
		}

		if( is_array($ids) ){
			foreach ($ids as $id) {
				$this->model->delete($this->tb_whatsapp_phone_numbers, ['ids' => $id]);
			}
		}
		elseif( is_string($ids) )
		{
			$this->model->delete($this->tb_whatsapp_phone_numbers, ['ids' => $ids]);
		}

		wa_ms([
			"status" => "success",
			"message" => __('Success')
		]);
	}

	public function ajax_add_phone($ids = ""){
		$team_id = _t("id");
		$phone_numbers = post("phone_numbers");
		validate('null', __('Phone numbers'), $phone_numbers);
		$phone_numbers = explode("\n", $phone_numbers);

		$item = $this->model->get("*", $this->tb_whatsapp_contacts, "ids = '{$ids}'");

		if(!empty($item)){
			$total_phone_numbers = $this->model->get("count(id) as count", $this->tb_whatsapp_phone_numbers, "team_id = '{$team_id}' AND pid = '{$item->id}'");
			$max_phone_number = (int)_p('whatsapp_bulk_max_phone_numbers');

			if($max_phone_number < $total_phone_numbers->count + count($phone_numbers)){
				wa_ms([
					"status" => "error",
					"message" => sprintf( __( 'You can only add up to %s phone numbers per contact group' ), $max_phone_number )
				]);
			}

			foreach ($phone_numbers as $key => $phone_number) {
				$phone_number = str_replace("+", "", $phone_number);
				$phone_number = str_replace(" ", "", $phone_number);
				$phone_number = str_replace("'", "", $phone_number);
				$phone_number = str_replace("`", "", $phone_number);
				$phone_number = str_replace("\"", "", $phone_number);
				$phone_number = trim($phone_number);

				if(is_numeric($phone_number) || stripos($phone_number, "@g.us") !== false){

					//$check = $this->model->get("*", $this->tb_whatsapp_phone_numbers, "pid = '{$item->id}' AND phone = '{$phone_number}'");
					//if(empty($check)){
						$this->model->insert($this->tb_whatsapp_phone_numbers , [
							"ids" => ids(),
							"team_id" => $item->team_id,
							"pid" => $item->id,
							"phone" => $phone_number,
						]);
					//}

				}
			}
		}

		wa_ms([
			"status" => "success",
			"message" => __('Success')
		]);
	}

	public function do_import_contact($ids= ""){
		$team_id = _t("id");
		$config['upload_path']          = TMP_PATH;
        $config['allowed_types']        = 'csv';
        $config['encrypt_name']         = FALSE;

        $this->load->library('upload', $config);

        $item = $this->model->get("*", $this->tb_whatsapp_contacts, "ids = '{$ids}'");
        if(!empty($item)){
	        if(!empty($_FILES)){
		        $files = $_FILES;
			    for($i=0; $i< count($_FILES['files']['name']); $i++){  
			        $_FILES['files']['name']= $files['files']['name'][$i];
			        $_FILES['files']['type']= $files['files']['type'][$i];
			        $_FILES['files']['tmp_name']= $files['files']['tmp_name'][$i];
			        $_FILES['files']['error']= $files['files']['error'][$i];
			        $_FILES['files']['size']= $files['files']['size'][$i];
			        
			        $this->upload->initialize($config);

			        if (!$this->upload->do_upload("files"))
			        {
		                ms([
		                	"status"  => "error",
		                	"message" => $this->upload->display_errors()
		                ]);
			        }
			        else
			        {
			        	$info = (object)$this->upload->data();

			        	$inputFileName = $info->full_path;
			        	
			        	try {
			        		$csvFile = new Keboola\Csv\CsvReader($inputFileName);
			        	} catch (Exception $e) {
			        		ms([
			                	"status"  => "error",
			                	"message" => $e->getMessage()
			                ]);
			        	}

			        	$count_phone_numbers = 0;
			        	foreach($csvFile as $phone_number) {
			        		$count_phone_numbers++;
			        	}

			        	$total_phone_numbers = $this->model->get("count(id) as count", $this->tb_whatsapp_phone_numbers, "team_id = '{$team_id}' AND pid = '{$item->id}'");
						$max_phone_number = (int)_p('whatsapp_bulk_max_phone_numbers');

						if($max_phone_number < $total_phone_numbers->count + $count_phone_numbers){
							wa_ms([
								"status" => "error",
								"message" => sprintf( __( 'You can only add up to %s phone numbers per contact group' ), $max_phone_number )
							]);
						}

						$headers = [];
						foreach($csvFile as $key => $row) {
							if( $key != 0 ){
								if(is_array($row )){
									$phone_number = $row[0];
								}
								
								$phone_number = str_replace("+", "", $phone_number);
								$phone_number = str_replace(" ", "", $phone_number);
								$phone_number = str_replace("'", "", $phone_number);
								$phone_number = str_replace("`", "", $phone_number);
								$phone_number = str_replace("\"", "", $phone_number);
								$phone_number = trim($phone_number);
                                
                                $params = NULL;
								if(is_numeric($phone_number) || stripos($phone_number, "@g.us") !== false){
									if(count($row) > 0){
										
										$params = [];
										foreach ($row as $param_key => $value) {
											if($param_key != 0 ){
												if($value != ""){
													$params[ $headers[$param_key-1] ] = $value;
												}
											}
										}
									}

									$item = $this->model->get("*", $this->tb_whatsapp_contacts, "ids = '{$ids}'");
									$this->model->insert($this->tb_whatsapp_phone_numbers , [
										"ids" => ids(),
										"team_id" => $item->team_id,
										"pid" => $item->id,
										"phone" => $phone_number,
										"params" => json_encode($params),
									]);
								}
							}else{
								if(!empty($row)){
									foreach ($row as $pos => $value) {
										if($pos != 0){
											$headers[] = $value;
										}
									}
								}
							}
						}

						wa_ms([
							"status" => "success",
							"message" => __('Success')
						]);
			        }
			    }
	        }else{
	        	load_404();
	        }
        }
        
	}

	/*BULK*/
	public function bulk_save(){
		$team_id = _t("id");
		$ids = post("ids");
		$account = post("account");
		$group = post("group");
		$name = post("name");
		$cate = (int)post("cate");
		$template = 0;
		$btn_msg = (int)post("btn_msg");
		$list_msg = (int)post("list_msg");
		$caption = post("caption");  
		$medias = post("media");
		$instance_id = post("instance_id");
		$time_post = timestamp_sql(post("time_post"));
		$is_schedule = post("is_schedule");
		$min_interval_per_post = (int)post("min_interval_per_post");
		$max_interval_per_post = (int)post("max_interval_per_post");

		$item = $this->model->get("*", $this->tb_whatsapp_schedules, "ids = '{$ids}' AND team_id = '{$team_id}'");

		validate('null', __('Campaign name'), $name);
		validate("max_length", "Campaign name", $name, 30);
		validate('null', __('Contact group'), $group);

		switch ($cate) {
			case 1:
				if( _p("whatsapp_bulk_media") ){
					if(!is_array($medias) && $caption == ""){
						wa_ms([
							"status" => "error",
							"message" => __('Please enter a caption or add a media')
						]);
					}
				}else{
					validate('null', __('Caption'), $caption);
				}
				break;

			case 2:
				if($btn_msg == 0){
					wa_ms([
						"status" => "error",
						"message" => __('Please select a button message option')
					]);
				}
				$template = $btn_msg;
				break;

			case 3:
				if($list_msg == 0){
					wa_ms([
						"status" => "error",
						"message" => __('Please select a list message option')
					]);
				}

				$template = $list_msg;
				break;
			
			default:
				if($btn_msg == 0){
					wa_ms([
						"status" => "error",
						"message" => __('Invalid input data')
					]);
				}
				break;
		}

		validate("min_number", __("Min interval"), $min_interval_per_post, 5);
		validate("min_number", __("Max interval"), $max_interval_per_post, 5);

		if($min_interval_per_post > $max_interval_per_post){
			wa_ms([
				"status" => "error",
				"message" => __('Max interval must be greater than or equal to min interval')
			]);
		}

		if(empty($item)){
			validate('null', __('Time post'), $time_post);
		}

		$account = $this->model->get("*", $this->tb_account_manager, "token = '{$instance_id}' AND team_id = '{$team_id}'");
		$group = $this->model->get("*", $this->tb_whatsapp_contacts, "id = '{$group}' AND team_id = '{$team_id}'");

		validate('empty', __('Please select at least a profile'), $account);
		validate('empty', __('Please select a contact group'), $group);

		if( $account->status == 0 ){
			wa_ms([
				"status" => "error",
				"message" => __("Relogin is required")
			]);
		}

		if(!empty($item)){
			$data = [
				"team_id" => $team_id,
				"cate" => $cate,
				"template" => $template,
				"account_id" => $account->id,
				"contact_group_id" => $group->id,
				"time_post" => $time_post,
				"min_delay" => $min_interval_per_post,
				"max_delay" => $max_interval_per_post,
				"name" => $name,
				"data" => $caption,
				"media" => empty($medias)?"[]":json_encode($medias),
				"path" => FCPATH,
				"changed" => now()
			];

			$result = $this->db->update( $this->tb_whatsapp_schedules, $data, ["id" => $item->id]);
		}else{
			$data = [
				"ids" => ids(),
				"team_id" => $team_id,
				"cate" => $cate,
				"template" => $template,
				"account_id" => $account->id,
				"contact_group_id" => $group->id,
				"time_post" => $time_post,
				"min_delay" => $min_interval_per_post,
				"max_delay" => $max_interval_per_post,
				"name" => $name,
				"data" => $caption,
				"media" => empty($medias)?"[]":json_encode($medias),
				"path" => FCPATH,
				"status" => 1,
				"changed" => now(),
				"created" => now()
			];

			$result = $this->db->insert( $this->tb_whatsapp_schedules, $data);
		}

		wa_ms([
			"status" => "success",
			"message" => __("Success")
		]);
	}

	public function bulk_delete(){
		$ids = post('id');

		if( empty($ids) ){
			wa_ms([
				"status" => "error",
				"message" => __('Please select an item to delete')
			]);
		}

		if( is_array($ids) ){
			foreach ($ids as $id) {
				$this->model->delete($this->tb_whatsapp_schedules, ['ids' => $id]);
			}
		}
		elseif( is_string($ids) )
		{
			$this->model->delete($this->tb_whatsapp_schedules, ['ids' => $ids]);
		}

		wa_ms([
			"status" => "success",
			"message" => __('Success')
		]);
	}

	public function bulk_schedule_action($ids, $status = ""){
		$status = (int)$status;

		$item = $this->model->get("*", $this->tb_whatsapp_schedules, "ids = '{$ids}'");
		if(!empty($item)){
			switch ($status) {
				case 0:
					$status = ['status' => 0, 'running' => 0];
					$result = '<a href="'.get_module_url("bulk_schedule_action/".$ids."/1").'" class="btn-wa-schedule-action btn-play text-info"><i class="ri-play-fill" title="'.__("Play").'"></i></a>';
					break;

				case 1:
					$status = ['status' => 1, 'running' => 0];
					$result = '<a href="'.get_module_url("bulk_schedule_action/".$ids."/0").'" class="btn-wa-schedule-action btn-pause text-danger"><i class="ri-pause-circle-line" title="'.__("Pause").'"></i></a>';
					break;
				
				default:
					$status = ['status' => 2, 'running' => 0];
					$result = '<div class="btn-success text-success"><i class="ri-check-double-line" title="'.__('Complete').'"></i></div>';
					break;
			}

			$this->db->update($this->tb_whatsapp_schedules, $status, ["ids" => $item->ids]);

			wa_ms([
				"status" => "success",
				"message" => __('Success'),
				"content" => $result,
			]);
		}

		wa_ms([
			"status" => "error",
			"message" => __('Something went wrong, please try again later'),
		]);
	}

	public function bulk_report($ids = ""){
		$result = $this->model->get_report($ids);
		if( empty( $result )){
			return false;
		}
		$file=$result->name.".xls";
		$report=view("pages/sub/campaign_report_template", [ 'result' => $result ], true);
		header("Content-type: application/vnd.ms-excel");
		header("Content-Disposition: attachment; filename=$file");
		echo $report;
	}

	public function bulk_report_by_day(){
		$result = $this->model->get_report_by_day();
		$file="campaign_report.xls";
		$report=view("pages/sub/campaign_report_by_day_template", [ 'result' => $result ], true);
		header("Content-type: application/vnd.ms-excel");
		header("Content-Disposition: attachment; filename=$file");
		echo $report;
	}

	public function cron_bk(  )
	{
		$posts = $this->model->get_bulk_posts();
		if(!$posts){ 
			_e("Empty schedule");
			exit(0);
		}

		foreach ($posts as $post) {
			$id = $post->id;
			$ids = $post->ids;
			$team_id = $post->team_id;
			$account_id = $post->account_id;
			$contact_group_id = $post->contact_group_id;
			$name = $post->name;
			$body = $post->data;
			$media = $post->media;
			$time_post = $post->time_post;
			$min_delay = $post->min_delay;
			$max_delay = $post->max_delay;
			$instance_id = $post->token;
			$sent = $post->sent;
			$failed = $post->failed;
			$result = json_decode($post->result);
			$status = $post->status;
			$changed = $post->changed;
			$created = $post->created;
			$username = $post->username."@c.us";
			$phone_number = $post->username."@c.us";

			$phone_numbers = [];
			$this->db->select("*");
			$this->db->from($this->tb_whatsapp_phone_numbers);
			$this->db->where("pid = '{$contact_group_id}'");
			$this->db->where_not_in("phone", $result);
			$query = $this->db->get();
			if($query->result()){
				$phone_numbers = $query->result();

				if(empty($phone_numbers)){
					$this->db->update(
						$this->tb_whatsapp_schedules,
						[
							"status" => 2
						],
						['id' => $id]
					);
				}
			}else{
				$this->db->update(
					$this->tb_whatsapp_schedules,
					[
						"status" => 2
					],
					['id' => $id]
				);
			}

			$team = $this->model->get("ids", $this->tb_team, "id = '{$team_id}'");
			$stats = $this->model->get("*", $this->tb_whatsapp_stats, "team_id = '{$team->ids}'");
		 	$phone_number_index = array_rand($phone_numbers);
		 	$phone_number = $phone_numbers[$phone_number_index]->phone;
		 	$chat_id = $phone_number."@c.us";
		 	$server_url = get_option('whatsapp_server_url', '');

		 	$media = json_decode($media);

		 	if(empty($media)){
				$response = json_decode( wa_post_curl( $server_url."send_message?type=chat&chat_id=".$chat_id."&instance_id=".$instance_id."&access_token=".$team->ids, [
					"body" => $body,
					"chat_id" => $chat_id
				] ) );
		 	}else{
		 		$filename = end( explode("/", $media[0]) );

		 		$response = json_decode( wa_post_curl( $server_url."send_message?type=media&chat_id=".$chat_id."&instance_id=".$instance_id."&access_token=".$team->ids, [
					"body" => wa_base64($media[0]),
					"chat_id" => $chat_id,
					"caption" => $body,
					"filename" => $filename,
				] ) );
		 	}

			if(empty($result)){
				$update_phone_list = [$phone_number];
			}else{
				$update_phone_list = $result;
				$update_phone_list[] = $phone_number;
			}

			$data_update = [ "result" => json_encode($update_phone_list) ];

			if(!empty($response) && $response->status == "success"){
				$new_sent = 1;
				$new_failed = 0;
				$this->db->update( $this->tb_whatsapp_stats, [ "wa_bulk_sent_count" => (int)$stats->wa_bulk_sent_count + 1 ] , [ "id" => $stats->id ]);
			}else{
				$new_sent = 0;
				$new_failed = 1;
				$this->db->update( $this->tb_whatsapp_stats, [ "wa_bulk_failed_count" => (int)$stats->wa_bulk_failed_count + 1 ] , [ "id" => $stats->id ]);
			}

			$this->db->update( $this->tb_whatsapp_stats, [ "wa_bulk_total_count" => (int)$stats->wa_bulk_total_count + 1 ] , [ "id" => $stats->id ]);

			$total_sent = $sent + $new_sent;
			$total_failed = $failed + $new_failed;
			$total_complete = $total_sent + $total_failed;

			$count = $this->model->get("count(*) as count", $this->tb_whatsapp_phone_numbers, "pid = '{$contact_group_id}'")->count;
			if($total_complete == $count){
				$this->db->update(
					$this->tb_whatsapp_schedules,
					[
						"status" => 2
					],
					['id' => $id]
				);
			}

			$next_time = $time_post + ( rand($min_delay,$max_delay) * 60 );

			if($next_time < time() ){
				$next_time = time() + ( rand($min_delay,$max_delay) * 60 );
			}

			$this->db->update(
				$this->tb_whatsapp_schedules,
				[
					"result" => json_encode($update_phone_list),
					"sent" => $total_sent,
					"failed" => $total_failed,
					"time_post" => $next_time
				],
				['id' => $id]
			);
		}

		_e("Success");

	}

	/*CHATBOT*/
	public function chatbot_save(){
		$team_id = _t("id");
		$ids = post("ids");
		$type = post("type");
		$name = post("name");
		$cate = (int)post("cate");
		$template = 0;
		$btn_msg = (int)post("btn_msg");
		$list_msg = (int)post("list_msg");
		$keywords = post("keywords");  
		$caption = post("caption");  
		$medias = post("media");
		$send_to = (int)post('send_to');
		$status = (int)post("status");
		$instance_id = post("instance_id");
		$interval_per_post = (int)post("interval_per_post");

		$item = $this->model->get("*", $this->tb_whatsapp_chatbot, "ids = '{$ids}' AND team_id = '{$team_id}'");

		validate('null', __('Bot name'), $name);
		validate("max_length", "Bot name", $name, 30);
		validate('null', __('Keywords'), $keywords);

		$account = $this->model->get("*", $this->tb_account_manager, "token = '{$instance_id}' AND team_id = '{$team_id}'");
		validate('empty', __('Please select at least a profile'), $account);

		if( $account->status == 0 ){
			wa_ms([
				"status" => "error",
				"message" => __("Relogin is required")
			]);
		}

		switch ($cate) {
			case 1:
				if( _p("whatsapp_chatbot_media") ){
					if(!is_array($medias) && $caption == ""){
						wa_ms([
							"status" => "error",
							"message" => __('Please enter a caption or add a media')
						]);
					}
				}else{
					validate('null', __('Caption'), $caption);
				}
				break;

			case 2:
				if($btn_msg == 0){
					wa_ms([
						"status" => "error",
						"message" => __('Please select a button message option')
					]);
				}
				$template = $btn_msg;
				break;

			case 3:
				if($list_msg == 0){
					wa_ms([
						"status" => "error",
						"message" => __('Please select a list message option')
					]);
				}

				$template = $list_msg;
				break;
			
			default:
				if($btn_msg == 0){
					wa_ms([
						"status" => "error",
						"message" => __('Invalid input data')
					]);
				}
				break;
		}

		$run = 0;
		$chatbot_item = $this->model->get("*", $this->tb_whatsapp_chatbot, "instance_id = '{$instance_id}' AND team_id = '{$team_id}'");
		if(!empty($chatbot_item) && $chatbot_item->run){
			$run = 1;
		}

		$keywords = wa_keyword_trim($keywords);
		
		if(!empty($item)){
			$data = [
				"team_id" => $team_id,
				"instance_id" => $instance_id,
				"type" => $type,
				"name" => $name,
				"cate" => $cate,
				"template" => $template,
				"keywords" => mb_strtolower($keywords),
				"caption" => $caption,
				"media" => empty($medias)?"[]":json_encode($medias),
				"path" => FCPATH,
				"run" => $run,
				"send_to" => $send_to,
				"status" => $status,
				"changed" => now()
			];

			$result = $this->db->update( $this->tb_whatsapp_chatbot, $data, ["id" => $item->id]);
		}else{
			$data = [
				"ids" => ids(),
				"team_id" => $team_id,
				"instance_id" => $instance_id,
				"type" => $type,
				"name" => $name,
				"cate" => $cate,
				"template" => $template,
				"keywords" => mb_strtolower($keywords),
				"caption" => $caption,
				"media" => empty($medias)?"[]":json_encode($medias),
				"path" => FCPATH,
				"run" => $run,
				"send_to" => $send_to,
				"status" => $status,
				"changed" => now(),
				"created" => now()
			];

			$result = $this->db->insert( $this->tb_whatsapp_chatbot, $data);
		}

		wa_ms([
			"status" => "success",
			"message" => __("Success")
		]);
	}

	public function chatbot_status(){
		$team_id = _t('id');
		$instance_id = post("instance_id");
		$access_token = post("access_token");

		$chatbot_item = $this->model->get("*", $this->tb_whatsapp_chatbot, "instance_id = '{$instance_id}' AND team_id = '{$team_id}'");
		if(!empty($chatbot_item)){
			if($chatbot_item->run){
				$this->db->update($this->tb_whatsapp_chatbot, [ 'run' => 0 ], [ 'instance_id' => $instance_id ]);
			}else{
				$this->db->update($this->tb_whatsapp_chatbot, [ 'run' => 1 ], [ 'instance_id' => $instance_id ]);
			}
		}

		wa_ms([
			"status" => "success",
			"message" => __('Success')
		]);
	}
}