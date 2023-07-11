<div class="container-fluid" style=" width: 40%; margin-top: 5%;">
	<div class="card">
		<h3 style="text-align: center; margin-top: 3%;">Choix de l'objectifs</h3>
        <form action="<?php echo base_url("index.php/CT_Client/insertObject"); ?>" method="">
            <div class="card-body" style="display: flex; justify-content: space-between;">
                <div class="form-group">
                    
                    <div><label for="inputText3" class="col-form-label">Votre choix</label></div>
                    <div>
                        <select class="selectpicker" name="num">
                            <?php if($objectif){ for($i=0;$i<count($objectif);$i++) {  ?>
                            <option value="<?php echo $objectif[$i]['idobjectif']; ?>"><?php echo $objectif[$i]['nomobjectif']; ?></option>
                            <?php }  } ?>
                        </select>
                    </div>
                </div>    
            </div>
                <div class="input-group-append">
                    <button type="submit" class="btn btn-primary" style="margin-bottom: 2%; margin-left: 80%;">Valider</button>
                </div>
        </form>

	 </div>
</div>