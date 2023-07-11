
<title>Liste</title>
	<link rel="stylesheet" href="<?php echo base_url("assets/libs/vendor/bootstrap/css/bootstrap.min.css"); ?>">
    <link href="<?php echo base_url("assets/libs/vendor/fonts/circular-std/style.css"); ?>" rel="stylesheet">
    <link rel="stylesheet" href="<?php echo base_url("assets/libs/vendor/inputmask/css/inputmask.css"); ?>">
    <link rel="stylesheet" href="<?php echo base_url("assets/libs/vendor/datepicker/tempusdominus-bootstrap-4.css"); ?>" />
    <link rel="stylesheet" href="<?php echo base_url("assets/libs/css/style.css"); ?>" />
        <div id="corps"  style="padding:2%;" >
                <p>Ajout Regime</p>
                    


                    <table  class="table" style="background-color:#FFFFFF;" >
                        <thead>
                            <tr>
                                <th scope="col">Nom</th>
                                <th>Duree</th>
                                <th>Montant</th>
                                <th>Variance</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>    
                        <?php if (isset($regime)) { for($i=0;$i<count($regime);$i++) { ?>
                                    <tr>
                                        <td><?php echo $regime[$i]['nomregime']; ?></td>
                                        <td><?php echo $regime[$i]['nombrejour']; ?></td>
                                        <td><?php echo $regime[$i]['montant']; ?></td>
                                        <td><?php echo $regime[$i]['variance']; ?></td>
                                        <td>
                                            <div class="input-group-append">
                                            
                                                <a href="<?php echo base_url("index.php/CT_CRUD/listeexericeP/").$regime[$i]['idregime']."/0"; ?>" > <button type="button" class="btn btn-primary"  >Voir detaille</button>
                                            </div>
                                        </td>
                                    </tr>
                            <?php }   } ?>
                        </tbody>
                    </table>
                    <div class="container text-center" >
                        <div class="row">
                            <div class="col">
                               <a href="<?php if(isset($num)){ if($num>=5){ $num=$num-5;} echo base_url("index.php/CT_CRUD/listeregimeP/".$num);   }  ?>" >  <button type="submit" class="btn btn-link"    >Avant</button></a>
                            </div>
                            <div class="col">
                               <a href="<?php if(isset($num)){  $num=$num+5; echo base_url("index.php/CT_CRUD/listeregimeP/".$num);   }  ?>" >  <button type="submit" class="btn btn-link"  > Suivant</button></a>
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

