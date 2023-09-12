<?php echo form_open(base_url("leads"), array("method" => "get")); ?>
<div class="row" style="background-color:inherit;margin-top: -10px;">
            

            
                  
                  <div class="col-lg-4 col-md-4 col-sm-4 col-4 card-body"  style="background-color:inherit;">
                  <input type="text" placeholder="Search.." name="search" value="<?php echo $this->input->get("search"); ?>" style=" padding: 10px;
  font-size: 17px;
  border: 1px solid grey;
  float: left;
  width: 100%;box-sizing: border-box;
  background: #f1f1f1;" class="search" required=''>
   
            </div>
  
                  
                  <div class="col-lg-8 col-md-8 col-sm-8 col-8 card-body"  style="background-color:inherit;">
  <input type="text" placeholder="Location: San Francisco, CA" name="location" value="<?php echo $this->input->get("location"); ?>" style=" padding: 10px;
  font-size: 17px;
  border: 1px solid grey;
  float: left;
  width: 70%;box-sizing: border-box;
  background: #f1f1f1;" class="location">
<button type="submit" style="float: left;
  width: 20%;
  padding: 10px;
  background: #2196F3;
  color: white;
  font-size: 17px;
  border: 1px solid grey;
  border-left: none; 
  cursor: pointer;"><i class="fa fa-search" ></i></button>
                  
            </div>
          </div>  
          </form>

          

          <div class="row result" style="position:absolute;z-index:99;">
          </div>
          <div class="section-body">

           
          
            <div class="row">
              <div class="col-md-12">
                <div class="card">
                
                  <div class="card-body">
                
                    <div class="row" style="display: flex;flex-wrap:wrap;padding: 5px 0 10px 0" id="wraper">

                   <?php 
                    if($leads) {
                   foreach($leads as $key => $lead){  ?>
       <div class="card mb-2" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  width: 220px;
  margin: auto; 
  text-align: justiy;
  font-family: arial;padding: 5px 0px 30px 0px;background-color:#f7f7f7">
 <img src="<?=$lead['image_url']?>" alt="Image" style="width:90%;height:130px;margin: 5px 0 0 15px;">
 <div style="margin:5px 0 0 15px">
<span><b>Name: </b><?=$lead['name']?></span><br>
<span><b>Phone: </b><?=$lead['phone']?></span>
 <p><b>Location: </b><?=$lead['location']['address1'].', '.$lead['location']['city'].', '.$lead['location']['country']?></p>
 <p><button class="btn btn-primary lead-detail" style="background-color:#2196F3;border:none;"
data-toggle="modal" 
data-target="#modal-lead-detail"
data-id="<?=$lead['id']?>"
data-url="<?=$lead['url']?>">View Details</button></p>
 </div>
</div>
 <input type="hidden" name="dot" id="dot<?=$key?>" value="<?=$lead['url']?>" />               
               <?php   } 
             }else{ ?>
          <div style="text-align:center;color:red;width:80%;height: 70px;border-radius:5px;"> 
          <h1>Data not Found</h1>

          </div> 
          <?php   }  ?> 

