<div  style="margin:auto;margin-left:20%;">
		<div class="col-lg-5" >
            <div class="card">
                <div class="card-body">
                    <form action="<?php echo base_url("index.php/CT_Client/setcredit") ?>">
                        <h2 style="text-align: center">Code Monnaie</h2>
                            <div class="form-group" style=" justify-content: space-between;">
                                <div class="form-group">
                                    <label for="inputDefault" class="col-form-label">choix code </label>
                                    <select class="form-select" aria-label="Default select example" name="code">
                                        <?php if(isset($code)){ 
                                                for($i=0;$i<count($code);$i++) { echo $code; ?>
                                                         <option value="<?php echo $code[$i]['idcode'];?>"><?php echo $code[$i]['idcode'];?></option>
                                            <?php } 
                                            }  ?>
                                    </select>
                                           
                                </div>	
                            </div>
                                <div class="input-group-append">
                                    <button type="submit" class="btn btn-primary" style="float: right;">Valider</button>
                                </div>
                    </form>
                </div>
            </div>
        </div>
</div>