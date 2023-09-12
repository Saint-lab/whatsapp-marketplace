
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
		<div class="widget-item search-item wrap-m <?php _e( (segment(3)=="list_order" || segment(3)=="")?"active":"" )?>">
			<a 
				class="actionItem" 
				data-result="html" 
				data-content="column-two" 
				href="<?php _e( get_module_url('index/list_order') )?>" 
				data-history="<?php _e( get_module_url('index/list_order') )?>"
			>
				<span class="widget-section">
				<span class="widget-icon"><i class="fas fa-cubes"></i></span>
					
					<span class="widget-desc"><?php _e("All")?></span>
				</span>
			</a>
		</div>
		<div class="widget-item search-item wrap-m <?php _e( segment(3)=="pending"?"active":"" )?>">
			<a 
				class="actionItem" 
				data-result="html" 
				data-content="column-two" 
				href="<?php _e( get_module_url('index/pending') )?>" 
				data-history="<?php _e( get_module_url('index/pending') )?>"
			>
				<span class="widget-section">
				<span class="widget-icon"><i class="far fa-user"></i></span>
					<span class="widget-desc"><?php _e("Pending Orders")?></span>
				</span>
			</a>
		</div>
		<div class="widget-item search-item wrap-m <?php _e( segment(3)=="success"?"active":"" )?>">
			<a 
				class="actionItem" 
				data-result="html" 
				data-content="column-two" 
				href="<?php _e( get_module_url('index/success') )?>" 
				data-history="<?php _e( get_module_url('index/success') )?>"
			>
				<span class="widget-section">
				<span class="widget-icon"><i class="far fa-user"></i></span>
					<span class="widget-desc"><?php _e("Successful Orders")?></span>
				</span>
			</a>
		</div>
		
	</div>

</div>