<!-- IMPORT partials/breadcrumbs.tpl -->

<!-- IF valid -->
<div class="alert alert-success" id="success">
	<strong>We have mailed you an OTP</strong>
	<p></p>
</div>

<div class="well">
	<!-- IF displayExpiryNotice -->
	<div class="alert alert-warning">
		[[reset_password:password_expired]]
	</div>
	<!-- ENDIF displayExpiryNotice -->
	<div class="alert alert-success hidden" id="success">
		<button type="button" class="close" data-dismiss="alert">&times;</button>
		<strong>[[reset_password:password_changed.title]]</strong>
		<p>[[reset_password:password_changed.message]]</p>
	</div>
	<div class="alert alert-warning hidden" id="notice">
		<strong></strong>
		<p></p>
	</div>
    <div class="alert alert-danger hidden" id="errors">
		<strong></strong>
		<p></p>
	</div>
	<div class="row m-auto">
		<div class="col-md-6 m-auto border"> 
			<form onsubmit="return false;" style="font-weight: 600;" id="reset-form" class="col-12 mt-4 mb-4" >
				<div class="col-12">
					<label for="otp">[[reset_password:enter_otp]]</label>
					<input class="form-control" type="text" placeholder="[[reset_password:enter_otp]]" id="otp" /><br />
				</div>
				<div class="col-12">
					<label for="password">[[reset_password:new_password]]</label>
					<input class="form-control" type="password" placeholder="[[reset_password:new_password]]" id="password" /><br />
				</div>
				<div class="col-12">
					<label for="repeat">[[reset_password:repeat_password]]</label>
					<input class="form-control" type="password" placeholder="[[reset_password:repeat_password]]" id="repeat" /><br />
				</div>
				<div class="col-12">
					<button class="btn btn-primary btn-block" id="reset" type="submit">[[reset_password:reset_password]]</button>
				</div>
			</form>
		</div>
	</div>

</div>
<!-- ELSE -->
<div class="panel panel-default panel-danger">
	<div class="panel-heading">
		<h3 class="panel-title">[[reset_password:wrong_reset_code.title]]</h3>
	</div>
	<div class="panel-body">
		<p>[[reset_password:wrong_reset_code.message]]</p>
	</div>
</div>
<!-- ENDIF valid -->