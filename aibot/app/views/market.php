<?php 
 _ss("customer_id", $customer_id);
 ?>
<!DOCTYPE html>
<html lang="en" dir="">

<head>
    <meta charset="UTF-8"> 
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="author" content="whatsstore-saas - Workdo.">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0" />
    <title>Home - <?php echo $market->name ?>
    </title>
    <meta name="description" content="<?php echo $market->name ?>">
    <meta name="keywords" content="">
    <meta name="csrf-token" id="csrf-token" content="aTJuEoiz9SFC1eYUGcr1OJMBrwyzzjUfWCNuqbAU">
    <link rel="icon"
        href="<?php base_url().$market->logo ?>"
        type="image" sizes="16x16">
    <link rel="stylesheet" href="https://mypcommerce.com/assets/admin/css/vendor/bootstrap.min.css">
    <!-- bootstrap toggle css -->
    <link rel="stylesheet" href="https://mypcommerce.com/assets/admin/css/vendor/bootstrap-toggle.min.css">

    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@100;200;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">

    <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.2.1/css/fontawesome.min.css" integrity="sha384-QYIZto+st3yW+o8+5OHfT6S482Zsvz2WfOzpFSXMF9zqeLcFV0/wlZpMtyFcZALm" crossorigin="anonymous">

                      
            
    <link rel="stylesheet" href="https://demo.rajodiya.com/whatsstore-saas/custom/libs/animate.css/animate.min.css">

     
    <meta name="mobile-wep-app-capable" content="yes">
    <meta name="apple-mobile-wep-app-capable" content="yes">
    <meta name="msapplication-starturl" content="/">
    <link rel="apple-touch-icon" href="<?php _e( get_option('website_favicon', get_url("inc/themes/backend/default/assets/img/favicon.png")) )?>" />
    
        
        <meta name="theme-color" content="#555eee" />
                <meta name="apple-mobile-web-app-status-bar" content="#8693ae" />
        <style type="text/css">
 	* {box-sizing:border-box}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Hide the images by default */
.mySlides {
  display: none;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  margin-top: -22px;
  padding: 16px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
  user-select: none;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  animation-name: fade;
  animation-duration: 1.5s;
}

@keyframes fade {
  from {opacity: .4}
  to {opacity: 1}
}        
    <style type="text/css">
    	.prod:hover{
    		
   /*  transform: scale(1.04);*/
  /*cursor: pointer;*/
  box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.20), 0 2px 10px 0 rgba(0, 0, 0, 0.16);
    	}
    </style>
        
				
        </head>

