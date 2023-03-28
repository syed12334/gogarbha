<?php
// Merchant key here as provided by Payu
//$MERCHANT_KEY = "KsDoun";
$MERCHANT_KEY = "Z1bZM2";

// Merchant Salt as provided by Payu
//$SALT = "Bgekb0Uu";
$SALT = "HQ2DH5yK";

// End point - change to https://secure.payu.in for LIVE mode
//$PAYU_BASE_URL = "https://test.payu.in";
$PAYU_BASE_URL = "https://secure.payu.in";

$action = '';


$formError = 0;

$hash = '';
// Hash Sequence
$hashSequence = "key|txnid|amount|productinfo|firstname|email|udf1|udf2|udf3|udf4|udf5|udf6|udf7|udf8|udf9|udf10";
if(empty($hash)) {
  if(empty($key)
          || empty($txnid)
          || empty($amount)
          || empty($firstname)
          || empty($email)
          || empty($phone)
          || empty($productinfo)
          || empty($surl)
          || empty($furl)
		  || empty($service_provider)
  ) {
    $formError = 1;
  } else {
    //$posted['productinfo'] = json_encode(json_decode('[{"name":"tutionfee","description":"","value":"500","isRequired":"false"},{"name":"developmentfee","description":"monthly tution fee","value":"1500","isRequired":"false"}]'));
	$hashVarsSeq = explode('|', $hashSequence);
    $hash_string = '';	
	foreach($hashVarsSeq as $hash_var) {
      $hash_string .= isset($$hash_var) ? $$hash_var : '';
      $hash_string .= '|';
    }

   $hash_string .= $SALT;


    $hash = strtolower(hash('sha512', $hash_string));
    $action = $PAYU_BASE_URL . '/_payment';
  }
} elseif(!empty($hash)) {
  $hash = $postedhash;
  $action = $PAYU_BASE_URL . '/_payment';
}
?>
<html>
  <head>
  <script>
    var hash = '<?php echo $hash ?>';
    function submitPayuForm() {
      if(hash == '') {
        return;
      }
      var payuForm = document.forms.payuForm;
      payuForm.submit();
    }
  </script>
  </head>
  <body onload="submitPayuForm()">
    
    <?php if($formError) { ?>
	
      <span style="color:red">Please fill all mandatory fields.</span>
      <br/>
      <br/>
    <?php }
else{
    ?>
    <h2>Please wait redirecting....</h2>
    <br/>
    <?php }?>
    <form action="<?php echo $action; ?>" method="post" name="payuForm">
      <input type="hidden" name="key" value="<?php echo $MERCHANT_KEY ?>" />
      <input type="hidden" name="hash" value="<?php echo $hash ?>"/>
      <input type="hidden" name="txnid" value="<?php echo $txnid ?>" />
      <input type="hidden" name="amount" value="<?php echo (empty($amount)) ? '' : $amount ?>" />
      <input type="hidden" name="firstname" id="firstname" value="<?php echo (empty($firstname)) ? '' : $firstname; ?>" />
      <input type="hidden" name="email" id="email" value="<?php echo (empty($email)) ? '' : $email; ?>" />
      <input type="hidden" name="phone" value="<?php echo (empty($phone)) ? '' : $phone; ?>" />
      <input type="hidden" name="productinfo" value="<?php echo (empty($productinfo)) ? '' : $productinfo; ?>" />
      <input type="hidden" name="surl" value="<?php echo (empty($surl)) ? '' : $surl ?>" />
      <input type="hidden" name="furl" value="<?php echo (empty($furl)) ? '' : $furl ?>" />
      <input type="hidden" name="service_provider" value="payu_paisa" size="64" />
      <?php if(!$hash) { ?>
         <input type="submit" value="Submit" />
      <?php } ?>
       
    </form>
  </body>
</html>
