<div class="subheadline wrap-m">
	
	<div class="sh-main wrap-c">
		<div class="sh-title text-info fs-18 fw-5"><i class="far fa-edit"></i> <?php _e('Edit Product')?></div>
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
	<?php echo form_open_multipart( 'product/save/'.segment(4) )?>
		<div class="row">
                <?php if(_s("p_err")){
                    echo "<div style='width:60%;margin-left:20%;padding:12px;' class='bg-danger text-white'><span style='padding:10px 25px;'>"._s("p_err")."</span></div>";
                }   ?>
               <div class="col-md-6">
                    <div class="form-group">
                        <label for="current_password"><?php _e('Product Name')?><small class="text-danger">*</small></label>
                        <input type="text" class="form-control" id="name" name="name" value="<?php _e( get_data($result, 'name') )?>" required="true">
                    </div>
                </div> 
                <div class="col-md-6">    
                    <div class="form-group">
                        <label for="logo"><?php _e('Product Category')?><small class="text-danger">*</small></label>
                        <select class="form-control" name="category" id="category" required="true">
                            <option disabled="true" selected="true">Selete Category</option>
                            <option <?php _e( get_data($result, 'category', 'select', 'Weight Loss') )?>>Weight Loss</option>
                            <option <?php _e( get_data($result, 'category', 'select', 'Fashion') )?>>Fashion</option>
                            <option <?php _e( get_data($result, 'category', 'select', 'Electronic') )?>>Electronic</option>
                            <option <?php _e( get_data($result, 'category', 'select', 'Sport') )?>>Sport</option>
                            <option <?php _e( get_data($result, 'category', 'select', 'Accessories') )?>>Accessories</option>
                            <option <?php _e( get_data($result, 'category', 'select', 'Music') )?>>Music</option>
                            <option <?php _e( get_data($result, 'category', 'select', 'Art') )?>>Art</option>
                            <option <?php _e( get_data($result, 'category', 'select', 'Movies') )?>>Movies</option>
                            <option <?php _e( get_data($result, 'category', 'select', 'Food') )?>>Food</option>
                        </select>
                    </div> 
                 </div> 
               </div> 
		         <div class="row">
               <div class="col-md-6">
                    <div class="form-group">
                        <label for="current_password"><?php _e('Product Price')?><small class="text-danger">*</small></label>
                        <input type="number" class="form-control" id="price" name="price" value="<?php _e( get_data($result, 'price') )?>" required="true">
                    </div>
                </div> 
                <div class="col-md-6">    
                    <div class="form-group">
                        <label for="logo"><?php _e('Old Price')?></label>
                         <input type="number" class="form-control" id="old" name="old" value="<?php _e( get_data($result, 'old_price') )?>">
                    </div> 
                 </div> 
               </div> 
			  <div class="row">
               <div class="col-md-6">
                    <div class="form-group">
                        <label for="current_password"><?php _e('Short Description')?><small class="text-danger">*</small></label>
                        <input type="text" class="form-control" id="des" name="des" value="<?php _e( get_data($result, 'des') )?>" required="true">
                    </div>
                </div> 
                <div class="col-md-6">    
                    <div class="form-group">
                        <label for="logo"><b><?php _e('Feature Product')?><small class="text-danger">*</small></b></label>
                        <select class="form-control" name="feature" id="feature" required="true">
                            <option value="0" <?php _e( get_data($result, 'feature', 'select', 0) )?>>No</option>
                            <option value="1" <?php _e( get_data($result, 'feature', 'select', 1) )?>>Yes</option>  
                        </select>
                    </div>
                 </div> 
               </div> 
               <div class="form-group">
                        <label for="logo"><?php _e('Product Description')?></label>
                        <textarea class="form-control" name="ldes" id="ldes" rows="8">
                        	<?php _e( get_data($result, 'logtext') )?>
                        </textarea>
                    </div>	
                    <div class="col-md-12">    
                    <div class="form-group">
                        <label for="logo"><b><?php _e('Market Place')?><small class="text-danger">*</small></b></label>
                        <select class="form-control" name="market" id="market" required="true">
                            <option value="0" disabled="true" selected="true">Selete Market Place</option>
                            <?php foreach ($markets as $key => $market) { ?>
                              <option value="<?php echo $market["id"]; ?>" <?php echo ($result->mid == $market["id"])?'selected':''; ?>><?php echo $market["name"]; ?></option>  
                           <?php }  ?>  
                        </select>
                    </div> 
                 </div>
  <div class="row">                
<div class="col-md-6">
<div class="slideshow-container">

  <!-- Full-width images with number and caption text -->
  <?php  $imagesx = json_decode($result->image, true);
    
   foreach($imagesx as $key => $images) { ?>
  <div class="mySlides">
   <img src="<?php echo base_url().$images; ?>" style="width:95%; height: 220px;">
   </div>
  <?php } ?>
 

  <!-- Next and previous buttons -->
  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
  <a class="next" onclick="plusSlides(1)">&#10095;</a>
</div>
<br>

<!-- The dots/circles -->
<div style="text-align:center">
	<?php $imagesx = explode(',', $result->image);
    foreach($imagesx as $key => $images) { ?>
  <span class="dot" onclick="currentSlide(<?php echo $key+1; ?>)"></span>
<?php } ?>
 <!--  <span class="dot" onclick="currentSlide(2)"></span>
  <span class="dot" onclick="currentSlide(3)"></span> -->
</div>
</div>				  
<div class="col-md-6" style="margin-top: 10%;">    
                    <div class="form-group">
                        <label for="current_password"><?php _e('Product Images')?></label>
                        <input type="file" class="form-control" id="newimg[]" name="newimg[]" value="" multiple="multiple">
                    </div>
                 </div>
</div>
<br>				  	
				  
				  	<button type="submit" class="btn btn-primary"><?php _e('Update Product')?></button>
				<br><br>
			

	 <?php echo form_close(); ?>

</div>


<script type="text/javascript">
	let slideIndex = 1;
showSlides(slideIndex);

// Next/previous controls
function plusSlides(n) {
  showSlides(slideIndex += n);
}

// Thumbnail image controls
function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
}
</script>