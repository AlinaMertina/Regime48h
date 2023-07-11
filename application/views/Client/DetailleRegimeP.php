<div style="width:80%;margin:auto;background-color:white;">
    <p style="text-align:center">Numero de jour: <strong> <?php if($regime){ if(count($regime)>0){ echo $regime[0]['NumeroDeJour']; } } ?></srtong></p>
    <p style="text-align:left"><?php if($regime){ if(count($regime)>0){ echo $regime[0]['nomRegime']; } } ?> <a href='<?php  echo base_url("index.php/CT_Client/fixeRegimeP/")."?num=".$regime[0]['NumeroDeJour']."&&id=".$regime[0]['iduregime'];?>'> <?php if($fait==false) { ?> <button style="float:rigth;margin-left:60%;"type="button" class="btn btn-success">Fait</button> </a><?php } ?> </p>
        <table class="table">
                <thead>
                    <tr>
                        <th scope="col">Nom Exercice</th>
                        <th scope="col">Uniter</th>
                        <th scope="col">Quantiter</th>
                        <th scope="col">Heure</th>
                    </tr>
                </thead>

                <tbody>
                <?php  if($regime){ for($i=0;$i<count($regime) ;$i++ ){ ?>
                        <tr style="margin-bootom:2%;">
                            <td><?php echo $regime[$i]['nomexerice'];?></td>
                            <td><?php echo $regime[$i]['unite'];?></td>
                            <td><?php echo $regime[$i]['quantiter'];?></td>
                            <td><?php echo $regime[$i]['Heure'];?></td>
                        </tr>
                <?php  } 
                        } ?>

                   
                </tbody>
        </table>
</diV>