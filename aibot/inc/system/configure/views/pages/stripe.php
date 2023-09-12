<?php //if(get_data($resultt, "oto_4") == 1) : ?>
<div class="row">
    <div class="col-md-12">
        <div >
            <div class="card-header">
                <div class="card-title"><i class="far fa-user text-info"></i> <?php _e("Stripe Payment Key")?></div>
            </div>
            <?php if($this->session->flashdata("paypal_key_success")): ?> 
    <div class='alert alert-success alert-dismissible'>
      <button class='close' data-dismiss='alert'>&times;</button>
      <strong>Success</strong> <?php echo $this->session->flashdata("paypal_key_success"); ?>
    </div>  
 <?php endif; ?>
 <?php if($this->session->flashdata("paypal_key_fail")): ?> 
    <div class='alert alert-danger alert-dismissible'>
      <button class='close' data-dismiss='alert'>&times;</button>
      <strong>Fail</strong> <?php echo $this->session->flashdata("paypal_key_fail"); ?>
    </div>  
 <?php endif; ?>
 <?php if($this->session->flashdata("paypal_key_exist")): ?> 
    <div class='alert alert-warning alert-dismissible'>
      <button class='close' data-dismiss='alert'>&times;</button>
      <strong>Warning</strong> <?php echo $this->session->flashdata("paypal_key_exist"); ?>
    </div>  
 <?php endif; ?>
            <div class="card-body">
              <?php echo form_open_multipart( 'payment_key/stripe')?>
                <label for="paypal_key" style=";margin-left:20px;">Your Stripe publishable Key:</label> 
  <div class="col-md-8">
    <input type="text" name="stripe_public" class="form-control" value="<?php echo (isset($stripe->stripe_public))?$stripe->stripe_public:''; ?>" required=""/>
 </div>
 <br>
 <label for="paypal_key" style=";margin-left:20px;">Your Stripe Secret Key:</label> 
  <div class="col-md-8">
    <input type="text" name="stripe_secret" class="form-control" value="<?php echo (isset($stripe->stripe_secret))?$stripe->stripe_secret:''; ?>" required=""/>
 </div>
<br>
<div class="col-md-3">
    <button class="btn btn-success form-control" name="submit_api" type="submit">
<i class="fas fa-share-square"></i> Submit
</button> 
  </div>
              <?php echo form_close(); ?> 
             </div> 
            
        </div>  
    </div>
                           </div> <?php// endif; ?>