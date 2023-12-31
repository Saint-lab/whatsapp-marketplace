<div class="p-25 wa-bulk-update p-25">
	<h4 class="mb-4 d-flex">
		<div class="d-block d-lg-none mr-2">
			<a href="javascript:void(0);" class="user-chat-remove wa-back-submenu text-muted fs-16 p-2">
				<i class="ri-arrow-left-s-line"></i>
			</a>
		</div>
		<div><?php _e('Create campaign')?></div>
	</h4>

	<div class="row">
		<div class="col-md-12 post">
			<form class="actionForm post-create p-t-10" action="<?php _e( get_module_url("bulk_save") )?>" data-call-after="WhatsappJs.reload_bulk_schedules(result);">
				<div class="post-content m-b-15">
					<?php if(!empty($item)){?>
						<input type="hidden" class="form-control" name="ids" required="" value="<?php _e( $item->ids )?>">
					<?php }?>
					<input type="hidden" class="form-control" name="instance_id" required="" value="<?php _e( $instance_id )?>">
					<div class="form-group">
						<input class="form-control" name="name" required="" placeholder="<?php _e("Campaign name")?>">
					</div>
					<div class="form-group">
						<select class="form-control" name="group" required="">
							<option value=""><?php _e("Select contact group")?></option>
							<?php if(!empty($groups)){
								foreach ($groups as $key => $value) {
							?>
							<option value="<?php _e($value->id)?>"><?php _e($value->name)?></option>
							<?php }}?>
						</select>
					</div>


					<nav class="mt-3">
			            <div class="nav nav-tabs" id="nav-tab" role="tablist">
			                <label for="option_send_message" class="nav-item nav-link radio-tab <?php _e( ( get_data($item, 'cate')==1 || empty($item) )?"active text-primary":"" ) ?>" data-toggle="tab" href="#nav_send_menssage" role="tab">
			                    <input class="d-none" type="radio" name="cate" id="option_send_message" <?php _e( ( get_data($item, 'cate')==1 || empty($item) )?'checked="true"':"" ) ?> value="1">
			                    <?php _e("Text & Media")?>
			                </label> 
			                <?php if( _p("whatsapp_button_status") ){?>
			                <label for="option_send_button" class="nav-item nav-link radio-tab <?php _e( get_data($item, 'cate')==2?"active text-primary":"") ?>" data-toggle="tab" href="#nav_send_button" role="tab">
			                    <input class="d-none" type="radio" name="cate" id="option_send_button" value="2" <?php _e( get_data($item, 'cate')==2?'checked="true"':"") ?> >
			                    <?php _e("Buttons")?>
			                </label>
			                <?php }?>
			            	<?php if( _p("whatsapp_list_message_status") ){?>
			                <label for="option_send_list" class="nav-item nav-link radio-tab <?php _e( get_data($item, 'cate')==3?"active text-primary":"") ?>" data-toggle="tab" href="#nav_send_list" role="tab">
			                    <input class="d-none" type="radio" name="cate" id="option_send_list" value="3" <?php _e( get_data($item, 'cate')==3?'checked="true"':"") ?> >
			                    <?php _e("List message")?>
			                </label>
			                <?php }?>
			            </div>
			        </nav>

			        <div class="tab-content pt-3" id="nav-tabContent">
			        	<div class="tab-pane fade <?php _e( ( get_data($item, 'cate')==1 || empty($item) )?"show active":"" ) ?>" id="nav_send_menssage" role="tabpanel">
				            <?php if( _p("whatsapp_bulk_media") ){?>
					            <?php _e( $file_manager, false) ?>
						    <?php }?>
							<div class="post">
						        <div class="post-content">
					                <?php _e( $block_caption, false)?>
					                <ul class="text-success small m-b-0 m-t-3">
					                	<li><?php _e("Add custom variables: %name%, %param1%, %param2%,...")?></li>
			                            <li><?php _e("Random message by Spintax")?></li>
			                            <li><?php _e("Ex: {Hi|Hello|Hola}")?></li>
			                        </ul>
						        </div>
						    </div>
				        </div>
				        <?php if( _p("whatsapp_button_status") ){?>
			            <div class="tab-pane fade <?php _e( get_data($item, 'cate')==2?"show active":"") ?>" id="nav_send_button" role="tabpanel">
			                <div class="m-b-15 customscroll">
						  		<ul class="list-group">
							  		<?php
							  		if(!empty( $buttons )){

			                        	foreach($buttons as $button){?>
			                                <li class="list-group-item">
			                                	<label class="i-radio i-radio--tick i-radio--brand m-b-1">
													<input type="radio" name="btn_msg" <?php _e( get_data($item, 'template', 'radio', $button->id) )?> value="<?php _e($button->id)?>" > <?php _e( $button->name )?>
													<span class="m-t-2"></span>
												</label>
			                                </li>
			                        	<?php }?>
									<?php }else{?>
		                                <div class="empty p-t-30">
		                                    <div class="icon"></div>
		                                </div>
		                            <?php }?>
								</ul>
						  	</div>
			            </div>
			            <?php }?>
		            	<?php if( _p("whatsapp_list_message_status") ){?>
			            <div class="tab-pane fade <?php _e( get_data($item, 'cate')==3?"show active":"") ?>" id="nav_send_list" role="tabpanel">
			                <div class="m-b-15 customscroll">
						  		<ul class="list-group">
							  		<?php
							  		if(!empty( $list_message )){

			                        	foreach($list_message as $value){?>
			                                <li class="list-group-item">
			                                	<label class="i-radio i-radio--tick i-radio--brand m-b-1">
													<input type="radio" name="list_msg" <?php _e( get_data($item, 'template', 'radio', $value->id) )?> value="<?php _e($value->id)?>" > <?php _e( $value->name )?>
													<span class="m-t-2"></span>
												</label>
			                                </li>
			                        	<?php }?>
									<?php }else{?>
		                                <div class="empty p-t-30">
		                                    <div class="icon"></div>
		                                </div>
		                            <?php }?>
								</ul>
						  	</div>
			            </div>
			            <?php }?>
			        </div>

				</div>

				<div class="post-schedule m-b-15 active">
					<input type="hidden" name="is_schedule" value="1" >
					<div class="post-schedule-content">
						<div class="row">
							<div class="col-12">
								<div class="form-group">
									<label><?php _e('Time post')?></label>
									<input type="text" class="form-control datetime" autocomplete="off" name="time_post" value="">
								</div>
							</div>
							<div class="col-6">
								<div class="form-group">
									<label><?php _e('Random message interval by minimum (second)')?></label>
									<input type="number" class="form-control" autocomplete="off" name="min_interval_per_post" value="60">
								</div>
							</div>
							<div class="col-6">
								<div class="form-group">
									<label><?php _e('Random message interval by maximum (second)')?></label>
									<input type="number" class="form-control" autocomplete="off" name="max_interval_per_post" value="300">
								</div>
							</div>
						</div>
					</div>
				</div>

			  	<button type="submit" class="btn btn-info m-b-25"><?php _e('Schedule')?></a>
			</form>
		</div>
	</div>

</div>
<?php if(!empty($item)){?>
    <script type="text/javascript">
        
        var contact_group_id = `<?php _e($item->contact_group_id)?>`;
        var name = `<?php _e($item->name)?>`;
        var caption = `<?php _e($item->data)?>`;

        <?php if($item->media != NULL){?>
        var medias = <?php _e($item->media)?>;
    	<?php }else{?>
		var medias = [];
    	<?php }?>
    	var time_post = '<?php _e( datetime_show($item->time_post) )?>';
        var min_delay = '<?php _e( $item->min_delay )?>';
        var max_delay = '<?php _e( $item->max_delay )?>';

        $(function(){

            setTimeout(function(){
                $("[name=name]").val(name);
                $("[name=min_interval_per_post]").val(min_delay);
                $("[name=max_interval_per_post]").val(max_delay);
                $("[name=time_post]").val(time_post);
                $("[name=group]").val(contact_group_id);

                var el = $("textarea[name=caption]").emojioneArea();
                el[0].emojioneArea.setText(caption);

                if(medias != null){
                    for (var i = 0; i < medias.length; i++) {
                        File_Manager.addFile(medias[i], medias[i]);
                    }
                }
            }, 1000);

        });

    </script>
<?php }?>