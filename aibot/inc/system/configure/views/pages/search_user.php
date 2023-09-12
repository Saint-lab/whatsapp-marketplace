<?php //if(get_data($resultt, "oto_4") == 1) : ?>
<div class="row">
    <div class="col-md-12">
        <div >
            <div class="card-header">
                <div class="card-title"><i class="far fa-user text-info"></i> <?php _e("User Search")?></div>
            </div>
            <!-- <div class="card-body"> -->
               <table  style=" border-collapse: collapse;
    margin: 10px 0;
    font-size: 0.9em;
    font-family: sans-serif;
    min-width: 400px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);">
               
               <thead style="
                background-color: #00004d;
    color: #ffffff;
    text-align: center;
               "><tr style=" background-color: #333333;
    color: #ffffff;
    text-align: center;border-bottom: thin solid #dddddd;">
                   <th style="padding: 12px 15px;">S/N</th>
                    <th style="padding: 12px 15px;">Name</th>
                    <th style="padding: 12px 15px;"> Email</th>
                    <th style="padding: 12px 15px;">CREATED</th>
                    <th style="padding: 12px 15px;">PACKAGE</th>
                     <th style="padding: 12px 15px;">STATUS</th>
                      <th style="padding: 12px 15px;">ACTIONS</th>
                      </tr>
               </thead>
               <tbody style="border-bottom: thin solid #dddddd;"><?php $num = 1;?>
                <?php //foreach($resultd as $key =>  $result) : 
                $option = $result->status; 
               ?>
                  <tr style=" background-color: #e6e6e6;
    color: #4d4d4d;
    text-align: center;">
                    <td style="text-align:center;padding: 12px 15px;"><?php echo $num; ?></td>
                    <td style="text-align:center;padding: 12px 15px;"><?php _e($result->fullname)?></td>
                    <td style="text-align:center;padding: 12px 15px;"><?php _e($result->email)?></td>
                    <td style="text-align:center;padding: 12px 15px;"><?php _e($result->created)?></td>
                    <td style="text-align:center;padding: 12px 15px;"><?php _e($result->package)?></td>	
					<td style="text-align:center;padding: 12px 15px;">
					    <?php $status = ($result->status ==2)?'Active':'Deactivate';
					    if($result->status ==2){
					    echo '<span style="color:green;"><strong>'.$status.'</strong></span>'; }
					    if($result->status==1){
                        echo '<span style="color:#222;"><strong>'.$status.'</strong></span>'; }
                        if($result->status ==0){
                            echo '<span style="color:#222;"><strong> Banned </strong></span>'; }
					    ?>
					</td>								
                    <td style="text-align:center;padding: 12px 15px;">
                    <div class="btn-group">
						  	<button type="button" class="btn dropdown-toggle" data-toggle="dropdown"><i class="fas fa-ellipsis-h"></i></button>
						  	<div class="dropdown-menu dropdown-menu-anim">
							    <a 
							    	class="dropdown-item actionItem" 
							    	data-result="html" 
			    					data-content="column-two"
							    	href="<?php _e( get_module_url('index/edit_user/'.$result['id']) )?>"
			    					data-history="<?php _e( get_module_url('index/edit_user/'.get_data($result, 'ids') ) )?>" 
			    					data-call-after="Core.date();"
							    ><i class="far fa-edit"></i> <?php _e('Edit')?></a>
							    <!-- <a class="dropdown-item actionItem" href="<?php// _e( get_module_url('view/'.get_data($row, 'ids') ) )?>" data-redirect="<?php// _e( get_url("dashboard") )?>"><i class="far fa-eye"></i> <?php// _e('Deactivate')?></a> -->
							    <a class="dropdown-item actionItem" href="<?php _e( get_module_url('delete/'.$result['id'] ) )?>" data-id="<?php _e( get_data($result, 'ids') )?>" data-confirm="<?php _e('Are you sure to delete this User?')?>" data-remove="item"><i class="far fa-trash-alt"></i> <?php _e('Delete')?></a>
						  	</div>
						</div>
                    </td>
                    
                  </tr>
                 
                  <?php //$num++; ?>
                   <?php // endforeach; ?>
                  </tbody>
                  </table>
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