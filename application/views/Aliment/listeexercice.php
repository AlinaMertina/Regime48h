
<title>Liste</title>
	<link rel="stylesheet" href="<?php echo base_url("assets/libs/vendor/bootstrap/css/bootstrap.min.css"); ?>">
    <link href="<?php echo base_url("assets/libs/vendor/fonts/circular-std/style.css"); ?>" rel="stylesheet">
    <link rel="stylesheet" href="<?php echo base_url("assets/libs/vendor/inputmask/css/inputmask.css"); ?>">
    <link rel="stylesheet" href="<?php echo base_url("assets/libs/vendor/datepicker/tempusdominus-bootstrap-4.css"); ?>" />
    <link rel="stylesheet" href="<?php echo base_url("assets/libs/css/style.css"); ?>" />
        <div id="corps"  style="padding:2%;" >
                <p>Ajout Exercice</p>
                    <form action="<?php  echo base_url("index.php/CT_CRUD/insertexercice");?>" method="post" style="float:right;width:50%" enctype="multipart/form-data" >
                        <div class="row">
                            <div class="col">
                                <input type="file" class="form-control" placeholder="photo" aria-label="First name" name="image">
                            </div>
                            <div class="col">
                                <input type="text" class="form-control" placeholder="nom exercice" aria-label="First name" name="nom">
                            </div>
                            <div class="col">
                                <input type="text" class="form-control" placeholder="nom exercice" aria-label="First name" name="uniter">
                            </div>
                            <div class="col">
                                <button type="submit" class="btn btn-primary">Ajout</button>
                            </div>

                        </div>
                    </form>


                    <table  class="table" style="background-color:#FFFFFF;" >
                        <thead>
                            <tr>
                                <th></th>
                                <th scope="col">Nom</th>
                                <th></th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>    
                            <?php if (isset($exerice)) { for($i=0;$i<count($exerice);$i++) { ?>
                               
                                    <tr>
                                        
                                        <td><img  style="width:30%;height:30%;"class="sidebar-card-illustration mb-2" src="<?php echo base_url("assets/image/").$exerice[$i]['idexerice'].".png"; ?>" alt="<?php echo base_url("image/").$exerice[$i]['idexerice'].".png"; ?>"></td>
                                        <td><?php echo $exerice[$i]['nomexerice']; ?></td>


                                        <td id="<?php echo "categorie".$exerice[$i]['idexerice']; ?>" style="display:none;" > 
                                        <form action="<?php  echo base_url("index.php/CT_CRUD/uploadexerice"); ?>" method="post" style="float:right;width:50%" enctype="multipart/form-data" >
                                                <div class="row">
                                                    <div class="col">
                                                        <input type="file" class="form-control" placeholder="photo" aria-label="First name" name="image">
                                                    </div>
                                                    <div class="col">
                                                        <input type="text" class="form-control" placeholder="nom exercice" aria-label="First name" name="nom" value="<?php echo $exerice[$i]['nomexerice']; ?>">
                                                    </div>
                                                    <div class="col">
                                                        <input type="text" class="form-control" placeholder="nom exercice" aria-label="First name" name="uniter" value="<?php echo $exerice[$i]['unite']; ?>">
                                                    </div>
                                                    <input type="hidden" class="form-control" placeholder="nom exercice" aria-label="First name" name="id" value="<?php echo $exerice[$i]['idexerice'];; ?>">
                                                    <div class="col">
                                                        <button type="submit" class="btn btn-primary">Ajout</button>
                                                    </div>

                                                </div>
                                        </form>
                                        </td>

                                        <td>
                                            <div class="input-group-append">
                                                <button type="button" class="btn btn-primary" onclick=" updated(<?php  echo 'categorie'.$exerice[$i]['idexerice']; ?> )">Modifier</button>
                                            </div>
                                        </td>
                                    </tr>
                            <?php }   } ?>
                        </tbody>
                    </table>
                    <div class="container text-center" >
                        <div class="row">
                            <div class="col">
                               <a href="<?php if(isset($num)){ if($num>=5){ $num=$num-5;} echo base_url("index.php/CT_CRUD/listeexerice/".$num);   }  ?>" >  <button type="submit" class="btn btn-link"    >Avant</button></a>
                            </div>
                            <div class="col">
                               <a href="<?php if(isset($num)){  $num=$num+5; echo base_url("index.php/CT_CRUD/listeexerice/".$num);   }  ?>" >  <button type="submit" class="btn btn-link"  > Suivit</button></a>
                            </div>
                        </div>
                    </div>
        <div>
<script>
    $i=0;
    function updated(idcategorie){
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
        console.log(values.value);

        var xhr = new XMLHttpRequest();
        
        xhr.open("GET", "<?php echo base_url("index.php/CT_CRUD/updatacategorie"); ?>"+"?nom="+values.value+"&&id="+$idcategorie, true);
        xhr.send();
    }
   


</script>

