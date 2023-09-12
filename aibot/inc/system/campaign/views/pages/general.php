<div class="row">
    <div class="col-md-12">
        <div >
            <div class="card-header">
                <div class="card-title" style="display: inline-block;"><i class="fa fa-book text-success"></i> <?php _e("Campaign")?></div>
                <div style="display: inline-block;float: right;">
                  <button class="btn btn-primary text-white removeBtn">Create Campaign</button>
                </div>
            </div>
            <br>
             <?php if($cams !=null){  ?>
              <div class="row">
                <div class="col-md-10" style="margin-left: 5%;">
                  <select class="form-control" name="cam" id="cam">
                    <option disabled="true" selected="true">Select Campaign</option>
                     <?php foreach ($cams as $key => $cam) {
                       ?>
                       <option value="<?= $cam->id ?>"><?= $cam->name ?></option>
                     <?php } ?>
                  </select>
                </div>

              </div>

             <?php }else { 
              echo "<div style='width:60%;margin-left:20%;padding:12px;' class='bg-warning text-white'><span style='padding:10px 25px;'>You Have Not Create Any Campaign</span></div>";
              } ?>
               
        </div>  
             
    </div>
                           </div>


           <div class="row">
              <div class="col-md-12">
                <div class="card">
                
                  <div class="card-body">
                
                    <div class="row" style="display: flex;flex-wrap:wrap;padding: 5px 0 10px 0" id="wraper">


         </div>
         </div>
         </div>
         </div>
         </div>                           


   
   <div id="removeModal" class="modal fade" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                      <h5 class="modal-title">Campaign</h5>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                <?php echo form_open_multipart('leads/save_cam')?>
                <div class="row"><div class="col-md-10" style="margin-left: 10px;">
                  <div class="form-group">
                        <label for="name"><?php _e('Campaign Name')?><small class="text-danger">*</small></label>
                        <input type="text" class="form-control" id="name" name="name" value="" required="true">
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

               $(document).ready(function() {
                 var load_link = '<?php echo base_url().'Campaign/getcam'?>';
       $.ajax({
            type: "GET",
            async: true,
            url:  load_link,
            success: function(data) {
            $("#wraper").empty();
              $.each(JSON.parse(data), function(index, list){
                console.log(list);
                $("#wraper").append('<div class="card mb-2" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);width: 220px;margin: auto;text-align: justiy;font-family: arial;padding: 5px 0px 30px 0px;background-color:#f7f7f7"><img src="'+list.img+'" alt="Image" style="width:90%;height:130px;margin: 5px 0 0 15px;"><div style="margin:5px 0 0 15px"><span><b>Name: </b>'+list.name+'</span><br><span><b>Phone: </b>'+list.phone+'</span><p><b>Location: </b>'+list.location+' '+list.country+'<br><span><b>Alias: </b>'+list.alias+'</span><p><b>Site: </b><a href="'+list.site+'" target="_black">'+list.site+'</a></p><p><a href="https://web.whatsapp.com/send?phone='+list.phone+'" class="btn btn-success p-1" target="_black">Connect On Whatsapp</a></p></div></div>');
              });
            }

          });
    });
               $('.removeBtn').on('click', function () {
                var modal = $('#removeModal');
                
                modal.modal('show');
            });


                $("select[name='cam']").change(function(){
  var cam = $("select[name='cam']").val();
   var url_load = '<?php echo base_url().'Campaign/getleads'?>';
    $.ajax({
            type: "GET",
            async: true,
            url:  url_load+'/'+cam,
            success: function(data) {
             $("#wraper").empty();
              $.each(JSON.parse(data), function(index, list){
                console.log(list);
                $("#wraper").append('<div class="card mb-2" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);width: 220px;margin: auto;text-align: justiy;font-family: arial;padding: 5px 0px 30px 0px;background-color:#f7f7f7"><img src="'+list.img+'" alt="Image" style="width:90%;height:130px;margin: 5px 0 0 15px;"><div style="margin:5px 0 0 15px"><span><b>Name: </b>'+list.name+'</span><br><span><b>Phone: </b>'+list.phone+'</span><p><b>Location: </b>'+list.location+' '+list.country+'<br><span><b>Alias: </b>'+list.alias+'</span><p><b>Site: </b><a href="'+list.site+'" target="_black">'+list.site+'</a></p><p><a href="https://web.whatsapp.com/send?phone='+list.phone+'" class="btn btn-success p-1">Connect On Whatsapp</a></p></div></div>');
              });
            }

          });

  });
            </script>                         

                           