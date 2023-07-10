<!DOCTYPE html>
<html>
<head>
	<title>Login et incsription</title>
	<link rel="stylesheet" href="<?php echo base_url("assets/libs/vendor/bootstrap/css/bootstrap.min.css"); ?>">
    <link href="<?php echo base_url("assets/libs/vendor/fonts/circular-std/style.css"); ?>" rel="stylesheet">
    <link rel="stylesheet" href="<?php echo base_url("assets/libs/vendor/inputmask/css/inputmask.css"); ?>">
    <link rel="stylesheet" href="<?php echo base_url("assets/libs/vendor/datepicker/tempusdominus-bootstrap-4.css"); ?>" />
   
    <link rel="stylesheet" href="<?php echo base_url("assets/libs/css/style.css"); ?>" />

</head>
<body>
	<div class="row">
		<div class="container-fluid" style="width: 550px; margin-top: 40px;">
            <div class="card">
                <div class="card-body">
                	<h2 style="text-align: center">INSCRIPTION</h2>
                    <form action="<?php echo base_url("index.php/CT_CRUD/setinscription"); ?>" method="post">
                        <div class="form-group" style="display: flex; justify-content: space-between;">
                            <div>	
	                            <label for="inputText3" class="col-form-label">Nom</label>
	                            <input id="inputText3" type="text" class="form-control" style name="nom" value="Saby">
                            </div>
                            <div>
	                            <label for="inputText3" class="col-form-label">Email</label>
	                            <input id="inputText3" type="email" class="form-control" name="mail" value="saby@mail.com">
                        	</div>
                        </div>
                        <div class="form-group">
                            <label for="inputText4" class="col-form-label">Date de Naissance</label>
                            <input id="inputText4" type="date" class="form-control" placeholder="Date de Naissance" name="dtn" values="2023-14-05">
                        </div>
                        <div class="form-group">
                            <label for="inputPassword">Password</label>
                            <input id="inputPassword" type="password" placeholder="Password" class="form-control" name="mdp" value="saby123">
                        </div>
                         <div class="form-group" style="display: flex; justify-content: space-between;">
                            <div>	
	                            <label for="inputText3" class="col-form-label">Genre</label>
	                           <div class="form-group">
                                    <select class="form-control form-control-sm" name="genre" value="1" >
                                        <?php for($i=0;$i<count($genre);$i++) { ?>
                                            <option value="<?php echo $genre[$i]['id']; ?>"><?php echo $genre[$i]['nom']; ?></option>
                                        <?php } ?>
                                       
                                    </select>
                                </div>
                            </div>
                            <div>
	                            <label for="inputText3" class="col-form-label">Taille</label>
	                            <input id="inputText3" type="text" class="form-control" name="taille" value="15.5">
                        	</div>
                        	 <div>
	                            <label for="inputText3" class="col-form-label">Poids</label>
	                            <input id="inputText3" type="text" class="form-control" name="poids" value="45.5">
                        	</div>
                        </div>
                        <!-- <div class="custom-file mb-3">
                            <input type="file" class="custom-file-input" id="customFile">
                            <label class="custom-file-label" for="customFile" name="">File Input</label>
                        </div> -->
                        	<div class="input-group-append">
                                <button type="submit" class="btn btn-primary" style="float: right;">S'inscrire</button>
                            </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>