<?php echo $header; ?>
<section class="cart-main">
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($attention) { ?>
  <div class="alert alert-info"><i class="fa fa-info-circle"></i> <?php echo $attention; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <?php if ($error_warning) { ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <?php } ?>
  <div class="row"><?php echo $column_left; ?>
    <div id="content" class=""><?php echo $content_top; ?>
      <h1><?php echo $heading_title; ?>
        <?php /*if ($weight) { ?>
        &nbsp;(<?php echo $weight; ?>)
        <?php }*/ ?>
      </h1>
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="MyForm">
          <div class="cart-box"> <!--cart-box start  here --> 
                    <div class="heading">
                        <span class="title"><?php echo $column_name; ?></span>
                        <span class="title">Unit Price</span>
                        <span class="title">Quantity</span>
                        <span class="title removetop">Remove </span>
                        <span class="title">Total Price</span>
                    </div> 
                         <?php foreach ($products as $product) { ?>
                    <div class="cart-descraption">    
                        <div class="product col">
                                <a href="<?php echo $product['href']; ?>">
                                    <?php if ($product['thumb']) { ?>
                                        <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" />
                                    <?php } ?>
                                    <p><?php echo $product['name']; ?></p></a>
                                <?php if (!$product['stock']) { ?>
                                    <span class="text-danger">***</span>
                                <?php } ?>
                                <?php if ($product['option']) { ?>
                                    <?php foreach ($product['option'] as $option) { ?>
                                        <br />
                                        <small><?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
                                    <?php } ?>
                                <?php } ?>
                            </div>
                        <div class="price col">
                            <?php if($product['custom_special_withoutformat']!=0){ ?>
                            <p> <strike> <?php echo $product['custom_price']; ?></strike> <?php echo $product['custom_special']; ?></p>
                            <small>You've Saved   <?php echo $product['custom_discount']; ?></small>
                            <?php }else{ ?>
                            <p> <?php echo $product['price']; ?></p>
                            <?php } ?>
                        </div>
                        <div class="quantity col">
                            <select name="quantity[<?php echo $product['cart_id']; ?>]" onchange="$('form#MyForm').submit();">
                                <option value="1" <?php if($product['quantity']=='1'){ echo 'selected'; } ?>>1</option>
                                <option value="2" <?php if($product['quantity']=='2'){ echo 'selected'; } ?>>2</option>
                                <option value="3" <?php if($product['quantity']=='3'){ echo 'selected'; } ?>>3</option>
                                <option value="4" <?php if($product['quantity']=='4'){ echo 'selected'; } ?>>4</option>
                                <option value="5" <?php if($product['quantity']=='5'){ echo 'selected'; } ?>>5</option>
                            </select>
                        </div>
                        <div class="remove col">
                            <span class="remove-btn"><i onclick="cart.remove('<?php echo $product['cart_id']; ?>');" class="fa fa-trash-o" aria-hidden="true"></i></span>    

                        </div>
                        <div class="total col">
                           <?php echo $product['total']; ?>
                        </div>
                    </div>
                         <?php } ?>
<!--                    <div class="cart-descraption">     
                        <div class="product col">
                            <img src="images/product-checkou.jpg">
                            <p>18K Yellow Gold Plated Knotty</p>
                        </div>
                        <div class="price col">
                            <p> <strike> Rs 3,461</strike> Rs 2,287 </p>
                            <small>You've Saved   Rs. 1,174</small>
                        </div>
                        <div class="quantity col">
                            <input type="text" name="quantity[<?php //echo $product['cart_id']; ?>]" value="<?php //echo $product['quantity']; ?>" size="1" class="form-control" />
                            <select name="quantity[<?php echo $product['cart_id']; ?>]">
                                <option <?php if($product['quantity']=='1'){ echo 'selected'; } ?>>1</option>
                                <option <?php if($product['quantity']=='2'){ echo 'selected'; } ?>>2</option>
                                <option <?php if($product['quantity']=='3'){ echo 'selected'; } ?>>3</option>
                                <option <?php if($product['quantity']=='4'){ echo 'selected'; } ?>>4</option>
                                <option <?php if($product['quantity']=='5'){ echo 'selected'; } ?>>5</option>
                            </select>
                        </div>
                        <div class="remove col">
                            <span class="remove-btn"><i class="fa fa-trash-o" aria-hidden="true"></i></span>    

                        </div>
                        <div class="total col">
                            Rs 2,287
                        </div>
                    </div>-->
                </div>  <!--cart-box end  here -->   
        
      </form>
        <div class="clearfix"> <!--cart-coupon start  here -->    
            <?php if ($modules) { ?>
      <!--<h2><?php echo $text_next; ?></h2>-->
      <!--<p><?php echo $text_next_choice; ?></p>-->
      <div class="panel-group" id="accordion">
        <?php foreach ($modules as $module) { ?>
        <?php echo $module; ?>
        <?php } ?>
      </div>
      <?php } ?>
                    
                    <div class="cart-coupon-info">
                         <?php foreach ($totals as $total) { ?>
                         <p class="clearfix"> <?php echo $total['title']; ?>:<span><?php echo $total['text']; ?></span></p>
                        <?php } ?>
                    </div>
                </div>
      <?php /* if ($modules) { ?>
      <h2><?php echo $text_next; ?></h2>
      <p><?php echo $text_next_choice; ?></p>
      <div class="panel-group" id="accordion">
        <?php foreach ($modules as $module) { ?>
        <?php echo $module; ?>
        <?php } ?>
      </div>
      <?php }*/ ?>
      <!--<br />-->
<!--      <div class="row">
        <div class="col-sm-4 col-sm-offset-8">
          <table class="table table-bordered">
            <?php foreach ($totals as $total) { ?>
            <tr>
              <td class="text-right"><strong><?php echo $total['title']; ?>:</strong></td>
              <td class="text-right"><?php echo $total['text']; ?></td>
            </tr>
            <?php } ?>
          </table>
        </div>
      </div>-->
      <div class="buttons clearfix">
        <div class="pull-left"><a href="<?php echo $continue; ?>" class="btn-yellow pull-left"><?php echo $button_shopping; ?></a></div>
        <div class="pull-right"><a href="<?php echo $checkout; ?>" class="btn-yellow btn-yellow-small  pull-right"><?php echo $button_checkout; ?></a></div>
      </div>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
</section>
<?php echo $footer; ?>
