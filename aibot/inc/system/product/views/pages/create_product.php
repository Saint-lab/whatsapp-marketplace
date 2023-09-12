<div class="row">
    <div class="col-md-12" style="">
       
            <div class="card-header">
                <div class="card-title" style="display: inline-block;"><i class="fas fa-unlock-alt text-info"></i> <?php _e("Add New Product")?></div>
                <button type="button" data-toggle="modal" style="display:inline-block;float: right;" data-target="#adModal" class="btn btn-success mr-3  removeBtn"><i class="la la-plus"></i>Select Product</button>

            </div> 
       
            <div class="card-body">
               <?php echo form_open_multipart('product/ajax_create_product')?>
               <div class="row">
                <?php if(_s("p_err")){
                    echo "<div style='width:60%;margin-left:20%;padding:12px;' class='bg-danger text-white'><span style='padding:10px 25px;'>"._s("p_err")."</span></div>";
                }   ?>
               <div class="col-md-6">
                    <div class="form-group">
                        <label for="current_password"><?php _e('Product Name')?><small class="text-danger">*</small></label>
                        <input type="text" class="form-control" id="name" name="name" value="" required="true">
                    </div>
                </div> 
                <div class="col-md-6">    
                    <div class="form-group">
                        <label for="logo"><?php _e('Product Category')?><small class="text-danger">*</small></label>
                        <select class="form-control" name="category" id="category" required="true">
                            <option disabled="true" selected="true">Selete Category</option>
                            <option>Weight Loss</option>
                            <option>Fashion</option>
                            <option>Electronic</option>
                            <option>Sport</option>
                            <option>Accessories</option>
                            <option>Music</option>
                            <option>Pet Care</option>
                            <option>Health</option>
                            <option>Automobile</option>
                            <option>Digital</option>
                            <option>Movies</option>
                            <option>Food</option>
                            <option>Others</option>
                        </select>
                    </div> 
                 </div> 
               </div> 
                <div class="row">
               <div class="col-md-6">
                    <div class="form-group">
                        <label for="current_password"><?php _e('Product Price')?><small class="text-danger">*</small></label>
                        <input type="number" class="form-control" id="price" name="price" value="" required="true">
                    </div>
                </div> 
                <div class="col-md-6">    
                    <div class="form-group">
                        <label for="logo"><?php _e('Old Price')?></label>
                         <input type="number" class="form-control" id="old" name="old" value="">
                    </div> 
                 </div> 
               </div> 
               <div class="row">
               <div class="col-md-6">
                    <div class="form-group">
                        <label for="current_password"><?php _e('Short Description')?><small class="text-danger">*</small></label>
                        <input type="text" class="form-control" id="des" name="des" value="" required="true">
                    </div>
                </div> 
                <div class="col-md-6">    
                    <div class="form-group">
                        <label for="current_password"><?php _e('Product Images')?><small class="text-danger">*</small></label>
                        <input type="file" class="form-control" id="img[]" name="img[]" value="" required="true" multiple="multiple">
                    </div>
                 </div> 
               </div> 
               <div class="form-group">
                        <label for="logo"><?php _e('Product Description')?></label>
                        <textarea class="form-control" name="ldes" id="ldes" rows="8"></textarea>
                    </div>
                    <div class="row">
                  <div class="col-md-3">    
                    <div class="form-group">
                        <label for="logo"><b><?php _e('Feature Product')?><small class="text-danger">*</small></b></label>
                        <select class="form-control" name="feature" id="feature" required="true">
                            <option value="0">No</option>
                            <option value="1">Yes</option>  
                        </select>
                    </div> 
                 </div> 
                 <div class="col-md-3">    
                    <div class="form-group">
                        <label for="logo"><b><?php _e('Product Type')?><small class="text-danger">*</small></b></label>
                        <select class="form-control" name="type" id="type" required="true">
                            <option value="0">Physical Product</option>
                            <option value="1">Digital Product</option>  
                        </select>
                    </div> 
                 </div>  
                 <div class="col-md-6">    
                    <div class="form-group">
                        <label for="logo"><b><?php _e('Market Place')?><small class="text-danger">*</small></b></label>
                        <select class="form-control" name="market" id="market" required="true">
                            <option value="0" disabled="true" selected="true">Selete Market Place</option>
                            <?php foreach ($markets as $key => $market) { ?>
                              <option value="<?php echo $market["id"]; ?>"><?php echo $market["name"]; ?></option>  
                           <?php }  ?>  
                        </select>
                    </div> 
                 </div>
                 </div>       
                    <button type="submit" class="btn btn-info"><?php _e("Add Product")?></button>
                <?php echo form_close(); ?>

            </div>
    
    </div>
