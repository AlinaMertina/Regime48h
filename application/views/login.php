<!DOCTYPE html>
<html>
<head>
	<title>Login et incsription</title>
	<link rel="stylesheet" href="<?php echo base_url("assets/libs/vendor/bootstrap/css/bootstrap.min.css"); ?>">
    <link href="<?php echo base_url("assets/libs/vendor/fonts/circular-std/style.css"); ?>" rel="stylesheet">
    <link rel="stylesheet" href="<?php echo base_url("assets/libs/vendor/datepicker/tempusdominus-bootstrap-4.css"); ?>">
    <link rel="stylesheet" href="<?php echo base_url("assets/libs/css/style.css"); ?>" />
    <link rel="stylesheet" href=" <?php echo base_url("assets/libs/vendor/inputmask/css/inputmask.css"); ?>" />
   
</head>
<body>
	<div class="row">

            <div class="container-fluid" style=" width: 400px; margin-top: 100px;">
                <div class="card">
                    <div class="card-body">
                        <h2 style="text-align: center">LOGIN</h2>
                        <form action="<?php echo base_url("index.php/CT_CRUD/loginClient"); ?>" method="POST" >
                            <div class="form-group" style=" justify-content: space-between;">
                                <div class="form-group">
                                    <label for="inputDefault" class="col-form-label">Nom</label>
                                    <input id="inputDefault" type="text" placeholder="Nom" class="form-control" name="nom" value="Mertina">
                                </div>
                                <div class="form-group">
                                    <label for="inputDefault" class="col-form-label">Password</label>
                                    <input id="inputDefault" type="password" placeholder="Password" class="form-control" style="" name="mdp" value="mertina44">
                                </div>	
                            </div>
                                <div class="input-group-append">
                                    <input type="submit" value="Login" class="btn btn-primary" style="float: right;">
                                </div>
                                
                        </form>
                                <div style="margin-top: 10px;">
                                    <a href="<?php echo base_url("index.php/CT_CRUD/inscription"); ?>">Pas encore Membre!</a>
                                </div>
                        
                    </div>
                </div>
            </div>
        </form>

    </div>
</body>
</html>