<body>
       <!--  <input type="hidden" id="return_url">
    <input type="hidden" id="return_order_id"> -->
    <!--header start here-->
   
    	<div class="row bg-secondary" style="max-height: 80px;--bs-bg-opacity: .5;">
    	<div class="col-lg-12">
    		<div class="row">
    			<div class="col-lg-6">
    				<a href="">
    				<img src="<?php echo $market->logo; ?>" style="padding: 12px 20px;height: 70px;width: 100px;"></a>
    				<a href="" class="text-white"><h4 style="display: inline;"><?php echo ucfirst($market->name) ; ?></h4></a>
    			</div>
    			<div class="col-lg-4"></div>
    			<div class="col-lg-2">
    				<a href="#" class="p-4 btn btn-secondary">Contact</a>
    				<!-- <a href="#" class="p-3 btn btn-secondary dropdown">User</a> -->
    			</div>
    		</div>
    	</div>	

    	</div>
   <br>

   <div class="row">
   	<div class="col-lg-12">
   		<div class="row">
        
   		<div class="col-lg-2">
   			<div class="card-header">
   				<h6>Product Categories</h6>
   			</div>
   			<div class="card">
   				<div class="card-body">
   					<div class="col-lg-12 bg-secondary p-3" style="text-align: center;border-bottom: solid 1px #f7f7f7;cursor: pointer;" onclick="getCategories('all');"><a href="#" class="text-white">All</a></div>
   					<div class="col-lg-12 bg-secondary p-3" style="text-align: center;border-bottom: solid 1px #f7f7f7;cursor: pointer;" onclick="getCategories('Food');"><a href="#" class="text-white">Food</a></div>
   					<div class="col-lg-12 bg-secondary p-3" style="text-align: center;border-bottom: solid 1px #f7f7f7;cursor: pointer;" onclick="getCategories('Weight Loss');"><a href="#" class="text-white">Weight Loss</a></div>
   					<div class="col-lg-12 bg-secondary p-3" style="text-align: center;border-bottom: solid 1px #f7f7f7;cursor: pointer;" onclick="getCategories('Fashion');"><a href="#" class="text-white">Fashion</a></div>
   					<div class="col-lg-12 bg-secondary p-3" style="text-align: center;border-bottom: solid 1px #f7f7f7;cursor: pointer;" onclick="getCategories('Electronic');"><a href="#" class="text-white">Electronic</a></div>
   					<div class="col-lg-12 bg-secondary p-3" style="text-align: center;border-bottom: solid 1px #f7f7f7;cursor: pointer;" onclick="getCategories('Accessories');"><a href="#" class="text-white">Accessories</a></div>
   					
   					<div class="col-lg-12 bg-secondary p-3" style="text-align: center;border-bottom: solid 1px #f7f7f7;cursor: pointer;" onclick="getCategories('Sport');"><a href="#" class="text-white">Sport</a></div>
   					<div class="col-lg-12 bg-secondary p-3" style="text-align: center;border-bottom: solid 1px #f7f7f7;cursor: pointer;" onclick="getCategories('Music');"><a href="#" class="text-white">Music</a></div>
   					<div class="col-lg-12 bg-secondary p-3" style="text-align: center;border-bottom: solid 1px #f7f7f7;cursor: pointer;" onclick="getCategories('Art');"><a href="#" class="text-white">Art</a></div>
   					

   				</div>
   			</div>
   		</div>

   		<div class="col-lg-8">
   		<div class="col-lg-12">
   			<div class="card-header">
   				<h3 class="text-secondary">Products</h3>
   			</div>
   			<div class="card">
   			<div class="card-body">
          <div class="col-lg-12 spinner" style="position:absolute;text-align: center;"></div>
   			 <div class="row" style="margin-top: 10px;" id="product_holder">

                        	<?php foreach ($products as $key => $product) { 
                        		$productImg = json_decode($product->image, true);
                        		?>
                        	 
                        	<div class="col-xl-3 col-lg-12 prod">
                        	 <div style="padding: 8px !important;border:1px solid #aaa;">
                        	 	<div class="details" style="cursor: pointer;" data-pid="<?php echo $product->id ?>">
                        	 	<img src="<?php echo base_url().$productImg[0] ?>" style="width: 100%;height: 150px;padding-bottom: 10px;">
                        	 
                        	 <h6 style="text-align: center;color: #aaa"><?php echo ucfirst($product->name); ?></h6>
                        	 <span style="text-align: center;color: #aaa;margin-left: 30%"><?php echo $product->category; ?></span>
                        	 <div style="padding: 18px 5px 5px 25%">
                        	 	<span style="color: #aaa"><b>Price:</b> $<?php echo $product->price; ?></span>
                        	 </div>
                        	</div>
                        	 <a href="#" class="btn btn-secondary bg--gray hover-translate-y-n3 icon-font addCart" data-cid="<?php echo $product->id ?>" style="margin-left:25px;">Add to Cart</a>
                        	 </div>
                           <div style="width: 100%;height: 15px;"></div>	
                        	</div>

                        <?php } ?>
                        </div>	
   			</div>
   		</div>
   		</div>	
   		</div>

   		<div class="col-lg-2">
   			<div class="col-lg-12">
   				<div class="card">
   					<div class="card-header">
   						<h5>My Cart</h5>
   					</div>
   					<div class="card-body bg-secondary">
   					<div class="col-lg-12 cart_holder" style="text-align: center;padding: 0px">
   						<span class="bg-white text-danger" style="padding: 5px"><strong>Your Cart Is Empty</strong></span>
   					</div>
   					<!-- <div class="col-lg-12 text-white" style="padding: 8px 0;">
   						<span style="margin-left: -10px;">Subtotal:</span>
   						<span style="float: right;">$234</span>
   					</div> -->
   					<div class="col-lg-12 text-white" style="padding: 12px 0;">
   						<span style="margin-left: -10px;"><b>Total:</b></span>
   						<span style="float:right;" class="total">$0</span>
   					</div>
   					</div>
   				</div>

   				<div style="text-align: center;" class="p-2 checkBtn">
             
          </div>

   			</div>
        <div class="col-md-12">
          <a href="#" style="float: right;"><img src="<?php echo base_url().'assets/whatsapp.png';?>" style="width: 70px;height: 60px;padding: 8px;"></a>
        </div>
   		</div>
   	</div>
   	</div>
   	
   </div>
    <!--header end here-->
    <!--wrapper start here-->
   

    



   

    <!-- Product Model  -->
     <div id="productModel" class="modal fade" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Product Details</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="row">
                    	
                    		<div class="col-lg-6">
                    		<div class="slideshow-container">
                    			<div class="mySlides">
                                <img src="" id="model_img" style="width: 100%;height: auto;padding: 8px;"> 
                    			</div>
                    		 </div>  	
                    		</div>
                    	  <div class="col-lg-6">
                    	  	<div class="card">
                    	  		<div class="card-header"><h6>Product Information</h6></div>
                    	  		<div class="card-body">
                    	  			<div class="col-lg-12 p-1">
                    	  				<h5 style="display: inline;">Name:</h5>
                    	  				<span style=" margin-left: 11%;font-size: 18px;" id="pname"></span>
                    	  			</div>
                    	  			<div class="col-lg-12 p-0">
                    	  				<h5 style="display: inline;margin-left: 3px;">Price:</h5>
                    	  				<span style="margin-left: 15%;font-size: 18px;" id="pprice"></span>
                    	  			</div>
                    	  			<div class="col-lg-12 p-0">
                    	  				<h5 style="display: inline;margin-left: 3px;">Category:</h5>
                    	  				<span style="margin-left: 5%;font-size: 18px;" id="pcate"></span>
                    	  			</div>
                    	  			<div class="col-lg-12 p-1">
                    	  				<h5 style="display: inline;">Short Description:</h5>
                    	  				<span style=" margin-left: 2%;font-size: 18px;" id="pdes"></span>
                    	  			</div>
                    	  			<hr style="width: 100%;height: 1px;margin-left: auto;margin-right: auto;background-color: gray;">
                    	  			<div class="col-lg-12 p-0">
                    	  				<h4 style="display: inline;">Description:</h4>
                    	  				<span style=" margin-left: 2%;font-size: 18px;" id="pldes"></span>
                    	  			</div>
                    	  		</div>
                            <div>
                    	  		<a href="#" style="float: right;"><img src="<?php echo base_url().'assets/whatsapp.png';?>" style="width: 70px;height: 60px;padding: 8px;"></a>
                            
                    	  	</div>
                    	  </div> 	
                    	
                    </div>
                       
                                      
                                      
                        <div class="modal-footer">
                            <!-- <button type="button" class="btn btn--dark" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn--primary">Login</button> -->
                        </div>
                    
                </div>
            </div>
        </div>


         <!-- Checkout Model  -->
     <div id="checkoutModel" class="modal fade" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Cart Checkout</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="row" id="page1">
                     <div class="col-lg-6">
                      <div class="card">
                       <div class="card-header" style="text-align: center;"><h5 class="text-danger">Carts</h5></div> 
                      <div class="card-body">
                       <div class="col-lg-12">
                         <table class="table table-stripe" id="cartTable">
                           <thead>
                             <tr>
                               <th>Image</th>
                               <th>Name</th>
                               <th>Price</th>
                               <th>Action</th>
                             </tr>
                           </thead>
                           <tbody>
                             
                           </tbody> 
                         </table>
                       </div>
                       <div>
                         <span class="ch_total" style="float: right;"></span>
                       </div>
                       </div>
                       </div>
                     </div> 
                      <div class="col-lg-6">
                        <div class="col-lg-12">
                          <div class="card">
                            <div class="card-header" style="text-align: center;"><h5>Delivery Details</h5></div>
                            <div class="card-body">
                              <form id="formDetails">
                                <div class="form-group">
                                  <label for="name">Full Name<small class="text-danger"><strong>*</strong></small></label>
                                  <input type="text" name="name" id="name" placeholder="Full Name" class="form-control">
                                </div>
                                <div class="form-group">
                                  <label for="email">Email<small class="text-danger"><strong>*</strong></small></label>
                                  <input type="email" name="email" id="email" placeholder="Email" class="form-control">
                                </div>
                                <div class="form-group">
                                  <label for="phone">Phone<small class="text-danger"><strong>*</strong></small></label>
                                  <input type="telephone" name="phone" id="phone" placeholder="Phone No" class="form-control">
                                </div>
                                <div class="form-group">
                                  <label for="phone">Telephone</label>
                                  <input type="telephone" name="tele" id="tele" placeholder="Telephone" class="form-control">
                                </div>
                                <div class="form-group">
                                  <label for="country">Country<small class="text-danger"><strong>*</strong></small></label>
                                  <input type="text" name="country" id="country" placeholder="Country" class="form-control">
                                </div>
                                <div class="form-group">
                                  <label for="add1">Address 1<small class="text-danger"><strong>*</strong></small></label>
                                  <input type="address" name="add1" id="add1" placeholder="Address 1" class="form-control">
                                </div>
                                <div class="form-group">
                                  <label for="add2">Address 2</label>
                                  <input type="address" name="add2" id="add2" placeholder="Address 2" class="form-control">
                                </div>
                              </form>
                            </div>
                          </div>
                        </div>
                        <div class="modal-footer" style="float: right;">
                            <!-- <button type="button" class="btn btn--dark" data-dismiss="modal">Close</button> -->
                            <button type="button" class="btn btn-primary nextStep">Next</button>
                        </div>
                      </div>   
                    </div>
                    <div class="row" id="page2" style="display: none">
                      <div class="col-lg-6" style="margin-left: 23%;">
                        <div class="row p-2" style="position: absolute;background-color: #ccc;width: 100%;height: auto;" id="payment-success"></div>
                        <div class="card">
                          <div class="card-header" style="text-align: center;"><h5>Make Payment</h5></div>
                          <div class="card-body">
                            <div><span style="font-size: 1.3em">Total Amount:</span><span style="float: right;" id="tt"></span>
                            </div>
                            <div class="card-body p-2" style="margin-left: 15%;">
                              <?php
                       if(isset($paypal->paypal_client_id)) { ?>
                              <div id="paypal-button-container" style="width:100px;height: 80px;padding: 8px;display: inline-block;">
                              </div>
                            <?php } ?>
                             <?php
                       if(isset($stripe->stripe_secret)) { ?>
                              <div>
                              <a href="#" class="st_payment" style="margin-left: 17%"><img src="<?php echo base_url().'assets/stripe-logo.png';?>" style="width: 100px;height: 80px;padding: 8px;"></a>
                              </div>
                          <?php } ?>    
 <div class="col-lg-12" style="border:2px solid #f7f7f7;display: none;margin-left: -20px" id="stripe_holder_c">                             
