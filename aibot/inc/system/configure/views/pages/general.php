<?php //if(get_data($resultt, "oto_4") == 1) : ?>
<div class="row">
    <div class="col-md-12">
        <div >
            <div class="card-header">
                <div class="card-title"><i class="far fa-user text-info"></i> <?php _e("Paypal Payment Key")?></div>
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
              <?php echo form_open_multipart( 'payment_key/paypal')?>
                <label for="paypal_key" style=";margin-left:20px;"> Your Paypal Client_ID Key: </label> 
  <div class="col-md-10">
    <input type="text" name="api_key" class="form-control" value="<?php echo (isset($paypal->paypal_client_id))?$paypal->paypal_client_id:''; ?>" required=""/>
    <small class="form-text text-muted">
    To generate Paypal API credentials for the live payment:
 Log in to the Developer Dashboard with your PayPal account.
Under the DASHBOARD menu, select My Apps & Credentials.
Make sure you're on the live tab to get Your live Paypal Client_ID Key. Copy it and paste it here, then click submit
    </small>
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
                           </div> 