</div>
<div class="row" style="display: flex;flex-wrap:wrap;padding: 5px 0 10px 0" id="email_wraper">
</div>
<?php if($this->input->get("search")) { 
 $search =  $this->input->get("search");
 $address = $this->input->get("location"); 
  ?>
  
  <div class="row" style="padding: 20px 0 10px 20px;">
 <div>
   <span style="padding: 8px 12px;border:1px solid #d4d4d4;background:<?= ($page==0)?'#1aa0ed':''; ?>;border-radius:50%;"><a href="<?php echo base_url("leads?search=".$search."&location=".$address) ?>">1</a></span>
   <span style="padding: 8px 12px;border:1px solid #d4d4d4;background:<?= ($page==21)?'#1aa0ed':''; ?>;border-radius:50%;"><a href="<?php echo base_url("leads/index/21?search=".$search."&location=".$address) ?>">2</a></span>
   <span style="padding: 8px 12px;border:1px solid #d4d4d4;background:<?= ($page==41)?'#1aa0ed':''; ?>;border-radius:50%;"><a href="<?php echo base_url("leads/index/41?search=".$search."&location=".$address) ?>">3</a></span>
   <span style="padding: 8px 12px;border:1px solid #d4d4d4;background:<?= ($page==61)?'#1aa0ed':''; ?>;border-radius:50%;"><a href="<?php echo base_url("leads/index/61?search=".$search."&location=".$address) ?>">4</a></span>
   <span style="padding: 8px 12px;border:1px solid #d4d4d4;background:<?= ($page==81)?'#1aa0ed':''; ?>;border-radius:50%;"><a href="<?php echo base_url("leads/index/81?search=".$search."&location=".$address) ?>">5</a></span>
   <span style="padding: 8px 12px;border:1px solid #d4d4d4;background:<?= ($page==101)?'#1aa0ed':''; ?>;border-radius:50%;"><a href="<?php echo base_url("leads/index/101?search=".$search."&location=".$address) ?>">6</a></span>
   <span style="padding: 8px 12px;border:1px solid #d4d4d4;background:<?= ($page==121)?'#1aa0ed':''; ?>;border-radius:50%;"><a href="<?php echo base_url("leads/index/121?search=".$search."&location=".$address) ?>">7</a></span>
   <span style="padding: 8px 12px;border:1px solid #d4d4d4;background:<?= ($page==141)?'#1aa0ed':''; ?>;border-radius:50%;"><a href="<?php echo base_url("leads/index/141?search=".$search."&location=".$address) ?>">8</a></span>
   <span style="padding: 8px 12px;border:1px solid #d4d4d4;background:<?= ($page==161)?'#1aa0ed':''; ?>;border-radius:50%;"><a href="<?php echo base_url("leads/index/161?search=".$search."&location=".$address) ?>">9</a></span>
   <span style="padding: 8px 12px;border:1px solid #d4d4d4;background:<?= ($page==181)?'#1aa0ed':''; ?>;border-radius:50%;"><a href="<?php echo base_url("leads/index/181?search=".$search."&location=".$address) ?>">10</a></span>
                        </div>
                        <!-- <div class="col-md-5"  style="margin-top:-11px;">
           <select class="form-control" id="boxed">
           <option value="">Select Campaign</option>
           <?php foreach($cams as $cam) { ?>
            <option value="<?php echo $cam->id ?>"><?php echo $cam->name ?></option>
            <?php } ?>
           </select>
           <button class="btn btn-primary contact" style="position:absolute;margin:-40px 0 0 400px;">Save</button>
           </div> -->
                        </div>

  <?php } else{  ?>
<div class="row" style="padding:20px 0 10px 20px;">
 <div>
   <span style="padding: 8px 12px;border:1px solid #d4d4d4;background:<?= ($page==0)?'#1aa0ed':''; ?>;border-radius:50%;"><a href="<?php echo base_url("leads") ?>">1</a></span>
   <span style="padding: 8px 12px;border:1px solid #d4d4d4;background:<?= ($page==21)?'#1aa0ed':''; ?>;border-radius:50%;"><a href="<?php echo base_url("leads/index/21") ?>">2</a></span>
   <span style="padding: 8px 12px;border:1px solid #d4d4d4;background:<?= ($page==41)?'#1aa0ed':''; ?>;border-radius:50%;"><a href="<?php echo base_url("leads/index/41") ?>">3</a></span>
   <span style="padding: 8px 12px;border:1px solid #d4d4d4;background:<?= ($page==61)?'#1aa0ed':''; ?>;border-radius:50%;"><a href="<?php echo base_url("leads/index/61") ?>">4</a></span>
   <span style="padding: 8px 12px;border:1px solid #d4d4d4;background:<?= ($page==81)?'#1aa0ed':''; ?>;border-radius:50%;"><a href="<?php echo base_url("leads/index/81") ?>">5</a></span>
   <span style="padding: 8px 12px;border:1px solid #d4d4d4;background:<?= ($page==101)?'#1aa0ed':''; ?>;border-radius:50%;"><a href="<?php echo base_url("leads/index/101") ?>">6</a></span>
   <span style="padding: 8px 12px;border:1px solid #d4d4d4;background:<?= ($page==121)?'#1aa0ed':''; ?>;border-radius:50%;"><a href="<?php echo base_url("leads/index/121") ?>">7</a></span>
   <span style="padding: 8px 12px;border:1px solid #d4d4d4;background:<?= ($page==141)?'#1aa0ed':''; ?>;border-radius:50%;"><a href="<?php echo base_url("leads/index/141") ?>">8</a></span>
   <span style="padding: 8px 12px;border:1px solid #d4d4d4;background:<?= ($page==161)?'#1aa0ed':''; ?>;border-radius:50%;"><a href="<?php echo base_url("leads/index/161") ?>">9</a></span>
   <span style="padding: 8px 12px;border:1px solid #d4d4d4;background:<?= ($page==181)?'#1aa0ed':''; ?>;border-radius:50%;"><a href="<?php echo base_url("leads/index/181") ?>">10</a></span>
                        </div>
                        <!-- <div class="col-md-5"  style="margin-top:-11px;">
           <select class="form-control" id="boxed">
           <option value="">Select Campaign</option>
           <?php foreach($cams as $cam) { ?>
            <option value="<?php echo $cam->id ?>"><?php echo $cam->name ?></option>
            <?php } ?>
           </select>
           <button class="btn btn-primary save_all" style="position:absolute;margin:-40px 0 0 400px;">Save</button>
           </div> -->
                        </div>
      <?php }  ?>

                  </div> 
                  </div>
              </div>
            </div>



          </div>


          <div class="modal fade" id="modal-lead-detail" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document" style="width:450x;">
  
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title"><?='Details'?></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body"> 
     
            <div class="row justify-content-center contact-details" style="width:100%;">
            <p id="loading"><img src="<?php echo base_url(); ?>assets/spinner.gif"></p>
            <span id="mess" style="position:absolute;">Wait! Fetching data...</span>
           <span id="detai" style="width:100%;"></span>
           <div id="seld" style="width:100%;padding: 5px;" class="row">
           <div class="col-md-10">
           <select class="form-control" id="sel">
           <option value="0">Select Campaign</option>
                 </select>
           </div> 
           <div class="col-md-10" style="padding: 10px 5px;float:right;">    
           <button  class="btn btn-success save_lead">Add To Campaign</button>
           <!-- <button class="btn btn-primary contact">Contact Business</button> -->
           </div>
          </div>
           <span id="saving" style="color:green:display:none"></span>

 </div>
      </div>
    </div>
  </div>
