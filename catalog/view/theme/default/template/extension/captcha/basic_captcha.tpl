<fieldset>
  <!--<legend><?php //echo $text_captcha; ?></legend>-->
  <div class="form-group required">
    <?php if (substr($route, 0, 9) == 'checkout/') { ?>
    <!--<label class="control-label" for="input-payment-captcha"><?php //echo $entry_captcha; ?></label>-->
    <input type="text" placeholder="Captcha" name="captcha" id="input-payment-captcha" class="form-control" autocomplete="off" />
    <img src="index.php?route=extension/captcha/basic_captcha/captcha" alt="" class="code"/>
    <img src="images/reload.png" alt="reload" class="reload"> 
    <?php } else { ?>
    <!--<label class="col-sm-2 control-label" for="input-captcha"><?php //echo $entry_captcha; ?></label>-->
    <div class="col-sm-10">
        <input type="text" placeholder="Captcha" name="captcha" id="input-captcha" class="form-control" />
        <img src="index.php?route=extension/captcha/basic_captcha/captcha" alt="" class="code" />
      <img src="images/reload.png" alt="reload" class="reload"> 
      <?php if ($error_captcha) { ?>
      <div class="text-danger"><?php echo $error_captcha; ?></div>
      <?php } ?>
    </div>
    <?php } ?>
  </div>
</fieldset>