<form role="form" action="<?php echo base_url('handleStripePayment');?>" method="post"
              class="form-validation" data-cc-on-file="false"
              data-stripe-publishable-key="pk_test_6mL8ieoxZsjAN56DIZumFFIF"
              id="payment-form">
             
                <div class='col-xs-12 form-group required'>
                  <label class='control-label'>Name on Card</label>
                  <input class='form-control'  type='text'>
                </div>
              
              
                <div class='col-xs-12 form-group card required'>
                  <label class='control-label'>Card Number</label>
                  <input autocomplete='off' class='form-control card-number' size='20' type='text'>
                </div>
             <div class='col-xs-12 col-md-4 form-group cvc required'>
                  <label class='control-label'>CVC</label>
                  <input autocomplete='off' class='form-control card-cvc' placeholder='ex. 311'
                    size='8' type='text'>
                </div>
              <div class='form-row row'>
                <div class='col-xs-12 col-md-4 form-group expiration required'>
                  <label class='control-label'>Expiration Month</label>
                  <input class='form-control card-expiry-month' placeholder='MM' size='4' type='text'>
                </div>
                <div class='col-xs-12 col-md-4 form-group expiration required'>
                  <label class='control-label'>Expiration Year</label>
                  <input class='form-control card-expiry-year' placeholder='YYYY' size='4'
                    type='text'>
                </div>
              </div>
              <!-- <div class='form-row row'>
                <div class='col-md-12 error form-group hide'>
                  <div class='alert-danger alert'>Error occured while making the payment.</div>
                </div>
              </div> -->
              
                <div class="col-xs-6">
                  <button class="btn btn-danger btn-lg btn-block" type="submit">Pay </button>
                </div>
            
            </form>
            </div>

                              <div>
                              <a href="#" style="margin-left: 17%"><img src="<?php echo base_url().'assets/whatsapp.png';?>" style="width: 100px;height: 80px;padding: 8px;"></a>
                            </div>
                            
                            </div>
                          </div>
                        </div>
                        <div class="modal-footer" style="float: right;">
                            <!-- <button type="button" class="btn btn--dark" data-dismiss="modal">Close</button> -->
                            <button type="button" class="btn btn-danger backStep">Back</button>
                        </div>
                      </div>
                    </div>   
                                      
                                      
                        
                    
                </div>
            </div>
        </div>
    <!-- !--search-popup end--! -->

   <!--  <script src="https://demo.rajodiya.com/whatsstore-saas/custom/js/jquery.min.js"></script> -->
    <!-- <script src="https://demo.rajodiya.com/whatsstore-saas/custom/libs/bootstrap-notify/bootstrap-notify.min.js"></script> -->
    <!-- jQuery library -->
