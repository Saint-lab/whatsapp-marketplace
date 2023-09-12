<div class="row">
    <div class="col-md-6">
        <div >
            <div class="card-header">
                <div class="card-title "><i class="fas fa-unlock-alt text-info"></i> <?php _e("Create User Account")?></div>
            </div>
            <div class="card-body">
                <form class="actionForm" action="<?php _e( get_module_url("ajax_create_user") )?>" data-redirect="<?php _e( get_module_url() )?>">
                    <div class="form-group">
                        <label for="current_password"><?php _e('Fullname')?></label>
                        <input type="text" class="form-control" id="fullname" name="fullname" value="">
                    </div>   
                    <div class="form-group">
                        <label for="email"><?php _e('Email')?></label>
                        <input type="email" class="form-control" id="email" name="email" value="">
                    </div> 
                    <div class="form-group">
                        <label for="password"><?php _e('Password')?></label>
                        <input type="password" class="form-control" id="password" name="password" value="">
                    </div> 
                    <div class="form-group">
                        <label for="confirm_password"><?php _e('Confirm password')?></label>
                        <input type="password" class="form-control" id="confirm_password" name="confirm_password" value="">
                    </div>
                    <div class="form-group">
                    <label for="timezone"><?php _e('Timezone')?></label>
						  	<select name="timezone" class="form-control auto-select-timezone" aria-describedby="basic-addon-timezone">
		                        <?php if(!empty(tz_list())){
		                        foreach (tz_list() as $zone => $time) {
		                        ?>
		                        <option value="<?php _e( $zone )?>"><?php _e( $time )?></option>
		                        <?php }}?>
		                    </select>
						</div> 
                    <div class="form-group">
                        <label for="User Plan"><strong><?php _e('User Plan')?></strong></label>
                        <div class="form-group wrap-m">
						<div class="wrap-c">
							<label class="i-checkbox i-checkbox--tick i-checkbox--brand m-r-10" style="margin-left:10px">
								<input type="checkbox" name="fe" value="1" checked><?php _e('FE (Basic)')?><span></span>
							</label>
						<br>
                        <label class="i-checkbox i-checkbox--tick i-checkbox--brand m-r-10" style="margin-left:10px">
								<input type="checkbox" name="unlimited" value="1"> <?php _e('Unlimited')?><span></span>
							</label>
						</div>
					</div>
                    </div> 
                    <button type="submit" class="btn btn-info"><?php _e("Save")?></button>
                </form>

            </div>
        </div>  
    </div>
</div>