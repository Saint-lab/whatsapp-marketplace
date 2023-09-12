<?php //if(get_data($resultt, "oto_4") == 1) : ?>
<div class="row">
    <div class="col-md-12">
        <div >
            <div class="card-header">
                <div class="card-title"><i class="fa fa-sitemap text-warning"></i> <?php _e("MY MARKET PLACE")?></div>
            </div>
            <br>
            <?php if($resultd !=null){  ?>
              <div class="table-responsive--sm table-responsive">
                <table  style=" border-collapse: collapse;
    margin-left: 10px;
    font-size: 0.9em;
    font-family: sans-serif;
    width: 95%;
    box-shadow: 0 0 12px rgba(0, 0, 0, 0.15);">
               
               <thead style="
                background-color: #00004d;
    color: #ffffff;
    text-align: center;
               "><tr style=" background-color: #333333;
    color: #ffffff;
    text-align: center;border-bottom: thin solid #dddddd;">
                   <th style="padding: 12px 15px;">S/N</th>
                    <th style="padding: 12px 15px;">NAME</th>
                    <th style="padding: 12px 15px;">URL</th>
                    <th style="padding: 12px 15px;">LOGO</th>
                   <th style="padding: 12px 15px;">ACTIONS</th>
                      </tr>
               </thead>
               <tbody style="border-bottom: thin solid #dddddd;">
                <?php foreach($resultd as $key =>  $result) : 
                $option = $result['status']; 
               ?>
                  <tr style=" background-color: #e6e6e6;
    color: #4d4d4d;
    text-align: center;text-align: 18px;">
                    <td style="text-align:center;padding: 12px 15px;"><?php echo $key+1; ?></td>
                    <td style="text-align:center;padding: 12px 15px;"><?php _e($result['name'])?></td>
                   <td style="text-align:center;padding: 12px 15px;">
                     <a href="<?php echo base_url().$result['name']; ?>" target="_black"><?php echo base_url().$result['name']; ?></a>
                    </td>	
					<td style="text-align:center;padding: 12px 15px;">
					   <img src="<?php echo base_url().$result['logo'] ?>" style="width: 80%;height: 50px;padding: 5px;">
					</td>								
                    <td style="text-align:center;padding: 12px 15px;">
                    <div class="btn-group">
						  	<button type="button" class="btn dropdown-toggle" data-toggle="dropdown"><i class="fas fa-ellipsis-h"></i></button>
						  	<div class="dropdown-menu dropdown-menu-anim">
							    <a 
							    	class="dropdown-item actionItem" 
							    	data-result="html" 
			    					data-content="column-two"
							    	href="<?php _e( get_module_url('index/edit_market/'.$result['id']) )?>"
			    					data-history="<?php _e( get_module_url('index/edit_market/'.get_data($result, 'id') ) )?>" 
			    					data-call-after="Core.date();"
							    ><i class="far fa-edit"></i> <?php _e('Edit')?></a>
							    <!-- <a class="dropdown-item actionItem" href="<?php// _e( get_module_url('view/'.get_data($row, 'ids') ) )?>" data-redirect="<?php// _e( get_url("dashboard") )?>"><i class="far fa-eye"></i> <?php// _e('Deactivate')?></a> -->
							    <a class="dropdown-item actionItem" href="<?php _e( get_module_url('delete/'.$result['id'] ) )?>" data-id="<?php _e( get_data($result, 'id') )?>" data-confirm="<?php _e('Are you sure to delete this Market Place?')?>" data-remove="item"><i class="far fa-trash-alt"></i> <?php _e('Delete')?></a>
						  	</div>
						</div>
                    </td>
                    
                  </tr>
                 
                 
                   <?php  endforeach; ?>
                  </tbody>
                  </table>
                 </div>
                 <?php }else{
                  echo "<div style='width:60%;margin-left:20%;padding:12px;' class='bg-warning text-white'><span style='padding:10px 25px;'>You have not create any Market Place</span></div>";
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