<script src="https://mypcommerce.com/assets/admin/js/vendor/jquery-3.5.1.min.js"></script>
<!-- bootstrap js -->
<script src="https://mypcommerce.com/assets/admin/js/vendor/bootstrap.bundle.min.js"></script>
<!-- bootstrap-toggle js -->
<script src="https://mypcommerce.com/assets/admin/js/vendor/bootstrap-toggle.min.js"></script>

<!-- slimscroll js for custom scrollbar -->
<script src="https://mypcommerce.com/assets/admin/js/vendor/jquery.slimscroll.min.js"></script>
<script src="https://demo.rajodiya.com/whatsstore-saas/custom/libs/bootstrap-notify/bootstrap-notify.min.js"></script>
    

        

    
    <script>
       var link_url = '<?php echo base_url() ; ?>';  
       var cid = '<?php echo  _s("customer_id"); ?>';
       var uid = '<?php echo  $market->uid; ?>';
        $('.details').on('click', function () {

            var modal = $('#productModel');
           var pid = $(this).data('pid');
           $(".slideshow-container").empty();
        	$("#pname").empty();
        	$("#pprice").empty();  
        	$("#pdes").empty();
        	$("#pldes").empty();
        	$("#pcate").empty();  
             $.ajax({
          type:'GET',
          url: link_url+'market/get_product_details/'+pid,
          success:function(result){
        	
        	//console.log(JSON.parse(result));
        	var product = JSON.parse(result);
        	var imgs = product.image
        	
        	imgs.forEach(function(img, index){
              let show = "";
              if(index == 0){
              	show = "block !important;";
              }else{
              	show = "none;";
              }
              $(".slideshow-container").append('<div class="mySlides" style="display:'+show+'"><img src="'+img+'" style="width: 100%;height: 300px;padding: 8px;"></div><a class="prev" onclick="plusSlides(-1)">&#10094;</a><a class="next" onclick="plusSlides(1)">&#10095;</a>');
            });
             $("#pname").html(product.name);
        	$("#pprice").html('$'+product.price);
        	$("#pcate").html(product.category);
        	$("#pdes").html(product.des);
        	$("#pldes").html(product.logdes);
        	$("#mcid").attr('data-cid', product.id);
          }

      });
            
             modal.modal('show');
           
        });


        $('.addCart').on('click', function () {
          $(".spinner").html('<div style="z-index:2;"><img src="'+link_url+'assets/spinner.gif" style="width:50%height:50%;padding:12px;"></div>');
        	// let button = $(this);
         var cart_id = $(this).data('cid');
        var market = '<?php echo $market->name ; ?>';
         var token = '<?php _e( $this->security->get_csrf_hash() )?>';
         $.ajax({
          type:'POST',
          url: link_url+'market/add_customer_cart/'+cart_id,
          data:{token:token,id:cart_id,cid:cid,market:market,quantity:1,uid:uid},
      //    beforeSend: function(){
      //   button.prop('disabled', true).addClass('ar-button--loading');
      //   button.html("Adding...");
      // },
          success:function(result){
          	//console.log(result)
          	var dd = JSON.parse(result);
          if(dd.status == "success"){
              	//console.log(cid);
              	 $.ajax({
          type:'GET',
          url: link_url+'market/get_cart_by_customer/'+cid,
         success:function(data){
          $(".spinner").empty();
           $(".cart_holder").empty();
           $(".total").empty();
           var carts = JSON.parse(data);
           let total = 0.0;
           carts.forEach(function(list, index){
         
           	$(".cart_holder").append('<div class="col-lg-12" style="border:solid 1px #ffffff;padding-bottom:5px;"><div class="col-lg-12"><img src="'+list.product_image+'" style="width:100%;padding:5px 0;height:60px;"></div><div class="col-lg-12 text-white" style="text-align:center;padding:1px 0;"><span>'+list.product_name+'</span></div><div class="col-lg-12 text-white" style="text-align:center;padding:1px 0;"><span>$'+list.product_price+'</span><a href="#" style="float:right;" onclick="deleteProductFromCart(this,\''+list.id+'\')"><i class="far fa-trash-alt text-danger"></i></a></div></div>');
              total = parseFloat(total) + parseFloat(list.product_price);
             });
           $(".total").append("$"+total);
           $(".checkBtn").html('<button type="button" class="btn btn-success" onclick="showCheckoutModel(this,\''+cid+'\')">CHECKOUT</button>');
          },
      //     complete: function(){
      //   button.prop('disabled', false).removeClass('ar-button--loading');
      //   button.html("Add to Cart");
      // }
      });
              }else{
              	console.log("fail");
              } 
          }
      });

        });



               //get Category

               function getCategories(cate){
                console.log(cate);
               	var mid = <?php echo $market->id; ?>;
                $(".spinner").html('<div style="z-index:2;"><img src="'+link_url+'assets/spinner.gif" style="width:50%height:50%;padding:12px;"></div>');
               	$.ajax({
          type:'GET',
          url: link_url+'market/get_product_category/'+cate+'/'+mid,
         success:function(data){
         	$(".spinner").empty();
         	$("#product_holder").empty();
         	if(data.length > 0){
         	
         	var products = JSON.parse(data);
         	
         	products.forEach(function(product, index){
         		var img = JSON.parse(products[index].image);
         		$("#product_holder").append('<div class="col-xl-3 col-lg-12 prod"><div style="padding: 8px;border:1px solid #aaa;"><div class="details" style="cursor: pointer;" data-pid="'+product.id+'" onclick="loadProductDetails(this,\''+product.id+'\')"><img src="'+link_url+img[0]+'" style="width: 100%;height: 150px;padding-bottom: 10px;"><h6 style="text-align: center;color: #aaa">'+product.name+'</h6><span style="text-align: center;color: #aaa;margin-left: 30%">'+product.category+'</span><div style="padding: 18px 5px 5px 25%"><span style="color: #aaa"><b>Price:</b> $'+product.price+'</span></div></div><a href="#" class="btn btn-secondary bg--gray hover-translate-y-n3 icon-font addCart" data-cid="'+product.id+'" onclick="addProductToCart(this,\''+product.id+'\')" style="margin-left:25px;">Add to Cart</a></div><div style="width: 100%;height: 15px;"></div></div>');
         	})
         	}else{
         		$("#product_holder").append('<div style="text-align: center"><h4 class="text-danger">Product Category Empty</h4></div>');
         	}
         }
     });
               }

             // load product details model by function
               function loadProductDetails(obj,pid){
              $(".spinner").html('<div style="z-index:2;"><img src="'+link_url+'assets/spinner.gif" style="width:50%height:50%;padding:12px;"></div>');
           var modal = $('#productModel');
           $(".slideshow-container").empty();
        	$("#pname").empty();
        	$("#pprice").empty();  
        	$("#pdes").empty();
        	$("#pldes").empty();
        	$("#pcate").empty();  
             $.ajax({
          type:'GET',
          url: link_url+'market/get_product_details/'+pid,
          success:function(result){
        	$(".spinner").empty();
        	//console.log(JSON.parse(result));
        	var product = JSON.parse(result);
        	var imgs = product.image
        	
        	imgs.forEach(function(img, index){
              let show = "";
              if(index == 0){
              	show = "block !important;";
              }else{
              	show = "none;";
              }
              $(".slideshow-container").append('<div class="mySlides" style="display:'+show+'"><img src="'+img+'" style="width: 100%;height: 300px;padding: 8px;"></div><a class="prev" onclick="plusSlides(-1)">&#10094;</a><a class="next" onclick="plusSlides(1)">&#10095;</a>');
            });
             $("#pname").html(product.name);
        	$("#pprice").html('$'+product.price);
        	$("#pcate").html(product.category);
        	$("#pdes").html(product.des);
        	$("#pldes").html(product.logdes);
        	$("#mcid").attr('data-cid', product.id);
          }

      });
            
             modal.modal('show');

  }

  //Add product to cart by function
  function addProductToCart(obj, cart_id){
    $(".spinner").html('<div style="z-index:2;"><img src="'+link_url+'assets/spinner.gif" style="width:50%height:50%;padding:12px;"></div>');
 
         var market = '<?php echo $market->name ; ?>';
         var token = '<?php _e( $this->security->get_csrf_hash() )?>';
         $.ajax({
          type:'POST',
          url: link_url+'market/add_customer_cart/'+cart_id,
          data:{token:token,id:cart_id,cid:cid,market:market,quantity:1,uid:uid},
        success:function(result){
          	$(".spinner").empty();
          	var dd = JSON.parse(result);
          if(dd.status == "success"){
              	//console.log(cid);
              	 $.ajax({
          type:'GET',
          url: link_url+'market/get_cart_by_customer/'+cid,
         success:function(data){
           $(".cart_holder").empty();
           $(".total").empty();
           var carts = JSON.parse(data);
           let total = 0.0;
           carts.forEach(function(list, index){
         
           	$(".cart_holder").append('<div class="col-lg-12" style="border:solid 1px #ffffff;padding-bottom:5px;"><div class="col-lg-12"><img src="'+list.product_image+'" style="width:100%;padding:5px 0;height:60px;"></div><div class="col-lg-12 text-white" style="text-align:center;padding:1px 0;"><span>'+list.product_name+'</span></div><div class="col-lg-12 text-white" style="text-align:center;padding:1px 0;"><span>$'+list.product_price+'</span><a href="#" style="float:right;" onclick="deleteProductFromCart(this,\''+list.id+'\')"><i class="far fa-trash-alt text-danger"></i></a></div></div>');
              total = parseFloat(total) + parseFloat(list.product_price);
             });
           $(".total").append("$"+total);
           $(".checkBtn").html('<button type="button" class="btn btn-success" onclick="showCheckoutModel(this,\''+cid+'\')">CHECKOUT</button>');
          },
         
      });
              }else{
              	console.log("fail");
              } 
          }
      });
  }

  // Delete Product from cart
  function deleteProductFromCart(obj, did){
$(".spinner").html('<div style="z-index:2;"><img src="'+link_url+'assets/spinner.gif" style="width:50%height:50%;padding:12px;"></div>');
 $.ajax({
          type:'GET',
          url: link_url+'market/delete_cart/'+did+'/'+cid,
         success:function(data2){
          if($.trim(data2)){
          $(".spinner").empty();
         	$(".cart_holder").empty();
           $(".total").empty();
           var cartsx = JSON.parse(data2);
           let total = 0.0;
           cartsx.forEach(function(listx, indexx){
           	$(".cart_holder").append('<div class="col-lg-12" style="border:solid 1px #ffffff;padding-bottom:5px;cursor:pointer"><div class="col-lg-12"><img src="'+listx.product_image+'" style="width:100%;padding:5px 0;height:60px;"></div><div class="col-lg-12 text-white" style="text-align:center;padding:1px 0;"><span>'+listx.product_name+'</span></div><div class="col-lg-12 text-white" style="text-align:center;padding:1px 0;"><span>$'+listx.product_price+'</span><a href="#" style="float:right;" onclick="deleteProductFromCart(this,\''+listx.id+'\')"><i class="far fa-trash-alt text-danger"></i></a></div></div>');
              total = parseFloat(total) + parseFloat(listx.product_price);
          })
           $(".total").append("$"+total);
         }else{
          $(".checkBtn").empty();
         }
       }

         });

  }

  //show checkout Model
 var tt = 0.0;

 function showCheckoutModel(obj, cid)
{
   var check_modal = $('#checkoutModel');
    $.ajax({
          type:'GET',
          url: link_url+'market/get_cart_by_customer/'+cid,
         success:function(response){
          $("#cartTable tbody").empty();
           $(".ch_total").empty();
           var ccx = JSON.parse(response);
           let total = 0.0;
           ccx.forEach(function(list, index){
           $("#cartTable tbody").append('<tr><td><img src="'+list.product_image+'" style="width:70px;height:40px;"></td><td>'+list.product_name+'</td><td>$'+list.product_price+'</td><td><button class="btn btn-danger" onclick="removeFromCartList(\''+list.id+'\')">Remove</button></td></tr>');
             total = parseFloat(total) + parseFloat(list.product_price);
             
           })
          $(".ch_total").append('<b>TOTAL: $'+total+'</b>');
          tt = total;
         }

       });
   check_modal.modal('show');
}

