<!DOCTYPE html>
<html lang="en">

<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	<title><?= APP_NAME ?> - Login</title>
	<link href="<?= base_url('sb-admin-2/') ?>/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

	<link href="<?= base_url('sb-admin-2/') ?>/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary" style="background-image: url('<?= base_url("assets/2.jpg") ?>'); background-repeat: repeat; background-size: 500px 500px;">

	<div class="container">

		<!-- Outer Row -->
		<div class="row justify-content-center">

			<div class="col-md-6">

				<div class="card o-hidden border-0 shadow-lg my-5">
					<div class="card-body p-0">
						<!-- Nested Row within Card Body -->
						<div class="row">
							<div class="col">
<?php if(checkSession('success')): ?>
    <div class="alert alert-success alert-dismissible fade show" role="alert">
        <?= getSession('success', true) ?>
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
<?php elseif(checkSession('error')): ?>
    <div class="alert alert-danger alert-dismissible fade show" role="alert">
        <?= getSession('error', true) ?>
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
<?php endif ?>
```
								<div class="p-5">
									<div class="text-center">
										<h1 class="h4 text-gray-900 mb-4">Log In</h1>
									</div>
									<?php if(checkSession('success')): ?>
										<div class="alert alert-success alert-dismissible fade show" role="alert">
								  			<?= getSession('success', true) ?>
								  			<button type="button" class="close" data-dismiss="alert" aria-label="Close">
								    			<span aria-hidden="true">&times;</span>
								  			</button>
										</div>
									<?php elseif(checkSession('error')): ?>
										<div class="alert alert-danger alert-dismissible fade show" role="alert">
								  			<?= getSession('error', true) ?>
								  			<button type="button" class="close" data-dismiss="alert" aria-label="Close">
								    			<span aria-hidden="true">&times;</span>
								  			</button>
										</div>
									<?php endif ?>
									<form class="user" method="POST" action="<?= base_url('auth/login') ?>">
										<div class="form-group">
											<input type="text" class="form-control form-control-user" name="username" placeholder="username" autocomplete="off" required="required" autofocus>
										</div>
										<div class="form-group">
											<input type="password" class="form-control form-control-user" name="password" placeholder="password" required="required">
										</div>
										<button class="btn btn-primary btn-user btn-block" name="login">Login</button>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="<?= base_url('sb-admin-2/') ?>/vendor/jquery/jquery.min.js"></script>
	<script src="<?= base_url('sb-admin-2/') ?>/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="<?= base_url('sb-admin-2/') ?>/vendor/jquery-easing/jquery.easing.min.js"></script>
	<script src="<?= base_url('sb-admin-2/') ?>/js/sb-admin-2.min.js"></script>


<!-- Modal Notification -->
<div class="modal fade" id="notificationModal" tabindex="-1" role="dialog" aria-labelledby="notificationModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="notificationModalLabel">Notification</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body" id="notificationMessage">
        <!-- Message will be inserted here -->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<script>
$(document).ready(function() {
    var message = "";
    var messageType = "";

    <?php if(checkSession('success')): ?>
        message = "<?= getSession('success', true) ?>";
        messageType = "success";
    <?php elseif(checkSession('error')): ?>
        message = "<?= getSession('error', true) ?>";
        messageType = "error";
    <?php endif ?>

    if (message !== "") {
        $("#notificationMessage").text(message);
        $("#notificationModal").modal("show");
    }
});
</script>

</body>

</html>
