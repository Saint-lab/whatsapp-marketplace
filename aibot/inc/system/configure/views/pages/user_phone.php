<div class="row">
    <div class="col-md-12">
        <div >
            <div class="card-header">
                <div class="card-title" style="display: inline-block;"><i class="fas fa-sync text-success"></i> <?php _e("Whatsapp Payment")?></div>
                <div style="display: inline-block;float: right;">
                  <button class="btn btn-primary text-white removeBtn">Add Phone No</button>
                </div>
            </div>
            <?php if($this->session->flashdata("phone_success")): ?> 
    <div class='alert alert-success alert-dismissible'>
      <button class='close' data-dismiss='alert'>&times;</button>
      <strong>Success</strong> <?php echo $this->session->flashdata("phone_success"); ?>
    </div>  
 <?php endif; ?>
 <?php if($this->session->flashdata("phone_fail")): ?> 
    <div class='alert alert-danger alert-dismissible'>
      <button class='close' data-dismiss='alert'>&times;</button>
      <strong>Fail</strong> <?php echo $this->session->flashdata("phone_fail"); ?>
    </div>  
 <?php endif; ?>
            <br>
             <?php if($result !=null){  ?>
              <div class="row">
                <div class="col-md-10" style="margin-left: 5%;">
                  <h5 class="bg-success text-white p-3" style="text-align: center;padding: 8px;"><?php echo $result->no ?></h5>
                </div>

              </div>

             <?php }else { 
              echo "<div style='width:60%;margin-left:20%;padding:12px;' class='bg-warning text-white'><span style='padding:10px 25px;'>Add Your Whatsapp Payment Phone No</span></div>";
              } ?>
               
        </div>  
             
    </div>
                           </div>


                                    


   
   <div id="removeModal" class="modal fade" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title">Whatsapp Phone No</h5>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                <?php echo form_open_multipart('configure/save_no')?>
                <div class="row"><div class="col-md-10" style="margin-left: 10px;">
                  <div class="form-group">
                        <label for="name"><?php _e('Phone No')?><small class="text-danger">*</small></label>
                        <input type="number" class="form-control" id="num" name="num" value="" required="true">
                        <small>
                   Use: Your business number without Country Code 
                   </small>
                    </div> 
                </div></div>
<div class="modal-footer">
    <button type="submit" class="btn btn-primary">Submit</button>                        
  </div>
   <?php echo form_close(); ?>
  </div>
                 
                </div>
            </div>

<script type="text/javascript">
	
	$('.removeBtn').on('click', function () {
                var modal = $('#removeModal');
                
                modal.modal('show');
            });

</script>
                                 

                           