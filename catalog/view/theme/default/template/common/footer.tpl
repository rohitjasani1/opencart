        <?php if($end == 'cart' || $end == 'checkout'){ ?>
<footer class="cart-footer"> <!-- footer start here -->
            <div class="container">
                <div class="clearfix">
                    <div class="payement-service">
                        <small>payment</small>
                        <img src="images/payatm.png">
                    </div>
                    <div class="payement-col">
                        <i class="my-icons-guranted"></i>
                        <p class="content">Quality Gauranteed<small>We provide highest quality</small></p>
                    </div>
                    <div class="payement-col">
                        <i class=" my-icons-payement"></i>
                        <p class="content">100% Secure payment <small>payments are safe and secure</small></p>
                    </div>
                </div>
                <div class="copyright">208 italiyajewels.com. All rights reserved</div>  <!--copyright end here --> 
            </div>
        </footer> <!-- footer end here -->  
        <?php }else{ ?>
<footer> <!-- footer start here -->
    <ul class="brand-list container"> <!-- brand-list start here -->
        <li>
            <i class=" my-icons-payement"></i>
            <p class="content">100% Secure payment <small>payments are safe and secure</small></p>
        </li> 
        <li>
            <i class=" my-icons-protection"></i>
            <p class="content">100% payment protection <small>Your purchase is secure</small></p>
        </li> 
        <li>
            <i class=" my-icons-guranted"></i>
            <p class="content">Quality Guaranteed<small>We provide highest quality</small></p>
        </li> 

    </ul> <!--brand-list start here-->
    <div class="f-menu"> <!--f-menu start here -->
        <div class="container">
            <div class="clearfix">
                <nav>
                    <h5 class="title">our company</h5>  
                    <ul>
       <li><a href="about-us">About us</a></li>
       <li><a href="why-choose-us">Why Choose us</a></li>
       <li><a href="contact"><?php echo $text_contact; ?></a></li>
                    </ul>

                </nav>
                <nav>
                    <h5 class="title">information</h5>  
                    <ul>
                        
      <li><a href="privacy-policy">Privacy Policy</a></li>
      <li><a href="shipping-policies">Shipping Policies</a></li>
      <li><a href="terms-conditions">Terms & Conditions</a></li>
       <li><a href="return-exchange-policies">Return And Exchange Policies</a></li>
	   <li><a href="sitemap">Site Map</a></li>
                        <?php /* foreach ($informations as $information) { ?>
                            <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                        <?php } */ ?>
                    </ul>
                </nav>
                <nav>
                    <h5 class="title">Top Categories</h5>  
                    <ul>
 <li><a href="login"><?php echo $text_account; ?></a></li>
 <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
 <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
 <li><a href="blog">Blogs</a></li>
                    </ul>

                </nav>
<!--                <form action="" method="post">
		<div class="form-group required">
            <label class="col-sm-2 control-label" for="input-firstname">Email:</label>
            <div class="col-sm-10">
              <input type="email" name="txtemail" id="txtemail" value="" placeholder="" class="form-control input-lg"  /> 
    	       
            </div>
		</div>
		<div class="form-group required">
            <label class="col-sm-2 control-label" for="input-firstname">Email:</label>
            <div class="col-sm-10">
              <button type="submit" class="btn btn-default btn-lg" onclick="return subscribe();">Subscribe</i></button>  
    	       
            </div>
		</div>
		</form>-->
                <article class="newsletter">
                    <h5>Sign up to our newsletter</h5>
                    <form action="" method="post">
                        <div class="form-group">
                            <input type="email" name="txtemail" id="txtemail" value="" placeholder="Your email address" class="form-control">
                            <button type="submit" onclick="return subscribe();"></button>  
                        </div>
                        <span class="lead">Subscribe now to get updates on promotions<br> and coupons</span>
                    </form>
                    <i class="my-icons-guranted-long"></i>
                </article>
            </div>
            <ul class="social-list clearfix">
                <li>
                    <span>Payment</span>
                    <img src="images/payatm-icon.png" alt="pure silver jewellery online shopping">

                </li>
                <li class="text-center">
                    <span>It's Trust thing</span>
                    <img src="images/webp/thawte-security.webp" alt="online silver jewellery shopping">
                </li>
                <li class="text-right">
                    <span>Follow Us</span>
                    <a rel="nofollow" href="https://www.facebook.com/italiyajewels" target="_blank"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                    <a rel="nofollow" href="https://twitter.com/italiyajewels" target="_blank"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                    <a rel="nofollow" href="https://www.pinterest.com/italiyajewels" target="_blank"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                    <a rel="nofollow" href="https://www.instagram.com/italiyajewels" target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                </li>
            </ul>
        </div>
    </div>  <!--f-menu end here -->
    <div class="copyright">2018 italiyajewels.com. All rights reserved</div>  <!--copyright end here --> 
</footer> <!-- footer end here -->   

        <?php } ?>
        
        <div style='display:none'> <!-- popup requesta-callback start here -->
    <div id='request' class="request-popup">
        <form class="popup"> 
            <span class="title">Request a Callback</span> 
            <span class="call-back"><i class="my-icons-call"></i>+91-8600718666 </span>
            <div class="in">
            <div class="clearfix">
                 <div class="one-half">
                    <label>Name*</label>
                    <input type="text" name="name" placeholder="Your Full Name" class="form-control call_name">
                    <label>Email*</label>
                    <input type="email" name="email" placeholder="Your Email Address" class="form-control call_email">
                     <label>Phone*</label>
                    <input type="text" name="phone" placeholder="Phone Number" class="form-control call_number">  
                </div>
                 <div class="one-half">
                    <label>Preferred Time</label>
                    <select class="form-control claa_slot_time" name="slot_time">
                        <option>10 AM - 12 PM</option>
                        <option>12 PM - 02 PM</option>
                        <option>02 PM - 04 PM</option>
                        <option>04 PM - 06 PM</option>                  
                       </select>
                     <label>Message*</label>
                    <textarea class="form-control call_message" name="message" placeholder="Your Reviews"></textarea>
                </div>
                     
            </div>
             </div>
            <button class="submit" onclick="return call_request();">Submit</button>
                     
        </form>  
    </div>
