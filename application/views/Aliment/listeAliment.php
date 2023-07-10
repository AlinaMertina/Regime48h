
<title>Liste</title>
	<link rel="stylesheet" href="<?php echo base_url("assets/libs/vendor/bootstrap/css/bootstrap.min.css"); ?>">
    <link href="<?php echo base_url("assets/libs/vendor/fonts/circular-std/style.css"); ?>" rel="stylesheet">
    <link rel="stylesheet" href="<?php echo base_url("assets/libs/vendor/inputmask/css/inputmask.css"); ?>">
    <link rel="stylesheet" href="<?php echo base_url("assets/libs/vendor/datepicker/tempusdominus-bootstrap-4.css"); ?>" />
    <link rel="stylesheet" href="<?php echo base_url("assets/libs/css/style.css"); ?>" />
        <div id="corps"  style="padding:2%;" >
                <p>Ajout Aliment</p>
                    <form action="<?php  echo base_url("index.php/CT_CRUD/insertAlimet");?>" method="post" style="float:right;width:50%">
                        <div class="row">

                            <div class="col">
                                <select class="form-select" aria-label="Default select example" name="id">
                                    <?php if(isset($categorie)) { for($i=0;$i<count($categorie);$i++) { ?>
                                        <option value="<?php echo $categorie[$i]['idCategorie']; ?>"><?php echo $categorie[$i]['nomCategorie']; ?></option>
                                    <?php } 
                                }
                                ?> 
                                </select>
                            </div>
                            <div class="col">
                                <input type="text" class="form-control" placeholder="nom Aliment" aria-label="First name" name="nom">
                            </div>
                            <div class="col">
                                <button type="submit" class="btn btn-primary">Ajout</button>
                            </div>

                        </div>
                    </form>


                    <table  class="table" style="background-color:#FFFFFF;" >
                        <thead>
                            <tr>
                                <th scope="col">Nom</th>
                                <th></th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>    
                        <?php if (isset($aliment)) { for($i=0;$i<count($aliment);$i++) { ?>
                                    <tr>
                                        <td><?php echo $aliment[$i]['nomAliment']; ?></td>

                                        <td id="<?php echo "categorie".$aliment[$i]['idAliment']; ?>" style="display:none;" > 

                                        <select class="form-select" aria-label="Default select example" id="<?php echo "idcate".$aliment[$i]['idAliment']; ?>" value="<?php echo $aliment[$i]['idCategorie']; ?>">
                                                    <?php if(isset($categorie)) { for($a=0;$a<count($categorie);$a++) { ?>
                                                        <option value="<?php echo $categorie[$a]['idCategorie']; ?>"><?php echo $categorie[$a]['nomCategorie']; ?></option>
                                                    <?php } 
                                                }
                                                ?> 
                                        </select>

                                            <input  type="text" class="form-control" id="<?php echo "vcategorie".$aliment[$i]['idAliment']; ?>" aria-describedby="emailHelp" value="<?php echo $aliment[$i]['nomAliment']; ?>" >
                                                
                                                <button type="submit"  onclick="setupdate(<?php echo $aliment[$i]['idAliment']; ?>) "style="float:right;" class="btn btn-primary">valider</button>
                                            
                                        </td>

                                        <td>
                                            <div class="input-group-append">
                                                <button type="button" class="btn btn-primary" onclick=" updated(<?php  echo 'categorie'.$aliment[$i]['idAliment']; ?> )">Modifier</button>
                                            </div>
                                        </td>
                                    </tr>
                            <?php }   } ?>
                        </tbody>
                    </table>
                    <div class="container text-center" >
                        <div class="row">
                            <div class="col">
                               <a href="<?php if(isset($num)){ if($num>=5){ $num=$num-5;} echo base_url("index.php/CT_CRUD/listealiment/".$num);   }  ?>" >  <button type="submit" class="btn btn-link"    >Avant</button></a>
                            </div>
                            <div class="col">
                               <a href="<?php if(isset($num)){  $num=$num+5; echo base_url("index.php/CT_CRUD/listealiment/".$num);   }  ?>" >  <button type="submit" class="btn btn-link"  > Suivant</button></a>
                            </div>
                        </div>
                    </div>
        <div>
<script>
    $i=0;
    function updated(idcategorie){
        console.log(" "+idcategorie);
        var divvalues= idcategorie;
        if($i%2==0){
            console.log($i+" "+idcategorie);
            divvalues.style="display:block";
            $i=$i+1;
        }else{
            $i=$i+1;
            divvalues.style="display:none";
        }
    }
    function setupdate($idcategorie){
        var values =  document.getElementById("vcategorie"+$idcategorie);
        var valuescat =  document.getElementById("idcate"+$idcategorie);
       
        console.log(values.value);
        var xhr = new XMLHttpRequest();
        xhr.open("GET", "<?php echo base_url("index.php/CT_CRUD/updateAliment"); ?>"+"?nom="+values.value+"&&id="+$idcategorie+"&&idca="+valuescat.value, true);
        xhr.send();
    }
   


</script>

