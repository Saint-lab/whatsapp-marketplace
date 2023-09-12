<?php //if(get_data($resultt, "oto_4") == 1) : ?>
<div class="row">
    <div class="col-md-12">
        <div >
            <div class="card-header">
                <div class="card-title"><i class="fa fa-cart-plus text-success"></i> <?php _e("Orders List")?></div>
            </div>
            <br>
            <?php if($cartp !=null){  ?>
              <div class="table-responsive--sm table-responsive">
                <table  style=" border-collapse: collapse;
    margin-left: 5px;
    font-size: 0.9em;
    font-family: sans-serif;
    width: 100%;
    
    box-shadow: 0 0 12px rgba(0, 0, 0, 0.15);">
               
               <thead style="
                background-color: #00004d;
    color: #ffffff;
    text-align: center;
               "><tr style=" background-color: #333333;
    color: #ffffff;
    text-align: center;border-bottom: thin solid #dddddd;">
                   <th style="padding: 12px 15px;">Transection ID</th>
                    <th style="padding: 12px 15px;">Product Name</th>
                    <th style="padding: 12px 15px;">Price</th>
                    <th style="padding: 12px 15px;">Client Name</th>
                    <th style="padding: 12px 15px;">Client Email</th>
                    <th style="padding: 12px 15px;">Client Phone</th>
                    <th style="padding: 12px 15px;">Address</th>
                    <th style="padding: 12px 15px;">Status</th>
                    <th style="padding: 12px 15px;">Market</th>
                   <th style="padding: 12px 15px;">ACTIONS</th>
                      </tr>
               </thead>
               <tbody style="border-bottom: thin solid #dddddd;">
                <?php foreach($cartp as $key =>  $result) : 
                
                                  
               ?>
                  <tr style=" background-color: #e6e6e6;
    color: #4d4d4d;
    text-align: center;text-align: 18px;">
                   <td style="text-align:center;padding: 12px 15px;"><?php _e($result['customer_id'])?></td>  
                    <td style="text-align:center;padding: 12px 15px;"><?php _e($result['product_name'])?></td>
                     <td style="text-align:center;padding: 12px 15px;">$<?php _e($result['product_price'])?></td>
                      <td style="text-align:center;padding: 12px 15px;"><?php _e($result['name'])?></td>
            <td style="text-align:center;padding: 12px 15px;">
                       <?php _e($result['email'])?>
                    </td>
          <td style="text-align:center;padding: 12px 15px;">
             <?php _e($result['phone_no'])?>
          </td> 
          <td style="text-align:center;padding: 12px 15px;">
             <?php _e($result['add1'])?>
          </td>
          <td style="text-align:center;padding: 12px 15px;">
            <?php if($result['status'] == 1){
              echo '<a href="#" class="btn btn-warning">Pending</a>';
            }elseif ($result['status'] == 2) {
             echo '<a href="#" class="btn btn-success">Successful</a>';
            }   ?>
          </td>
          <td style="text-align:center;padding: 12px 15px;">
            <?php echo $result['market']; ?>
          </td>
                                    
                    <td style="text-align:center;padding: 12px 15px;">
                    <div class="btn-group">
                            <button type="button" class="btn dropdown-toggle" data-toggle="dropdown"><i class="fas fa-ellipsis-h"></i></button>
                            <div class="dropdown-menu dropdown-menu-anim">
                                <!-- <a 
                                    class="dropdown-item actionItem" 
                                    data-result="html" 
                                    data-content="column-two"
                                    href="<?php _e( get_module_url('index/edit_product/'.$result['id']) )?>"
                                    data-history="<?php _e( get_module_url('index/edit_product/'.get_data($result, 'id') ) )?>" 
                                    data-call-after="Core.date();"
                                ><i class="far fa-edit text-success"></i> <?php _e('Edit')?></a> -->
                                <a class="dropdown-item actionItem" href="<?php _e( get_module_url('delete/'.$result['id'] ) )?>" data-id="<?php _e( get_data($result, 'id') )?>" data-confirm="<?php _e('Are you sure to delete this Product?')?>" data-remove="item"><i class="far fa-trash-alt text-danger"></i> <?php _e('Delete')?></a>
                            </div>
                        </div>
                    </td>
                    
                  </tr>
                 
                 
                   <?php  endforeach; ?>
                  </tbody>
                  </table>
                 </div>
                 <?php }else{
                  echo "<div style='width:60%;margin-left:20%;padding:12px;' class='bg-warning text-white'><span style='padding:10px 25px;'>You have no Order</span></div>";
                 } ?> 
               
        </div>  
    </div>
                           </div> 

                           <script type="text/javascript">
                             $('table').scrollTableBody();
                           </script>