</div>
   <!-- <?php if(!isset($_COOKIE['visited']) && $_COOKIE['visited']!='yes'){ ?>   
   
        <div style='display:none'>
        <div class="load-popup">
            <div class="buttons">
                <a href="/register" class="btn-sign">Signup</a>
                <a href="/register" class="social"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                <a href="/register" class="social"><i class="fa fa-google-plus" aria-hidden="true"></i></a>
            </div>
        </div>
            </div>
	 <?php } ?>-->
<script defer>
//$(document).ready(function(){if(-1==document.cookie.indexOf("visited=true")){var e=6048e5,i=new Date((new Date).valueOf()+e);document.cookie="visited=true;expires="+i.toUTCString(),$.colorbox({inline:!0,href:".load-popup",innerWidth:387,innerHeight:418,fixed:!0})}});
</script>

<!-- Start back to top -->
<a href="javascript:void(0)" class="go-top"></a>
<script src="catalog/view/javascript/js/jquery.flexslider.js" defer="defer"></script>
<script src="catalog/view/javascript/js/jquery.sticky-kit.min.js" defer="defer"></script>
<script src="catalog/view/javascript/js/jquery.easing.min.js" defer="defer"></script>
<script src="catalog/view/javascript/js/jquery.colorbox.js" defer="defer"></script>
<script type="text/javascript" src="catalog/view/javascript/js/jquery.smartmenu.js" defer="defer"></script>
<script type="text/javascript" src="catalog/view/javascript/js/jquery.mCustomScrollbar.concat.min.js" defer="defer"></script>
<script src="catalog/view/javascript/js/common.js" defer="defer"></script>
<script src="catalog/view/javascript/js/mobile.js" defer="defer"></script>
 <?php if ($live_search_ajax_status):?>
	            <!--<link rel="stylesheet" type="text/css" href="catalog/view/theme/default/stylesheet/live_search.css" />-->
				<script type="text/javascript" async><!--
					var live_search = {
						selector: '#search input[name=\'search\']',
						text_no_matches: '<?php echo $text_empty; ?>',
						height: '50px'}
					$(document).ready(function() {
						var html="";html+='<div class="live-search">',html+="	<ul>",html+="	</ul>",html+='<div class="result-text"></div>',html+="</div>",$(live_search.selector).after(html);
						$(live_search.selector).autocomplete({
							'source': function(request, response) {
								var filter_name = $(live_search.selector).val();
								var live_search_min_length = '<?php echo (int)$live_search_min_length; ?>';
								if (filter_name.length < live_search_min_length) {
									$('.live-search').css('display','none');
								}
								else{
									var html="";html+='<li style="text-align: center;height:10px;">',html+='<img class="loading" src="catalog/view/theme/default/image/loading.gif" />',html+="</li>",$(".live-search ul").html(html),$(".live-search").css("display","block");

									$.ajax({
										url: 'index.php?route=product/live_search&filter_name=' +  encodeURIComponent(filter_name),
										dataType: 'json',
										success: function(result) {
											var products = result.products;
											$('.live-search ul li').remove();
											$('.result-text').html('');
											if (!$.isEmptyObject(products)) {
												var show_image = <?php echo $live_search_show_image;?>;
												var show_price = <?php echo $live_search_show_price;?>;
												var show_description = <?php echo $live_search_show_description;?>;
												$('.result-text').html('<a href="<?php echo $live_search_href;?>'+filter_name+'" class="view-all-results"><?php echo $text_view_all_results;?> ('+result.total+')</a>');

												$.each(products,function(a,s){var i="";i+="<li>",i+='<a href="'+s.url+'" title="'+s.name+'">',s.image&&show_image&&(i+='	<div class="product-image"><img alt="'+s.name+'" src="'+s.image+'"></div>'),i+='	<div class="product-name">'+s.name,show_description&&(i+="<p>"+s.extra_info+"</p>"),i+="</div>",show_price&&(i+=s.special?'	<div class="product-price"><span class="special">'+s.price+'</span><span class="price">'+s.special+"</span></div>":'	<div class="product-price"><span class="price">'+s.price+"</span></div>"),i+='<span style="clear:both"></span>',i+="</a>",i+="</li>",$(".live-search ul").append(i)});
											} else {
												var html="";html+='<li style="text-align: center;height:10px;">',html+=live_search.text_no_matches,html+="</li>",$(".live-search ul").html(html);
											}
											$('.live-search ul li').css('height',live_search.height);
											$('.live-search').css('display','block');
											return false;
										}
									});
								}
							},
							'select': function(product) {
								$(live_search.selector).val(product.name);
							}
						});

						var html="";$(document).bind("mouseup touchend",function(e){var t=$(".live-search");t.is(e.target)||0!==t.has(e.target).length||t.hide()});
					});
				//--></script>
                                <script async>
	function subscribe(){var e=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/,a=$("#txtemail").val();return""!=a?e.test(a)?($.ajax({url:"index.php?route=extension/module/newsletters/news",type:"post",data:"email="+$("#txtemail").val(),dataType:"json",success:function(e){$("#txtemail").val(""),alert(e.message)}}),!1):(alert("Invalid Email"),$("#txtemail").focus(),!1):(alert("Please provide valid e-mail address"),$(a).focus(),!1)}
		function call_request(){return""==$(".call_name").val()?($(".call_name").css("border","1px solid red"),!1):""==$(".call_email").val()?($(".call_name").css("border","1px solid #dadada"),$(".call_email").css("border","1px solid red"),!1):""==$(".call_number").val()?($(".call_email").css("border","1px solid #dadada"),$(".call_number").css("border","1px solid red"),!1):""==$(".call_message").val()?($(".call_number").css("border","1px solid #dadada"),$(".call_message").css("border","1px solid red"),!1):void $.ajax({url:"index.php?route=common/home/callback_request",type:"POST",data:$(".request-popup input, textarea,select")}).done(function(e){"1"==e?($(".request-popup input, textarea").val(""),$(".popup span.call-back").after('<div class="alert alert-success">Success: Thank you for showing interest!</div>')):$(".request-popup").after('<div class="alert alert-danger">Something went wrong! Please check carefully.</div>')})}
	</script>
			<?php endif;?>