</div>

<script>
  var base_url = '<?php echo base_url()  ?>';
$('.search').on('keyup', function(e) {
    $('.result').empty();
var userInput = e.target.value;

$.ajax({
      type: "POST",
          url: base_url+'Leads/autosearch_lead/'+userInput, 
          data: {"text":userInput},
      success: function(data) 
    { 
     
      var list = JSON.parse(data);  
     $.each(list.businesses, function(index, dat){
       $('.result').append('<div id="autosearch'+index+'" class="col-lg-6 col-md-4 col-sm-4 col-6" style="padding:15px;font-size:16px;background-color:#ffffff;border-bottom:2px solid #d4d4d4;margin:-10px 0px 0px 10px;cursor:pointer;" class="result">'+dat.name+'</div>');
       let b = '#autosearch'+index;
       $(b).on('click', function(e) {
        console.log(b);
        $('.search').val(dat.name);
        
        $('.result').empty();
        });
      });
       $.each(list.categories, function(index, dat){
       
        $('.result').append('<div id="autose'+index+'" class="col-lg-6 col-md-4 col-sm-4 col-6" style="padding:15px;font-size:16px;background-color:#ffffff;border-bottom:2px solid #d4d4d4;margin:-10px 0px 0px 10px;cursor:pointer;" class="result">'+dat.title+'</div>');
        let b = '#autose'+index;
       $(b).on('click', function(e) {
        console.log(b);
        $('.search').val(dat.title);
      
        $('.result').empty();
        });
       });
       $.each(list.terms, function(index, dat){
        $('.result').append('<div id="aut'+index+'" class="col-lg-6 col-md-4 col-sm-4 col-6" style="padding:15px;font-size:16px;background-color:#ffffff;border-bottom:2px solid #d4d4d4;margin:-10px 0px 0px 10px;cursor:pointer;" class="result">'+dat.text+'</div>');
        let b = '#aut'+index;
       $(b).on('click', function(e) {
        console.log(b);
        $('.search').val(dat.text);
        $('.result').empty();
        });
       });
    }
    });
});


