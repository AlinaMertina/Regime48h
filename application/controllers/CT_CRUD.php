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
                    echo "nety";
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
        $this->categorie(1);
    }



	public function test(){
        echo $this->crud->identifiant();

    //   echo   $this->crud->concateValues(concateValues($nomtable,count($tabe)));
    }

}
?>