</div>

 <div id="removeModal" class="modal fade" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                <?php echo form_open_multipart('product/save_dfy/')?>
                   
                <div style="margin:10px 10px">
                    <div style="width: 100px;display: inline-block;">
                    <a href="<?php echo base_url().'product/index' ?>" class="btn btn-primary basicbtn">Home</a> 
                </div>
                <div style="width: 300px;display: inline-block;">
                   <select class="form-control" name="filter">
                       <option value="0">Filter Product</option>
                       <option value="1">Physical Product</option>
                       <option value="2">Digital Product</option>
                   </select>
               </div>
               <div style="width: 300px;display: inline-block;">
                   <select class="form-control" name="jmarket" id="jmarket" required="true">
                            <option value="0" disabled="true" selected="true">Selete Market Place</option>
                            <?php foreach ($markets as $key => $market) { ?>
                              <option value="<?php echo $market["id"]; ?>"><?php echo $market["name"]; ?></option>  
                           <?php }  ?>  
                        </select>
               </div>
                </div>
                <div class="msg">
            
  </div>

                      <table class="table table--light">
  <thead>
    <tr>
        <th class="am-select">
                            </th>
        <th scope="col">Image</th>
      <th scope="col" style="text-align:left;">Product Name</th>
      <th scope="col" style="text-align:left;width:590px">Description</th>
    </tr>
  </thead>
  
  <tbody id="page_holder">
 </tbody>
  <tbody id="page_holder1">
 </tbody>
  <tbody id="page_holder2">
 </tbody>
   <tbody id="page_holder3">
 </tbody>
  <tbody id="page_holder4">
 </tbody>
  <tbody id="page_holder5">
 </tbody>
  <tbody id="page_holder6">
 </tbody>
  <tbody id="page_holder7">
 </tbody>
 
   
</table>
<div class="modal-footer">
    <div id="total_paginate"></div>                        
  </div>
  </div>
                 
                </div>
            </div>
             <input type="hidden" name="storeid" value="{{$storeID->id}}">
             <?php echo form_close(); ?>
            
        </div>
<script type="text/javascript">
    var url_load_list = '<?php echo base_url().'product/add_pro'?>';
    var url_load = '<?php echo base_url().'product/pageproduct'?>';
    var base = '<?php echo base_url() ?>';
    var store_id = 0;
     $('.removeBtn').on('click', function () {
                var modal = $('#removeModal');
                
                modal.modal('show');
            });