$(document).on("click", ".lead-detail", function(){
  var note = "";
  document.getElementById("loading").style.display = "block";
  document.getElementById("mess").style.display = "block";
  document.getElementById("detai").style.display = "none";
  document.getElementById("saving").style.display = "none";
  document.getElementById("seld").style.display = "none";
  $('#sel').empty();
  lead_id = $(this).data("id");
  var ur = $(this).data("url");
  
  $.ajax({
    type: "POST",
    url: base_url+'Leads/lead_details/'+lead_id, 
    data: {"id":lead_id,"url":ur},
    success: function(result) 
    {
      var result = JSON.parse(result);
      console.log(result.detail);
      //console.log(result.cams);
    document.getElementById("loading").style.display = "none";
    document.getElementById("mess").style.display = "none";
    document.getElementById("saving").style.display = "none"; 
    document.getElementById("detai").style.display = "block";
    document.getElementById("seld").style.display = "block";
    document.getElementById("detai").innerHTML = 
    "<div style='width:100%;font-size:1.1em;'><img src='"+result.detail.image_url+"' alt='Denim Jeans' style='width:90%;height:220px;margin: 5px 0 0 15px;'>"+
    "<div style='margin:5px 0 0 15px'> <span><b>Name: </b>"+result.detail.name+"</span><br>"+
    "<span><b>Alias: </b>"+result.detail.alias+"</span><br>"+
    "<span><b>Phone No: </b>"+result.detail.phone+"</span><br>"+
    "<span><b>Alternative Number: </b>"+result.detail.display_phone+"</span><br>"+
    "<span><b>Address: </b>"+result.detail.location.address1+"</span><br>"+
    "<span><b>City: </b>"+result.detail.location.city+"</span><br>"+
    "<span><b>State: </b>"+result.detail.location.state+"</span><br>"+
    "<span><b>Zip Code: </b>"+result.detail.location.zip_code+"</span><br>"+
    "<span><b>Country: </b>"+result.detail.location.country+"</span><br><br>"+
    "<span><b>Rating: </b>"+result.detail.rating+"</span><br>"+
    "<span><b>Review Count: </b>"+result.detail.review_count+"</span>"+
    "<p><b>Website: </b> <a href='"+result.url+"' target='_blank'>"+result.url+"</a></p>"+
  "</div> </div>";

    $.each(result.cams, function (key, val) {
    
  $('#sel').append('<option value="'+val.id+'">'+val.name+'</option>');

  });

// $.ajax({
//      type: "POST",
//           url:  base_url+'Leads/emaid', 
//           data: {"idd":result.url},
//      success: function(resu)
//     { 
//       var resu = JSON.parse(resu);
//       var contact = "#emailed";
//        var fetem = "#img";
//       $(fetem).empty();
      
//       if (resu == "" || resu == null) {
//         note = "No Email";
//       }else{
//         note = resu;
//       }
//       $(contact).append(' '+note);

     $(document).on("click", ".save_lead", function(){
    var selected = $('#sel').val();
        if(selected == ""){
      document.getElementById("saving").style.display = "block"; 
      document.getElementById("saving").style.color = "red";
      document.getElementById("saving").innerHTML = "You Must Select Campaign Before Leads Can Be Saved!";
    }else{
    $.ajax({
      type: "POST",
          url: base_url+'Leads/save_lead', 
          data: {"name":result.detail.name,"email":'email',"site":result.url,"alias":result.detail.alias,"phone":result.detail.phone,"location":result.detail.location.address1,"img":result.detail.image_url,"country":result.detail.location.country,"campaign_id":selected},
        success: function(res) 
    {
      var res = JSON.parse(res);
    if (res.status == 'success'){
      console.log(res.status);
      document.getElementById("saving").style.display = "block"; 
      document.getElementById("saving").style.color = "green";
      document.getElementById("saving").innerHTML = "Leads successfully Added To Campaign";
    }else{
      document.getElementById("saving").style.display = "block"; 
      document.getElementById("saving").style.color = "red";
      document.getElementById("saving").innerHTML = "Leads Already saved to database"; 
      ///console.log(res.status);
    }

    }
    });
  }

  }); 

  $(document).on("click", ".contact", function(){
    
    $.ajax({
      type: "POST",
          url: base_url+'leads/contact_lead/c', 
          data: {"name":result.detail.name,"email":note,"site":result.url,"alias":result.detail.alias,"phone":result.detail.phone,"location":result.detail.location.address1,"img":result.detail.image_url,"country":result.detail.location.country},
      success: function(data) 
    { 
    var data = JSON.parse(data);  
    if(data.status == 'success'){
//console.log(data.lemail);
    window.location.replace(data.redirect);
    }
    if(data.status == 'error'){
      
      document.getElementById("saving").style.display = "block"; 
      document.getElementById("saving").style.color = "red";
      document.getElementById("saving").innerHTML = "This Business has not added their email yet!<br>Check Later";
    }
    

    }
    });
  }); 
  //   }
  // });

     

  

    }        
  });
});
  </script>