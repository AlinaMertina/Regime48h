

	<meta charset="utf-8">
	<meta name="viewport"    content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	
	<title></title>
	<!-- <link rel="stylesheet" href="./assets/css/style.css"> -->
        
       
        
    <link rel="stylesheet" href="<?php echo base_url("assets/libs/css/bootstrap.min.css"); ?>">
    <link rel="stylesheet" href=" <?php echo base_url("assets/libs/css/bootstrap-icons.css"); ?>">
    <link rel="stylesheet" href="<?php echo base_url("assets/libs/css/style.css"); ?>">
    <script src=" <?php echo base_url("assets/libs/js/bootstrap.bundle.min.js"); ?>" defer></script>

<div style="width:100% ;padding:5%;">
        
            <div class="row" style="width:100%">
              
                    <form method="post" action="<?php echo base_url("index.php/CT_CRUD/insertplat"); ?>" id="form" style="margin:auto;margin-top:-10%;">
                             
                                     <div class="row mt-5">
                                                    <div class="col-lg-6">
                                                            <label for="plat" class="form-label">Plat</label>
                                                            <input type="text" class="form-control" id="plat" name="plat">
                                                    </div>  
                                                    <div class="col-lg-6  span1 ">  
                                                            <button type="button" class=" btn btn-success btn-small" onclick="ajout(event)">+</button>
                                                    </div>
                                    </div>
                                    <button type="submit" class="btn btn-primary">Submit</button>
                               <!--  -->
                                <div id="alimentc" style="height: 20%;margin-bottom: 5%;">
                                        
                               <!--  -->

                    
                                      <div class="row">
                                                <div class="col">
                                                        <p>Aliment<p>
                                                        <select class="form-select" aria-label="Default select example" name="aliment[]">
                                                        <?php if(isset($aliment)) { 
                                                        for($i=0;$i<count($aliment);$i++) {  ?>
                                                        <option value="<?php echo  $aliment[$i]["idAliment"]; ?>"><?php echo  $aliment[$i]["nomAliment"]; ?></option>
                                                        <?php } 
                                                        } ?>
                                                        </select>
                                                </div>
                                                <div class="col">
                                                        <label for="plat" class="form-label">Poids en gramme</label>
                                                        <input type="text" class="form-control"id="poids" name="poids[]">
                                                </div>
                                                <button type="button" class="btn btn-danger btn-small "> -</button> 
                                 </div>

                               <!--  -->
                               <div>


                               
                         </form>
                         
            
            </div>
      

</div>
<script>
        function ajout(event){
                event.preventDefault();
                var element = document.getElementById("alimentc");
                const childElement = document.createElement("div");
                childElement.innerHTML = element.outerHTML;
                var form =document.getElementById("form");
                form.appendChild( childElement);
        }
</script>
