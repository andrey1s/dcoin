<!-- container -->
<div class="container">


	<legend><h2><?php echo $lng['upgrade_title']?></h2></legend>
	
    <ul class="nav nav-tabs">
		<li><a href="#" onclick="fc_navigate('upgrade_0')">Step 0</a></li>
		<li><a href="#" onclick="fc_navigate('upgrade_1')">Step 1</a></li>
		<li><a href="#" onclick="fc_navigate('upgrade_2')">Step 2</a></li>
		<li class="active"><a href="#" onclick="fc_navigate('upgrade_3')">Step 3</a></li>
	    <li><a href="#" onclick="fc_navigate('upgrade_4')">Step 4</a></li>
	    <li><a href="#" onclick="fc_navigate('upgrade_5')">Step 5</a></li>
    </ul>
    
	<legend>Host</legend>

	<?php echo $lng['your_host']?>
<br>
	<div class="alert alert-error" id="alert" style="display: none"><?php echo $lng['invalid_host']?></div>

	<input type="text" id="host" value="<?php echo $tpl['data']['host']?>">
	<br>
	<?php echo $lng['host_example']?>
	<script>
		$('#save').bind('click', function () {
			$('#alert').css("display", "none");
			$.post( 'ajax/save_host.php', { 'host' : $('#host').val() } ,
					function (data) {
						if (data.error) {
							$('#alert').css("display", "block");
						}
						else {
							fc_navigate('upgrade_4');
						}
					}, "JSON");
		});
	</script>
	<button class="btn btn-success" id="save"><?php echo $lng['save_and_goto_step_4']?></button>
	
	
	<br><br><br><br><br><br><br>
		
       

</div>
<!-- /container -->