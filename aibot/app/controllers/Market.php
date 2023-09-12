<?php


class Market extends MY_Controller{
public $data = [];
public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	public function index($slug = NULL){
	$m = $this->db->get_where('sp_market', array("name" => $slug));
	$market = $m->row(); 
	$user_id = $market->uid;
	$p = $this->db->get_where('payment_key', array("uid" => $user_id, "type" => "paypal"));
	$s = $this->db->get_where('payment_key', array("uid" => $user_id, "type" => "stripe")); 
	$product = $this->db->get_where('sp_product', array("uid" => $user_id, "mid" => $market->id, "feature" => 1));
    $this->data['market'] = $m->row();
    $this->data['products'] = $product->result();
    $this->data['customer_id'] =  cart_customer_id($slug, 8);
    $this->data['paypal'] = $p->row();
    $this->data['stripe'] = $s->row();
	$this->load->view('market', $this->data);
		
	}

	public function add_customer_cart($pid=null){
	$product = $this->db->get_where('sp_product', array("id" => $pid))->row();
	//get product image
	 $p_img = json_decode($product->image, true);
	 $data =  [
      "customer_id" => $this->input->post("cid"),
      "product_image" => base_url().$p_img[0],
      "product_name" => $product->name,
      "product_price" => $product->price,
      "market"   =>  $this->input->post("market"),
      "quantity" => $this->input->post("quantity"),
      "vid"   => $this->input->post("uid"),
      "status" => 0,  
	 ];
	  if($this->db->insert("sp_cart", $data)){
      $output = ["status" => "success"];
     echo json_encode($output);
	  }else{
	  	$output = ["status" => "error"]; 
     echo json_encode($output);
	  }
	 }

	public function get_cart_by_customer($cid=null){
     $get_carts = $this->db->get_where('sp_cart', array("customer_id" => $cid, "status" => 0));
     $carts = $get_carts->result();
      echo json_encode($carts);
	}

	public function update_cart($cid=null, $status=null){
		 $name = $this->input->post("name");
		 $email = $this->input->post("email");
		 $phone = $this->input->post("phone");
		 $country = $this->input->post("country");
		 $tele = $this->input->post("tele");
		 $add1 = $this->input->post("add1");
		$this->db->where('customer_id', $cid);
        $this->db->update('sp_cart', ["status" => $status, "name" => $name, "email" => $email, "phone_no" => $phone, "country" => $country, "add1" => $add1, "tele" => $tele]);
	 $get_carts = $this->db->get_where('sp_cart', array("customer_id" => $cid, "status" => $status));
     $carts = $get_carts->result();
      echo json_encode($carts);	
	}

	public function update_cart_done($cid=null, $status=null){
		 
		$this->db->where('customer_id', $cid);
        $this->db->update('sp_cart', ["status" => $status]);
	 $get_carts = $this->db->get_where('sp_cart', array("customer_id" => $cid, "status" => $status));
     $carts = $get_carts->result();
      echo json_encode($carts);	
	}

	public function get_product_details($pid = null){
	$product = $this->db->get_where('sp_product', array("id" => $pid))->row();
	$img = json_decode($product->image);
	$pp = [
		"id" => $product->id,
		"uid" => $product->uid,
		"mid"  => $product->mid,
		"name"  => $product->name,
		"price" => $product->price,
		"old_price" => $product->old_price,
		"des"   => $product->des,
		"image"  => $img,
		"logdes"  => $product->logtext,
		"category"  => $product->category,
		"feature"  => $product->feature,
	];
	echo json_encode($pp);	
	}

	public function delete_cart($did = null, $cid = null){
     $where = array('id' => $did);
    
      if ($this->db->where($where)->delete("sp_cart")) {
        $get_carts = $this->db->get_where('sp_cart', array("customer_id" => $cid, "status" => 0));
     $carts = $get_carts->result();
      echo json_encode($carts);
      }else{
      $output = ["status" => "error"];
     echo json_encode($output);	
      }  
	}

	public function get_product_category($category=null, $mid=null){
		if($category == "all"){
         $p = $this->db->get_where('sp_product', array("mid" => $mid));
     $products = $p->result();
      echo json_encode($products);
		}else{
		 $category = urldecode($category);
			
    $p = $this->db->get_where('sp_product', array("category" => $category, "mid" => $mid));
     $products = $p->result();
      echo json_encode($products);
     } 

	}

	public function handlePayment()
    {
        //$user = $this->input->post('user');
        //$stripe_secret = $this->db->where('user_id', $user)->get("stripe_table")->row();
       $amount = 30;//$this->input->post('amount');
        //$key = $this->input->post('vkey');
        // $video = $this->db->where('video_key', $key)->get("videos")->row();
        // if($this->input->post('product') != ""){
        //     $title = $this->input->post('product');
        // }else{
        //   $title = $video->title;  
        // }
       	require APPPATH .'third_party/stripe-php/init.php'; 
    
        \Stripe\Stripe::setApiKey('sk_test_0jsLqIRhhUrkJGfEVwe3NoYT');
     
        \Stripe\Charge::create ([
                "amount" => $amount * 120,
                "currency" => "usd",
                "source" => $this->input->post('stripeToken'),
                "description" => "Stripe payment for  Product payment" 
        ]);
            
       $this->session->set_flashdata('success_stripe', 'Payment successful.');
        $output = array('status' => 'success');
         	echo json_encode($output);   
        //redirect('video/'.$key, 'refresh');
    }

}

?>