$('#jmarket').change(function() {
store_id = $('#jmarket').find(":selected").val();
console.log(store_id);
});



      $(document).ready(function() {
       load_product(1); 
    })

     $("select[name='filter']").change(function(){
  var filter = $("select[name='filter']").val();
  if(filter == 0){
   $('#page_holder').empty();
   load_product(1);
      
  }
   else if(filter == 1){
   $('#page_holder').empty();
   load_product(2);
      
  }
  else if(filter == 2){
   $('#page_holder').empty(); 
    load_product(3);  
      
      
  }
  });

    function load_product(type){
      $('#page_holder').empty();
     $('#total_paginate').empty();
      store_id = $('#jmarket').find(":selected").val();      
       console.log(store_id);
            
            $.ajax({
                  type: "GET",
            async: true,
            url:  url_load+'/'+type,
            success: function(response) {
               $('#page_holder').empty(); 
         $('#page_holder2').empty();
          $('#page_holder3').empty();
          $('#page_holder4').empty();
           $('#page_holder5').empty();
            $('#page_holder6').empty();
             $('#page_holder7').empty();
             $('#page_holder1').empty();
              var response = JSON.parse(response);     
                    $.each(response, function(index, value){
                     var img = JSON.parse(value.image); 
                       $('#page_holder').append('<tr>'+
    '<td>'+
'<div class="custom-control custom-checkbox">'+
'<input type="checkbox" name="ids" class="custom-control-input custom"'+ 
'id="customCheck'+value.id+'" onclick="productCheck(this,\''+value.id+'\')">'+
'<label class="custom-control-label" for="customCheck'+value.id+'"></label>'+
'</div>'+
    '</td>'+
    '<td>'+'<div style="width:100px;height:150px;">'+'<img src="'+base+img[0]+'" alt="image" style="width:90px;heigth:50px;">'+'</div>'+'</td>'+
      '<td style="text-align:left;">'+value.name+'</td>'+
      '<td style="text-align:justify;white-space: normal !important;word-wrap: break-word;">'+jQuery.trim(value.des).substring(0, 200).trim(this) + " ..."+'</td></tr>');
            var selected;

             if(index == 8 && index < 9){
       $('#total_paginate').append('<span class="page1 bg-primary text-white" style="padding:2px 10px;'+
    'border-right:1px solid #f7f7f7;cursor:pointer;color:blue">1</span>'+
'<span class="page2 bg-primary text-white" style="padding:2px 10px;border-right:1px solid #f7f7f7;'+
'cursor:pointer;color:blue">'+
    '2</span>'+
'<span class="page3 bg-primary text-white" style="padding:2px 10px;border-right:1px solid #f7f7f7;'+
'cursor:pointer;color:blue">'+
    '3</span>'+
'<span class="page4 bg-primary text-white" style="padding:2px 10px;border-right:1px solid #f7f7f7;'+
'cursor:pointer;color:blue">'+
    '4</span>'+
'<span class="page5 bg-primary text-white" style="padding:2px 10px;border-right:1px solid #f7f7f7;'+
'cursor:pointer;color:blue">'+
    '5</span>'+'<span class="page6 bg-primary text-white" style="padding:2px 10px;border-right:1px solid #f7f7f7;'+
'cursor:pointer;color:blue">'+
    '6</span>'+'<span class="page7 bg-primary text-white" style="padding:2px 10px;border-right:1px solid #f7f7f7;'+
'cursor:pointer;color:blue;">'+
    '7</span>');
    return false;
   }

          });
$('.page1').on('click', function () {
  
  $('#page_holder1').empty();
        for(let i = 1; i < 9; ++i){
         $('#page_holder').empty();
         $('#page_holder2').empty();
          $('#page_holder3').empty();
          $('#page_holder4').empty();
           $('#page_holder5').empty();
            $('#page_holder6').empty();
             $('#page_holder7').empty();
             var imgx = JSON.parse(response[i].image); 
       $('#page_holder1').append('<tr>'+
    '<td>'+
'<div class="custom-control custom-checkbox">'+
'<input type="checkbox" name="ids" class="custom-control-input custom"'+ 
'id="customCheck'+response[i].id+'" onclick="productCheck(this,\''+response[i].id+'\')">'+
'<label class="custom-control-label" for="customCheck'+response[i].id+'"></label>'+
'</div>'+
    '</td>'+
    '<td>'+'<div style="width:100px;height:150px;">'+'<img src="'+base+imgx[0]+'" alt="image" style="width:90px;heigth:50px;" >'+'</div>'+'</td>'+
      '<td style="text-align:left;">'+response[i].name+'</td>'+
      '<td style="text-align:left;white-space: normal !important;word-wrap: break-word;">'+jQuery.trim(response[i].des).substring(0, 200).trim(this) + " ..."+'</td></tr>'); 
   }
     });

$('.page2').on('click', function () {
  
  $('#page_holder2').empty();
        for(let i = 9; i < 17; ++i){
         $('#page_holder').empty();
         $('#page_holder1').empty();
         $('#page_holder3').empty();
          $('#page_holder4').empty();
           $('#page_holder5').empty();
            $('#page_holder6').empty();
             $('#page_holder7').empty();
             var imgx = JSON.parse(response[i].image); 
       $('#page_holder2').append('<tr>'+
    '<td>'+
'<div class="custom-control custom-checkbox">'+
'<input type="checkbox" name="ids" class="custom-control-input custom"'+ 
'id="customCheck'+response[i].id+'" onclick="productCheck(this,\''+response[i].id+'\')">'+
'<label class="custom-control-label" for="customCheck'+response[i].id+'"></label>'+
'</div>'+
    '</td>'+
    '<td>'+'<div style="width:100px;height:150px;">'+'<img src="'+base+imgx[0]+'" alt="image" style="width:90px;heigth:50px;" >'+'</div>'+'</td>'+
      '<td style="text-align:left;">'+response[i].name+'</td>'+
      '<td style="text-align:left;white-space: normal !important;word-wrap: break-word;">'+jQuery.trim(response[i].des).substring(0, 200).trim(this) + " ..."+'</td></tr>'); 
   }
     });

$('.page3').on('click', function () {
  $('#page_holder3').empty();
        for(let i = 17; i < 25; ++i){
         $('#page_holder').empty();
         $('#page_holder1').empty();
         $('#page_holder2').empty();
          $('#page_holder4').empty();
           $('#page_holder5').empty();
            $('#page_holder6').empty();
             $('#page_holder7').empty();
             var imgx = JSON.parse(response[i].image); 
       $('#page_holder3').append('<tr>'+
    '<td>'+
'<div class="custom-control custom-checkbox">'+
'<input type="checkbox" name="ids" class="custom-control-input custom"'+ 
'id="customCheck'+response[i].id+'" onclick="productCheck(this,\''+response[i].id+'\')">'+
'<label class="custom-control-label" for="customCheck'+response[i].id+'"></label>'+
'</div>'+
    '</td>'+
    '<td>'+'<div style="width:100px;height:150px;">'+'<img src="'+base+imgx[0]+'" alt="image" style="width:90px;heigth:50px;" >'+'</div>'+'</td>'+
      '<td style="text-align:left;">'+response[i].name+'</td>'+
      '<td style="text-align:left;white-space: normal !important;word-wrap: break-word;">'+jQuery.trim(response[i].des).substring(0, 200).trim(this) + " ..."+'</td></tr>'); 
   }
     });

$('.page4').on('click', function () {
  $('#page_holder4').empty();
        for(let i = 25; i < 33; ++i){
         $('#page_holder').empty();
         $('#page_holder1').empty();
         $('#page_holder2').empty();
          $('#page_holder3').empty();
           $('#page_holder5').empty();
            $('#page_holder6').empty();
             $('#page_holder7').empty();
             var imgx = JSON.parse(response[i].image); 
       $('#page_holder4').append('<tr>'+
    '<td>'+
'<div class="custom-control custom-checkbox">'+
'<input type="checkbox" name="ids" class="custom-control-input custom"'+ 
'id="customCheck'+response[i].id+'" onclick="productCheck(this,\''+response[i].id+'\')">'+
'<label class="custom-control-label" for="customCheck'+response[i].id+'"></label>'+
'</div>'+
    '</td>'+
    '<td>'+'<div style="width:100px;height:150px;">'+'<img src="'+base+imgx[0]+'" alt="image" style="width:90px;heigth:50px;" >'+'</div>'+'</td>'+
      '<td style="text-align:left;">'+response[i].name+'</td>'+
      '<td style="text-align:left;white-space: normal !important;word-wrap: break-word;">'+jQuery.trim(response[i].des).substring(0, 200).trim(this) + " ..."+'</td></tr>'); 
   }
     });
 
 $('.page5').on('click', function () {
  $('#page_holder5').empty();
        for(let i = 33; i < 41; ++i){
         $('#page_holder').empty();
         $('#page_holder1').empty();
         $('#page_holder2').empty();
          $('#page_holder4').empty();
           $('#page_holder3').empty();
            $('#page_holder6').empty();
             $('#page_holder7').empty();
             var imgx = JSON.parse(response[i].image); 
       $('#page_holder5').append('<tr>'+
    '<td>'+
'<div class="custom-control custom-checkbox">'+
'<input type="checkbox" name="ids" class="custom-control-input custom"'+ 
'id="customCheck'+response[i].id+'" onclick="productCheck(this,\''+response[i].id+'\')">'+
'<label class="custom-control-label" for="customCheck'+response[i].id+'"></label>'+
'</div>'+
    '</td>'+
    '<td>'+'<div style="width:100px;height:150px;">'+'<img src="'+base+imgx[0]+'" alt="image" style="width:90px;heigth:50px;" >'+'</div>'+'</td>'+
      '<td style="text-align:left;">'+response[i].name+'</td>'+
      '<td style="text-align:left;white-space: normal !important;word-wrap: break-word;">'+jQuery.trim(response[i].des).substring(0, 200).trim(this) + " ..."+'</td></tr>'); 
   }
     });

 $('.page6').on('click', function () {
  $('#page_holder6').empty();
        for(let i = 41; i < 49; ++i){
         $('#page_holder').empty();
         $('#page_holder1').empty();
         $('#page_holder2').empty();
          $('#page_holder4').empty();
           $('#page_holder5').empty();
            $('#page_holder3').empty();
             $('#page_holder7').empty();
             var imgx = JSON.parse(response[i].image); 
       $('#page_holder6').append('<tr>'+
    '<td>'+
'<div class="custom-control custom-checkbox">'+
'<input type="checkbox" name="ids" class="custom-control-input custom"'+ 
'id="customCheck'+response[i].id+'" onclick="productCheck(this,\''+response[i].id+'\')">'+
'<label class="custom-control-label" for="customCheck'+response[i].id+'"></label>'+
'</div>'+
    '</td>'+
    '<td>'+'<div style="width:100px;height:150px;">'+'<img src="'+base+imgx[0]+'" alt="image" style="width:90px;heigth:50px;" >'+'</div>'+'</td>'+
      '<td style="text-align:left;">'+response[i].name+'</td>'+
      '<td style="text-align:left;white-space: normal !important;word-wrap: break-word;">'+jQuery.trim(response[i].des).substring(0, 200).trim(this) + " ..."+'</td></tr>'); 
   }
     });

 $('.page7').on('click', function () {
  $('#page_holder7').empty();
        for(let i = 49; i < 53; ++i){
         $('#page_holder').empty();
         $('#page_holder1').empty();
         $('#page_holder2').empty();
          $('#page_holder4').empty();
           $('#page_holder5').empty();
            $('#page_holder6').empty();
             $('#page_holder3').empty();
             var imgx = JSON.parse(response[i].image); 
       $('#page_holder7').append('<tr>'+
    '<td>'+
'<div class="custom-control custom-checkbox">'+
'<input type="checkbox" name="ids" class="custom-control-input custom"'+ 
'id="customCheck'+response[i].id+'" onclick="productCheck(this,\''+response[i].id+'\')">'+
'<label class="custom-control-label" for="customCheck'+response[i].id+'"></label>'+
'</div>'+
    '</td>'+
    '<td>'+'<div style="width:100px;height:150px;">'+'<img src="'+base+imgx[0]+'" alt="image" style="width:90px;heigth:50px;" >'+'</div>'+'</td>'+
      '<td style="text-align:left;">'+response[i].name+'</td>'+
      '<td style="text-align:left;white-space: normal !important;word-wrap: break-word;">'+jQuery.trim(response[i].des).substring(0, 200).trim(this) + " ..."+'</td></tr>'); 
   }
     });

       }

      })

    } 

function productCheck(obj, id){
  var box = "#customCheck"+id;
       if($(box).prop("checked") == true){
       $.ajax({
              type: "POST",
            async: true,
            url:  url_load_list,
            data: {
              store_id: store_id,
              selected: id
            },
            success: function(response) {
              $(".msg").empty();
             var response = JSON.parse(response);   
           if(response.status == "ok"){
            $(".msg").append("<div class='alert alert-success alert-dismissible'><button class='close' data-dismiss='alert'>&times;</button><strong>Success! "+response.message+"</strong></div>");
           }else{
            $(".msg").append("<div class='alert alert-danger alert-dismissible'><button class='close' data-dismiss='alert'>&times;</button><strong>Fail! "+response.message+"</strong></div>");
           }
      },
                
            });
     }
}


         
        
</script>