function removeFromCartList(did)
{
  $.ajax({
   type:'GET',
   url: link_url+'market/delete_cart/'+did+'/'+cid,
   success:function(data){
     $("#cartTable tbody").empty();
     $(".cart_holder").empty(); 
      $(".total").empty();
      $(".ch_total").empty();     
           var ccx = JSON.parse(data);
           let total = 0.0;
           let chTotal = 0.0;
           ccx.forEach(function(list, index){
           $("#cartTable tbody").append('<tr><td><img src="'+list.product_image+'" style="width:70px;height:40px;"></td><td>'+list.product_name+'</td><td>'+list.product_price+'</td><td><button class="btn btn-danger" onclick="removeFromCartList(\''+list.id+'\')">Remove</button></td></tr>');
           $(".cart_holder").append('<div class="col-lg-12" style="border:solid 1px #ffffff;padding-bottom:5px;cursor:pointer"><div class="col-lg-12"><img src="'+list.product_image+'" style="width:100%;padding:5px 0;height:60px;"></div><div class="col-lg-12 text-white" style="text-align:center;padding:1px 0;"><span>'+list.product_name+'</span></div><div class="col-lg-12 text-white" style="text-align:center;padding:1px 0;"><span>$'+list.product_price+'</span><a href="#" style="float:right;" onclick="deleteProductFromCart(this,\''+list.id+'\')"><i class="far fa-trash-alt text-danger"></i></a></div></div>'); 
           total = parseFloat(total) + parseFloat(list.product_price);
           chTotal = parseFloat(chTotal) + parseFloat(list.product_price);
           })
            $(".total").append("$"+total);
            $(".ch_total").append('<b>TOTAL: $'+chTotal+'</b>');
            tt = total; 
   }
       
        })
}

