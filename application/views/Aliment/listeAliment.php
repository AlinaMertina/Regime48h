
<title>Liste</title>
	<link rel="stylesheet" href="<?php echo base_url("assets/libs/vendor/bootstrap/css/bootstrap.min.css"); ?>">
    <link href="<?php echo base_url("assets/libs/vendor/fonts/circular-std/style.css"); ?>" rel="stylesheet">
    <link rel="stylesheet" href="<?php echo base_url("assets/libs/vendor/inputmask/css/inputmask.css"); ?>">
    <link rel="stylesheet" href="<?php echo base_url("assets/libs/vendor/datepicker/tempusdominus-bootstrap-4.css"); ?>" />
    <link rel="stylesheet" href="<?php echo base_url("assets/libs/css/style.css"); ?>" />
        <div id="corps"  style="padding:2%;" >
                <p>
                    <form action="<?php  echo base_url("index.php/CT_CRUD/insertCategorie");?>" method="post" style="float:right;width:50%">
                        <div class="row">
                            <div class="col">
                                <input type="text" class="form-control" placeholder="New categorie" aria-label="First name" name="categorie">
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
                            <?php if (isset($categorie)) { for($i=0;$i<count($categorie);$i++) { ?>
                               
                                    <tr>
                                        <td><?php echo $categorie[$i]['nomCategorie']; ?></td>

                                        <td id="<?php echo "categorie".$categorie[$i]['idCategorie']; ?>" style="display:none;" > 
                                           
                                                <input  type="email" class="form-control" id="<?php echo "vcategorie".$categorie[$i]['idCategorie']; ?>" aria-describedby="emailHelp" value="<?php echo $categorie[$i]['nomCategorie']; ?>" >
                                                
                                                <button type="submit"  onclick="setupdate(<?php echo $categorie[$i]['idCategorie']; ?>) "style="float:right;" class="btn btn-primary">valider</button>
                                            
                                        </td>

                                        <td>
                                            <div class="input-group-append">
                                                <button type="button" class="btn btn-primary" onclick=" updated(<?php  echo 'categorie'.$categorie[$i]['idCategorie']; ?> )">Modifier</button>
                                            </div>
                                        </td>
                                    </tr>
                            <?php }   } ?>
                        </tbody>
                    </table>
                    <div class="container text-center" >
                        <div class="row">
                            <div class="col">
                               <a href="<?php if(isset($num)){ if($num>=5){ $num=$num-5;} echo base_url("index.php/CT_CRUD/categorie/".$num);   }  ?>" >  <button type="submit" class="btn btn-link"    >Avant</button></a>
                            </div>
                            <div class="col">
                               <a href="<?php if(isset($num)){  $num=$num+5; echo base_url("index.php/CT_CRUD/categorie/".$num);   }  ?>" >  <button type="submit" class="btn btn-link"  > Suivit</button></a>
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

