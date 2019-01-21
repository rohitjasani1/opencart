<table id="cart_table" class="table table-bordered table-hover table-responsive">
  <thead>
<tr>
  <th class="text-left">Image</th>
  <th class="text-left"><?php echo $column_name; ?></th>
  <th class="text-left hidden-xs"><?php echo $column_model; ?></th>
  <th class="text-right hidden-xs"><?php echo $column_quantity; ?></th>
  <th class="text-right hidden-xs"><?php echo $column_price; ?></th>
  <th class="text-right"><?php echo $column_total; ?></th>
</tr>
  </thead>
  <tbody>
<?php foreach ($products as $product) { ?> 
<tr>
<td class="text-left">
    <img src="<?php echo $product['thumb']; ?>"/>
</td>
  <td class="text-left"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
	<?php foreach ($product['option'] as $option) { ?>
	<br />
	&nbsp;<small> - <?php echo $option['name']; ?>: <?php if (isset($option['option_value']) && !empty($option['option_value'])) echo $option['option_value'];else if (isset($option['value'])) echo $option['value']; ?></small>
	<?php } ?></td>
  <td class="text-left hidden-xs"><?php echo $product['model']; ?></td>
  <td class="text-right hidden-xs"><?php echo $product['quantity']; ?></td>
  <td class="text-right hidden-xs"><?php echo $product['price']; ?></td>
  <td class="text-right"><?php echo $product['total']; ?></td>
</tr>
<?php } ?>
<?php foreach ($vouchers as $voucher) { ?>
<tr>
  <td class="text-left"><?php echo $voucher['description']; ?></td>
  <td class="text-left hidden-xs"></td>
  <td class="text-right hidden-xs">1</td>
  <td class="text-right hidden-xs"><?php echo $voucher['amount']; ?></td>
  <td class="text-right"><?php echo $voucher['amount']; ?></td>
</tr>
<?php } ?>
  </tbody>
  <tfoot>
<?php foreach ($totals as $total) { ?>
<tr>
  <td colspan="5" class="text-right  hidden-xs"><strong><?php echo $total['title']; ?>:</strong></td>
  <td class="text-right"><?php echo $total['text']; ?></td>
</tr>
<?php } ?>
  </tfoot>
</table>
 
<h3>Do you Have a Coupon?  (Coupon Valid for one time use only)</h3>
<div class="checkout-main">
    <div class="cart-coupon">
    <!--<label>Enter your coupon here</label>-->
    <div class="form-group">

        <input type="text" name="coupon" value="<?php echo $coupon; ?>" placeholder="Enter your coupon here" id="input-coupon" class="form-control">
        <button class="btn-apply btn-yellow btn-yellow-small" id="button-coupon" data-loading-text="Loading...">Apply </button><br/>
        <?php if($removeIcon=='1'){ ?>
        <span class="removeCouponClass">
            Remove Coupon(<?php echo $coupon; ?>) <a onclick="removeCoupon(); return false;" class="removeCoupon">x</a> 
        </span>
        <?php } ?>
    </div>
</div>
</div>
<script type="text/javascript">
    
$('#button-coupon').on('click', function() {
	$.ajax({
		url: 'index.php?route=extension/total/coupon/coupon',
		type: 'post',
		data: 'coupon=' + encodeURIComponent($('input[name=\'coupon\']').val()),
		dataType: 'json',
		beforeSend: function() {
			$('#button-coupon').button('loading');
		},
		complete: function() {
			$('#button-coupon').button('reset');
		},
		success: function(json) {
			$('.alert').remove();

			if (json['error']) {
				$('.breadcrumb').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

				$('html, body').animate({ scrollTop: 0 }, 'slow');
			}else{
                         $('.breadcrumb').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> Success: Your coupon discount has been applied!<button type="button" class="close" data-dismiss="alert">×</button></div>');
                        $('html, body').animate({ scrollTop: 0 }, 'slow');
                        $("#cart_table").load('index.php?route=checkout/checkout/cart');
                    }
			//if (json['redirect']) {
		//	location = json['redirect'];
		//	}
		}
	});
});
function removeCoupon(){
    $.ajax({
		url: 'index.php?route=extension/total/coupon/removeCoupon',
		type: 'post',
		//data: 'coupon=' + encodeURIComponent($('input[name=\'coupon\']').val()),
		dataType: 'json',
		beforeSend: function() {
			$('#button-coupon').button('loading');
		},
		complete: function() {
			$('#button-coupon').button('reset');
		},
		success: function(json) {
                    if(json==1){
			$('.alert').remove();
                        $('.breadcrumb').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> Success: Coupon removed successfully!<button type="button" class="close" data-dismiss="alert">×</button></div>');
                        $("#cart_table").load('index.php?route=checkout/checkout/cart');
//                        $('.breadcrumb').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> Success: Your coupon discount has been applied!<button type="button" class="close" data-dismiss="alert">×</button></div>');
                        $('html, body').animate({ scrollTop: 0 }, 'slow');
                    }else{
                        $('.breadcrumb').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> Success: Your coupon discount has been applied!<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

			$('html, body').animate({ scrollTop: 0 }, 'slow');
                    }
                        }
	});
    }
</script>