// Next Step and delivery

$('.nextStep').on('click', function () {
 var complete = true;
 var name = $("#name").val();
 var email = $("#email").val();
 var phone = $("#phone").val();
 var tele = $("#tele").val();
 var country = $("#country").val();
 var add1 = $("#add1").val();
 var add2 = $("#add2").val();
 if(name == ""){
  complete = false;
  alert("Please input your fullname");
 }
 if(email == ""){
  complete = false;
  alert("Please input your email");
 }
 if(phone == ""){
  complete = false;
  alert("Please input your Phone No");
 }
 if(country == ""){
  complete = false;
  alert("Please input your Country");
 }
 if(add1 == ""){
  complete = false;
  alert("Please input your Correct Address");
 }

 if(complete){
  var form_data = $("#formDetails").serialize();
  $("#tt").empty();
 $("#page1").hide();
  document.getElementById("page2").style.display = "block";
$("#tt").html("<b>$"+tt+"</b>");
let status = 1;
 $.ajax({
   type:'POST',
   url: link_url+'market/update_cart/'+cid+'/'+status,
   data:  form_data,
   success:function(data){
    //console.log(data);
   }

 });

 }

})

// back to step

$('.backStep').on('click', function () {
//document.getElementById("page1").style.display = "block";
$("#page1").show();
  document.getElementById("page2").style.display = "none";
  document.getElementById("stripe_holder_c").style.display = "none"
  $(".st_payment").show(); 
})

