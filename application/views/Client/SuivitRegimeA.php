<div class="container-fluid" style="width: 100%; text-align: center;">
    <div class="card" style="margin-top: 20px">
        <div class="card-body">
            <div class="table-responsive ">
                <table width="500px" class="table" >
                    <thead>
                        <tr>
                            <th scope="col">Date Debut</th>
                            <th scope="col">Nom du Regime</th>
                            <th scope="col">Detail Jours</th>
                            <th></th>
                            <th scope="col">Voir</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>  
                        <?php if(isset($regime)) { for($i=0;$i<count($regime);$i++) { ?>
                        <tr>
                            <td><?php echo $regime[$i]["dater"]; ?></td>
                            <td><?php echo $regime[$i]["nomRegime"]; ?></td>
                            <td><?php echo $regime[$i]["nombrejour"]; ?></td>

                            <form action="<?php echo base_url("index.php/CT_Client/detailleRegime"); ?>" method="get" >
                                <td>
                                    <input id="inputText3" type="text" class="form-control" placeholder="Detail jours" style="width: 50%; margin: auto;" name="num"> 
                                </td>
                                <input id="inputText3" type="hidden" class="form-control" placeholder="Detail jours" name="id" value="<?php echo $regime[$i]["idRegime"];?>" > 
                                <td><button type="subit" class="btn btn-outline-info">Voir</button></td>
                            </form>
                            <td>
                                <a href="<?php echo base_url("index.php/CT_CRUD/exportA/").$regime[$i]['idRegime']; ?>" > <button type="button" class="btn btn-link">Export</button><a>
                            </td>
                            
                        </tr>
                        <?php } 
                        } ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>