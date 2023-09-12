<div class="subheadline wrap-m">
	
	<div class="sh-main wrap-c">
		<div class="sh-title text-info fs-18 fw-5"><i class="far fa-edit"></i> <?php _e('Edit Market Place')?></div>
	</div>
	<div class="sh-toolbar wrap-c">
		<div class="btn-group" role="group">
	    	<a 
	    		class="btn btn-label-info actionItem" 
	    		data-result="html" 
	    		data-content="column-two"
	    		data-history="<?php _e( get_module_url() )?>" 
	    		href="<?php _e( get_module_url() )?>"
	    	>
	    		<i class="fas fa-chevron-left"></i> <?php _e('Back')?>
	    	</a>
		</div>
	</div>

</div>

<div class="m-t-10">
	<?php echo form_open_multipart( 'market_place/save/'.segment(4) )?>
		
		<div class="row">
			<div class="col-md-8" style="margin-left: 10%;">
			
				  <div class="form-group">
				    	<label for="fullname"><?php _e('Name')?></label>
				    	<input type="text" class="form-control" id="name" name="name" value="<?php _e( get_data($result, 'name') )?>" required>
				  	</div>
				  	<div class="form-group">
				  		<img src="<?php _e( base_url().get_data($result, 'logo') )?>" style="width: 50%;height: 120px;padding: 5px 5px 12px 5px;"><br>
				    	<label for="logo"><?php _e('Logo')?></label>
				    	<input type="file" class="form-control" id="logo" name="logo">
				  	</div>
				  
				  	
				  
				  	<button type="submit" class="btn btn-primary"><?php _e('Submit')?></button>
				<br><br>
			</div>
		</div>

	 <?php echo form_close(); ?>

</div>