$('.st_payment').on('click', function () {
  $(".st_payment").hide();
  document.getElementById("stripe_holder_c").style.display = "block" 
})

    </script>

<script>
	let slideIndexx = 1;
showSlides(slideIndexx);

// Next/previous controls
function plusSlides(n) {
	console.log(n);
  showSlides(slideIndexx += n);
}

// Thumbnail image controls
function currentSlide(n) {
  showSlides(slideIndexx = n);
}

function showSlides(n) {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  //let dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndexx = 1}
  if (n < 1) {slideIndexx = slides.length}
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
  // for (i = 0; i < dots.length; i++) {
  //   dots[i].className = dots[i].className.replace(" active", "");
  // }
  slides[slideIndexx-1].style.display = "block";
  //dots[slideIndexx-1].className += " active";
}

</script>

<script

src="https://www.paypal.com/sdk/js?client-id=sb&currency=USD"> // Required. Replace YOUR_CLIENT_ID with your sandbox client ID.

</script>

<script>


  paypal.Buttons({
    
    createOrder: function(data, actions) {
      // This function sets up the details of the transaction, including the amount and line item details.
     return actions.order.create({
        purchase_units: [{
          amount: {
           
            value: tt,
          }
        }],
        application_context: {
                            shipping_preference: "NO_SHIPPING"
                        }
      });
    },
    onApprove: function(data, actions) {
      // This function captures the funds from the transaction.
      return actions.order.capture().then(function(details) {
        // This function shows a transaction success message to your buyer.
       
        let status = 2;
 $.ajax({
   type:'GET',
   url: link_url+'market/update_cart_done/'+cid+'/'+status,
   success:function(data){
    $("#payment-success").empty();
    var infos = JSON.parse(data);
         let tno = infos[0].customer_id; 
         
           let total = 0.0;
           infos.forEach(function(list, index){
             total = parseFloat(total) + parseFloat(list.product_price);
           });
           document.getElementById("payment-success").style.zIndex = 21474836;
            $("#payment-success").append('<div class="col-lg-12" style="margin:12px 0 0 25px;"><h4 style="margin-left:15%" class="text-success">Transaction Successful</h4><div><span><strong>Transaction ID: </strong>'+infos[0].customer_id+'</span></div><div><span><strong>Total: </strong>$'+total+'</span></div><div><span><strong>Transaction Name: </strong>'+details.payer.name.given_name+'</span></div><div><span><strong>Customer Name: </strong>'+infos[0].name+'</span></div><div><span><strong>Customer Email: </strong>'+infos[0].email+'</span></div><div><span><strong>Customer Phone No: </strong>'+infos[0].phone_no+'</span></div><div><span><strong>Customer Address: </strong>'+infos[0].add1+'</span></div><div class="p-3"><a href="<?php echo base_url().$market->name;  ?>"><strong>Back To Home</strong></a></div></div>');
             
           

            // alert('Transaction completed by: ' + details.payer.name.given_name+'<br>Transaction-id: ');
   }

 });
      });
    } 
  }).render('#paypal-button-container');
  //This function displays Smart Payment Buttons on your web page.
