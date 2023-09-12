<?php //if(get_data($resultt, "oto_4") == 1) : ?>
<div class="row">
    <div class="col-md-12">
        <div >
            <div class="card-header">
                <div class="card-title"><i class="fa fa-shopping-basket text-success"></i> <?php _e("Product List")?></div>
            </div>
            <br>
            <?php if($resultd !=null){  ?>
              <div class="table-responsive--sm table-responsive">
                <table  style=" border-collapse: collapse;
    margin-left: 5px;
    font-size: 0.9em;
    font-family: sans-serif;
    width: 100%;
    overflow: :scroll; 
    box-shadow: 0 0 12px rgba(0, 0, 0, 0.15);">
               
               <thead style="
                background-color: #00004d;
    color: #ffffff;
    text-align: center;
               "><tr style=" background-color: #333333;
    color: #ffffff;
    text-align: center;border-bottom: thin solid #dddddd;">
                   <!-- <th style="padding: 12px 15px;">S/N</th> -->
                    <th style="padding: 12px 15px;">Product Name</th>
                    <th style="padding: 12px 15px;">Price</th>
                    <th style="padding: 12px 15px;">Short Description</th>
                    <th style="padding: 12px 15px;">Image</th>
                    <th style="padding: 12px 15px;">Market</th>
                    <th style="padding: 12px 15px;">Feature</th>
                   <th style="padding: 12px 15px;">ACTIONS</th>
                      </tr>
               </thead>
               <tbody style="border-bottom: thin solid #dddddd;">
                <?php foreach($resultd as $key =>  $result) : 
                  $img = json_decode($result['image'], true);
                                  
               ?>
                  <tr style=" background-color: #e6e6e6;
    color: #4d4d4d;
    text-align: center;text-align: 18px;">
                    
                    <td style="text-align:center;padding: 12px 15px;"><?php _e($result['name'])?></td>
                     <td style="text-align:center;padding: 12px 15px;">$<?php _e($result['price'])?></td>
                      <td style="text-align:center;padding: 12px 15px;"><?php _e($result['des'])?></td>
            <td style="text-align:center;padding: 12px 15px;">
					   <img src="<?php echo base_url().$img[0]; ?>" style="width: 80%;height: 50px;padding: 5px;">
					</td>	
          <td style="text-align:center;padding: 12px 15px;">
            <?php echo product_market($result['mid']); ?>
          </td>
          <td style="text-align:center;padding: 12px 15px;">
            <?php if($result["feature"] == 0){
              echo "No";
            }else{
              echo "Yes";
            }   ?>
          </td>							
                    <td style="text-align:center;padding: 12px 15px;">
                    <div class="btn-group">
						  	<button type="button" class="btn dropdown-toggle" data-toggle="dropdown"><i class="fas fa-ellipsis-h"></i></button>
						  	<div class="dropdown-menu dropdown-menu-anim">
							    <a 
							    	class="dropdown-item actionItem" 
							    	data-result="html" 
			    					data-content="column-two"
							    	href="<?php _e( get_module_url('index/edit_product/'.$result['id']) )?>"
			    					data-history="<?php _e( get_module_url('index/edit_product/'.get_data($result, 'id') ) )?>" 
			    					data-call-after="Core.date();"
							    ><i class="far fa-edit text-success"></i> <?php _e('Edit')?></a>
							    <a class="dropdown-item actionItem" href="<?php _e( get_module_url('delete/'.$result['id'] ) )?>" data-id="<?php _e( get_data($result, 'id') )?>" data-confirm="<?php _e('Are you sure to delete this Product?')?>" data-remove="item"><i class="far fa-trash-alt text-danger"></i> <?php _e('Delete')?></a>
						  	</div>
						</div>
                    </td>
                    
                  </tr>
                 
                 
                   <?php  endforeach; ?>
                  </tbody>
                  </table>
                 </div>
                 <?php }else{
                  echo "<div style='width:60%;margin-left:20%;padding:12px;' class='bg-warning text-white'><span style='padding:10px 25px;'>You have not Add Any Product</span></div>";
                 } ?> 
                 <!-- <form class="actionForm" action="<?php// _e( get_module_url("ajax_account") )?>">
                    <div class="form-group">
                        <label for="fullname"><?php //_e('Fullname')?></label>
                        <input type="text" class="form-control" id="fullname" name="fullname" value="<?php //_e($result->fullname)?>">
                    </div>   
                    <div class="form-group">
                        <label for="email"><?php //_e('Email')?></label>
                        <input type="text" class="form-control" id="email" name="email" <?php //_e( !get_option('signup_change_email_status', 0)?"disabled":"" )?> value="<?php //_e($result->email)?>">
                    </div> 
                    <div class="form-group">
                        <label for="timezone"><?php// _e('Timezone')?></label>
                        <select name="timezone" class="form-control">
                            <?php //if(!empty(tz_list())){
                           // foreach (tz_list() as $zone => $time) {
                            ?>
                            <option value="<?php// _e( $zone )?>" <?php// _e( $zone == $result->timezone?"selected":"" )?>><?php //_e( $time )?></option>
                            <?php// }}?>
                        </select>
                    </div> 

                    <button type="submit" class="btn btn-info"><?php// _e("Save")?></button>
                </form> -->
<!-- 
            </div> -->
        </div>  
    </div>
                           </div> <?php// endif; ?>