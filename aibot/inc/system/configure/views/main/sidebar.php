
<div class="input-group box-search-one">

  	<input class="form-control search-input" type="text" value="" autocomplete="off" placeholder="<?php _e('Search')?>">
  	<span class="input-group-append">
	    <button class="btn" type="button">
	        <i class="fa fa-search"></i>
	    </button>
	</span>
</div>

<div class="widget">
	
	<div class="widget-items search-list">
		<div class="widget-item search-item wrap-m <?php _e( (segment(3)=="paypal" || segment(3)=="")?"active":"" )?>">
			<a 
				class="actionItem" 
				data-result="html" 
				data-content="column-two" 
				href="<?php _e( get_module_url('index/paypal') )?>" 
				data-history="<?php _e( get_module_url('index/paypal') )?>"
			>
				<span class="widget-section">
				<span class="widget-icon"><i class="fas fa-cubes"></i></span>
					
					<span class="widget-desc"><?php _e("PAYPAL KEY")?></span>
				</span>
			</a>
		</div>
		<div class="widget-item search-item wrap-m <?php _e( segment(3)=="stripe"?"active":"" )?>">
			<a 
				class="actionItem" 
				data-result="html" 
				data-content="column-two" 
				href="<?php _e( get_module_url('index/stripe') )?>" 
				data-history="<?php _e( get_module_url('index/stripe') )?>"
			>
				<span class="widget-section">
				<span class="widget-icon"><i class="far fa-user"></i></span>
					<span class="widget-desc"><?php _e("STRIPE KEY")?></span>
				</span>
			</a>
		</div>
		<div class="widget-item search-item wrap-m <?php _e( segment(3)=="user_phone"?"active":"" )?>">
			<a 
				class="actionItem" 
				data-result="html" 
				data-content="column-two" 
				href="<?php _e( get_module_url('index/user_phone') )?>" 
				data-history="<?php _e( get_module_url('index/user_phone') )?>"
			>
				<span class="widget-section">
				<span class="widget-icon"><i class="far fa-user"></i></span>
					<span class="widget-desc"><?php _e("Whatsapp Number")?></span>
				</span>
			</a>
		</div>
		<!-- <div class="widget-item search-item wrap-m <?php //_e( segment(3)=="package"?"active":"" )?>">
			<a 
				class="actionItem" 
				data-result="html" 
				data-content="column-two" 
				href="<?php //_e( get_module_url('index/package') )?>" 
				data-history="<?php// _e( get_module_url('index/package') )?>"
			>
				<span class="widget-section">
					<span class="widget-icon"><i class="fas fa-cubes"></i></span>
					<span class="widget-desc"><?php //_e("Package")?></span>
				</span>
			</a>
		</div> -->
	</div>

</div>