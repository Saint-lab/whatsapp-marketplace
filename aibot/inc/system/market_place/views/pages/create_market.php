<div class="row">
    <div class="col-md-8" style="">
        <div >
            <div class="card-header">
                <div class="card-title "><i class="fas fa-unlock-alt text-info"></i> <?php _e("Create Your Market Place")?></div>
            </div>
       
            <div class="card-body">
                <?php if($this->session->flashdata("market_fail")): ?> 
    <div class='alert alert-danger alert-dismissible'>
      <button class='close' data-dismiss='alert'>&times;</button>
      <strong>Fail</strong> <?php echo $this->session->flashdata("market_fail"); ?>
    </div>  
 <?php endif; ?>
               <?php echo form_open_multipart('market_place/ajax_create_market')?>
                    <div class="form-group">
                        <label for="current_password"><?php _e('Market Name')?></label>
                        <input type="text" class="form-control" id="name" name="name" value="" required="true">
                    </div>   
                    <div class="form-group">
                        <label for="logo"><?php _e('Market Logo')?></label>
                        <input type="file" class="form-control" id="logo" name="logo" value="">
                    </div> 
                    
                    <button type="submit" class="btn btn-info"><?php _e("Create")?></button>
                <?php echo form_close(); ?>

            </div>
        </div>  
    </div>
</div>