</script>

<script type="text/javascript" src="https://js.stripe.com/v2/"></script>
<script type="text/javascript">
  $(function () {
    var $stripeForm = $(".form-validation");
    $('form.form-validation').bind('submit', function (e) {
      var $stripeForm = $(".form-validation"),
        inputSelector = ['input[type=email]', 'input[type=password]',
          'input[type=text]', 'input[type=file]',
          'textarea'
        ].join(', '),
        $inputs = $stripeForm.find('.required').find(inputSelector),
        $errorMessage = $stripeForm.find('div.error'),
        valid = true;
      $errorMessage.addClass('hide');
      $('.has-error').removeClass('has-error');
      $inputs.each(function (i, el) {
        var $input = $(el);
        if ($input.val() === '') {
          $input.parent().addClass('has-error');
          $errorMessage.removeClass('hide');
          e.preventDefault();
        }
      });
      if (!$stripeForm.data('cc-on-file')) {
        e.preventDefault();
        Stripe.setPublishableKey($stripeForm.data('stripe-publishable-key'));
        Stripe.createToken({
          number: $('.card-number').val(),
          cvc: $('.card-cvc').val(),
          exp_month: $('.card-expiry-month').val(),
          exp_year: $('.card-expiry-year').val()
        }, stripeResponseHandler);
      }
    });
    function stripeResponseHandler(status, res) {
      if (res.error) {
        $('.error')
          .removeClass('hide')
          .find('.alert')
          .text(res.error.message);
      } else {
        var token = res['id'];
        $stripeForm.find('input[type=text]').empty();
        $stripeForm.append("<input type='hidden' name='stripeToken' value='" + token + "'/>");
        
    //   $.ajax({
    // method: "POST",
    // url: '/secure/handlePayment',
    // data:{token:token},
    // success: function(data){
    //   console.log(data);  
    // }
    // });
        $stripeForm.get(0).submit();
      }
    }
  });
</script>
    <!--scripts end here-->
    </body>

</html>
