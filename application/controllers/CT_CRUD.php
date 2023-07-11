<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class CT_CRUD extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->load->helper('url_helper');
		$this->load->model('MD_CRUD','crud');
	 }
	public function index()
	{

        $this->load->view('header/Header');
		$this->load->view('index');
		$this->load->view('header/Footer');

	}
    public function loadpage($nompage){
        $this->load->view($nompage);
    }	

    public function loadpageclient($page){
        $this->load->view('header/Header');
		$this->load->view($page);
		$this->load->view('header/Footer');
    }

    public function loadpageadmin($page){
        $this->load->view('header/Header');
		$this->load->view($page);
		$this->load->view('header/Footer');
    }
    public function loadpageadminB($page,$data){
        $this->load->view('header/Header');
		$this->load->view($page,$data);
		$this->load->view('header/Footer');
    }

    public function loadpageB($nompage,$data){
        $this->load->view($nompage,$data);
    }

    public function loginClient(){
        if(isset($_POST["nom"])){
            if(  $this->crud->login($_POST["nom"],$_POST["mdp"] )== true)
            {
                    $info=$this->crud->selectdonner("idutilisateurs","utilisateurs where nom='".$_POST["nom"]."' and mdp='".$_POST["mdp"]."'");
                    $_SESSION['idutilisateur']=$info[0]['idutilisateurs'];
                    redirect(base_url("index.php/CT_Client/accuiel"));
            }else{
                $this->loadpage("login");
            }
        }
    }	
    public function loginAdmin(){
        if(isset($_POST["nom"])){
            if( count($this->crud->selectdonner("idadmin","admin where nomadmin='".$_POST["nom"]."' and mdp='".$_POST["mdp"]."'"))>0)
            {
                    $info=$this->crud->selectdonner("idadmin","admin where nomadmin='".$_POST["nom"]."' and mdp='".$_POST["mdp"]."'");
                    $_SESSION['idutilisateur']=$info[0]['idadmin'];
                   $this->loadpageadmin("index.php");
            }else{
                $this->loadpage("login");
            }
        }
    }
    public function setinscription(){
        if(isset($_POST['nom'])){
            $tabe=array();
            $tabe[0]=array($_POST['nom'],'%s') ;
            $tabe[1]= array($_POST['mail'],'%s');
            $tabe[2]= array($_POST['mdp'],'%s');
            $tabe[3]= array($_POST['dtn'],'%s');
            $tabe[4]= array($_POST['genre'],'%d');
            $tabe[5]=  array($_POST['taille'],'%d');
            $tabe[6]=  array($_POST['poids'],'%d');
            $tabe[7]= array($this->crud->identifiant(),'%s');
            $nomtable="utilisateurs (nom,mail,mdp,date_naissance,idgenre,taille,poids,idutilisateurs)";
            $this->crud->insert($nomtable,$tabe);

            $info=$this->crud->selectdonner("idutilisateurs","utilisateurs where nom='".$_POST["nom"]."' and mdp='".$_POST["mdp"]."'");
            $_SESSION['idutilisateur']=$info[0]['idutilisateurs'];
            redirect(base_url("index.php/CT_Client/accuiel"));
        }
    }
    public function inscription(){
        $data=array();
        $data['genre']=$this->crud->selectAll("genres");
        $this->loadpageB("inscription",$data);
    }


    public function insertCategorie(){
        if(isset($_POST["categorie"])){
            $tabe= array(array($_POST["categorie"],'%s'));
            $nomtable =" CategorieAliment(nomCategorie) ";
            $this->crud->insert($nomtable,$tabe);
        }
        $this->categorie(1);
    }

    public function categorie($i){
        $data=array();
        $debut=$i;
        $data=array();
        $data['num']=$i;
        $data["categorie"]=$this->crud->selectAll( "CategorieAliment limit ".$debut.",5");
        $this->loadpageadminB("Aliment/listCategorie",$data);
    }
    public function updatacategorie(){
        if($_GET['nom']){
            $tabe=array(array('nomCategorie',$_GET['nom'],'%s'));
            $this->crud-> update("CategorieAliment ",$tabe,'idCategorie='.$_GET['id']);
        }
        $this->categorie(0);
    }

    public function updateAliment(){
        if($_GET['nom']){
            $tabe=array(
            array('idCategorie',$_GET['idca'],'%d'),
            array('nomAliment',$_GET['nom'],'%s')
        );   
            $this->crud-> update("Aliment ",$tabe,'idAliment='.$_GET['id']);
        }
        //$this->listealiment(0);
    }

    public function setplat(){
        $data=array();
        $data['categorie']=$this->crud->selectAll( "CategorieAliment");
        $data['aliment']=$this->crud->selectAll( "Aliment");
        $this->loadpageadminB("Regime/ajoutPlat",$data);
    }
    public function insertplat(){
        if(isset($_POST['plat'])){
            echo "niditra";
            $tabe=array(array($_POST['plat'],'%s'));
            $this->crud->insert(" PLAT(nomplat) ",$tabe);
            $numplat=$this->crud->selectdonner('idplat',"PLAT where nomplat='".$_POST['plat']."'");
            // detaille
            for($i=0; $i<count($_POST['aliment']) ;$i++){
                $tabe1=array(
                    array($_POST['aliment'][$i],'%s'),
                    array($_POST['poids'][$i],'%d'),
                    array($numplat[0]['idplat'],'%d')
                );
                $this->crud->insert(" detailPlat(idAliment,poids,idPlat) ",$tabe1);
            }
        }
       // $this-setplat();
    }
    public function listealiment($i){
        $data=array();
        $data['num']=$i;
        $data['categorie']=$this->crud->selectAll( "CategorieAliment");
        $data["aliment"]=$this->crud->selectAll( " Aliment limit ".$i.",5");
        $this->loadpageadminB("Aliment/listeAliment",$data);
    }
    public function insertAlimet(){
        if(isset($_POST['nom'])){
            $tabe= array(
                array($_POST["id"],'%d'),
                array($_POST["nom"],'%s')
            );
            $nomtable=" Aliment(idCategorie,nomAliment) ";
            $this->crud->insert($nomtable,$tabe);
        }
        $this->listealiment(0);
    }
    public function listeexerice($i){
        $data=array();
        $data['num']=$i;
        $data["exerice"]=$this->crud->selectAll( " exercice limit ".$i.",5");
        $this->loadpageadminB("Aliment/listeexercice",$data);

    }
    

    

    public function upload_file($nomfileform, $nouvnom)
    {
        $config['upload_path'] = './assets/image';
        //$config['upload_path'] =  "/srv/http/FakoMa/admin-side/imageemp"; // Chemin de destination des fichiers téléchargés
        $config['allowed_types'] = 'gif|jpg|png'; // Types de fichiers autorisés
        $config['max_size'] = 2048; // Taille maximale du fichier en kilo-octets (2 Mo dans cet exemple)
        $config['file_name'] = $nouvnom . '.png';
        $config['overwrite'] = TRUE;  //ecrase le fichier si il existe
        $this->load->library('upload', $config);
        if (!$this->upload->do_upload($nomfileform)) {
            $error = $this->upload->display_errors();
            echo $error;
        } else {
            $data = $this->upload->data();
            // echo "Le fichier a été téléchargé avec succès !";
        }
    }
    public function insertexercice(){
        if(isset($_POST['nom'])){
            $num=$this->crud->identifiantimage();
            $tabe=array(
                array($num,'%s'),
                array($_POST['nom'],'%s'),
                array($_POST['uniter'],'%s')
            );
            $this->crud->insert(" exercice(idexerice,nomexerice,unite) ",$tabe);
            $this->upload_file("image", $num);
        }
       $this->listeexerice(0);
    }
    public function uploadexerice(){
        if($_POST['nom']){
            $tabe=array(
            array('unite',$_POST['uniter'],'%s'),
            array('nomexerice',$_POST['nom'],'%s')
        );   
            $this->crud-> update("exercice ",$tabe,"idexerice='".$_POST['id']."'");
            $this->upload_file("image", $_POST['id']);
        }
       // $this->listeexerice(0);
    }
    public function listeregimeA($i){
        $data=array();
        $data['num']=$i;
        $data["regime"]=$this->crud->selectAll( " regime limit ".$i.",5");
        $this->loadpageadminB("Regime/listeRegime",$data);
    }
    public function listeplateregime($idregime,$i){
        $data=array();
        $data['num']=$i;
        $data['idregime']=$idregime;
        $str="detailRegime.idregime,Plat.idPlat,NumeroDeJour,Heure,Plat.nomPlat,nomRegime";
        $nomtable="detailRegime join Plat on detailRegime.idPlat=Plat.idPlat join regime on detailRegime.idRegime=regime.idregime where regime.idregime=".$idregime." order by NumeroDeJour limit ".$i.",5";
        $data["regime"]=$this->crud->selectdonner($str,$nomtable);
        $this->loadpageadminB("Regime/listePlatRegime",$data);
    }
    public function listealimentplate($idplat,$i){
        $data=array();
        $data['num']=$i;
        $data['idregime']=$idplat;
        $str="nomAliment,detailPlat.idPlat,poids,detailPlat.idAliment,nomPlat";
        $nomtable="detailPlat join Plat on detailPlat.idPlat =Plat.idPlat join Aliment on Aliment.idAliment=detailPlat.idAliment where Plat.idPlat=".$idplat." limit ".$i.",5";
        $data["regime"]=$this->crud->selectdonner($str,$nomtable);
        $this->loadpageadminB("Regime/listeAlimentPlat",$data);

    }
    public function listeregimeP($i){
        $data=array();
        $data['num']=$i;
        $data["regime"]=$this->crud->selectAll( " regimePhysique limit ".$i.",5");
        $this->loadpageadminB("Regime/listeRegimeP",$data);
    }
    public function listeexericeP($idregime,$i){
        $data=array();
        $data['num']=$i;
        $data['idregime']=$idregime;
        $str="detaille_regimeP.idRegime,nomRegime,NumeroDeJour,quantiter,Heure,unite,detaille_regimeP.idexerice,nomexerice";
        $nomtable="detaille_regimeP join regimePhysique on detaille_regimeP.idRegime=regimePhysique.idRegime join  exercice on exercice.idexerice = detaille_regimeP.idexerice where detaille_regimeP.idRegime=".$idregime." order by NumeroDeJour limit ".$i.",5";
        $data["regime"]=$this->crud->selectdonner($str,$nomtable);
        $this->loadpageadminB("Regime/listeExerciceRegime",$data);
    }
    public function exportA($idregime){
        $this->crud->exportregimeAliment($idregime);
    }
    public function exportP($idregime){
        $this->crud->exportregimePhysique($idregime);
    }

	public function test(){

    //   echo   $this->crud->concateValues(concateValues($nomtable,count($tabe)));
    }

}
?>