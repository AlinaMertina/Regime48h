
<title>Liste</title>
	<link rel="stylesheet" href="<?php echo base_url("assets/libs/vendor/bootstrap/css/bootstrap.min.css"); ?>">
    <link href="<?php echo base_url("assets/libs/vendor/fonts/circular-std/style.css"); ?>" rel="stylesheet">
    <link rel="stylesheet" href="<?php echo base_url("assets/libs/vendor/inputmask/css/inputmask.css"); ?>">
    <link rel="stylesheet" href="<?php echo base_url("assets/libs/vendor/datepicker/tempusdominus-bootstrap-4.css"); ?>" />
    <link rel="stylesheet" href="<?php echo base_url("assets/libs/css/style.css"); ?>" />
        <div id="corps"  style="padding:2%;" >
                <p><?php  if(isset( $regime ) ){  if(count($regime)>0) { echo $regime[0]['nomRegime']; } } ?></p>
                    <table  class="table" style="background-color:#FFFFFF;" >
                        <thead>
                            <tr>
                                <th scope="col">Numero de jour</th>
                                <th >Nom exerice</th>
                                <th>Uniter</th>
                                <th>Quantiter</th>
                                <th>Heure</th>
                            </tr>
                        </thead>
                        <tbody>    
                        <?php if (isset($regime)) { for($i=0;$i<count($regime);$i++) { ?>
                                    <tr>
                                        <td><?php echo $regime[$i]['NumeroDeJour']; ?></td>
                                        <td><?php echo $regime[$i]['nomexerice']; ?></td>
                                        <td><?php echo $regime[$i]['unite']; ?></td>
                                        <td><?php echo $regime[$i]['quantiter']; ?></td>
                                        <td><?php echo $regime[$i]['Heure']; ?></td>
                                        
                                    </tr>
                            <?php }   } ?>
                        </tbody>
                    </table>
                    <div class="container text-center" >
                        <div class="row">
                            <div class="col">
                               <a href="<?php if(isset($num)){ if($num>=5){ $num=$num-5;} echo base_url("index.php/CT_CRUD/listeexericeP/".$idregime."/".$num);   }  ?>" >  <button type="submit" class="btn btn-link"    >Avant</button></a>
                            </div>
                            <div class="col">
                            <?php echo $num=$num+5; ?>
                               <a href="<?php if(isset($num)){  $num=$num+5; echo base_url("index.php/CT_CRUD/listeexericeP/".$idregime."/".$num);   }  ?>" >  <button type="submit" class="btn btn-link"  > Suivant</button></a>
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