<?php if (!isset($_SERVER['HTTP_USER_AGENT']) || stripos($_SERVER['HTTP_USER_AGENT'], 'Speed Insights') === false){ ?>
<!--
<script type="text/javascript" async>
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
var Tawk_API=Tawk_API||{},Tawk_LoadStart=new Date;!function(){var e=document.createElement("script"),t=document.getElementsByTagName("script")[0];e.async=!0,e.src="https://embed.tawk.to/59a542b1b6e907673de0a44c/default",e.charset="UTF-8",e.setAttribute("crossorigin","*"),t.parentNode.insertBefore(e,t)}();
</script>-->
<!--End of Tawk.to Script-->
<?php } ?>

<!--
<script type="application/ld+json">
{ "@context" : "http://schema.org",
  "@type" : "Organization",
  "name" : "ItaliyaJewels",
  "url" : "https://www.italiyajewels.com/",
  "sameAs" : [ "https://www.facebook.com/ornatejewelscom",
    "https://twitter.com/ornatejewelscom",
    "https://plus.google.com/102333590500856537008",
    "https://www.instagram.com/ornatejewels/",
    "https://myspace.com/ornatejewels",
    "https://in.linkedin.com/in/shelly-l-3667b1138",
    "https://www.youtube.com/channel/UC9_02TJWGcntmvz2sGMIKUg",
    "http://plus.google.com/your_profile"] 
}
</script>
-->

</body></html>
