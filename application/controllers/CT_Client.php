
<?php
class CT_Client extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->load->helper('url_helper');
		$this->load->model('MD_CRUD','crud');
	 }
     public function loadpageclient($page){
        $this->load->view('header/HeaderClient');
		$this->load->view($page);
		$this->load->view('header/Footer');
    }
	public function loadpageclientB($page,$data){
        $this->load->view('header/HeaderClient');
		$this->load->view($page,$data);
		$this->load->view('header/Footer');
    }
    public function accuiel(){
		$data=array();
        $data['regimeP']=$this->crud->selectAll( "regimePhysique order by idRegime desc limit 0,2");
        $data["regimeA"]=$this->crud->selectAll( " regime order by idRegime desc limit 0,2");
		$data['argent']=$this->argentutilisateur();
		$this->loadpageclientB("indexclient",$data);
		// http://127.0.0.1/Projet24h/index.php/CT_Client/accuiel
	}
	public function  listeregimeA($i){
		$data=array();
        $data['num']=$i;
        $data["regime"]=$this->crud->selectAll( " regime limit ".$i.",5");
        $this->loadpageclientB("Client/ListeRegimeA",$data);
	}
	
	public function listeregimeP($i){
        $data=array();
        $data['num']=$i;
        $data["regime"]=$this->crud->selectAll( " regimePhysique limit ".$i.",5");
        $this->loadpageclientB("Client/ListeRegimeP",$data);
    }
	public function setsuivitA(){
		$timezone = new DateTimeZone('Europe/London');
		$date = new DateTime('now', $timezone);
		$dateActuelle = $date->format('Y-m-d');
		if( isset($_GET['idregime']) ){
			$tabe= array(
				array($_SESSION['idutilisateur'],'%s'),
				array($_GET['idregime'],'%d'),
				array($dateActuelle,'%s')
			);
			$prixregime = $this->crud->selectdonner("montant"," regime where idRegime=".$_GET['idregime']);
			if(count($prixregime)>0){
				if($this->argentutilisateur()-$prixregime[0]['montant']>0){
					$tabex=array(
						array($prixregime[0]['montant'],'%d'),
						array($_SESSION['idutilisateur'],'%s')
					);
					$this->crud->insert("depenceUtilisateur(montant,idutilisateur)",$tabex);
					$tableVales="userRegimeA(idutilisateurs,idRegime,dater)";
					$this->crud->insert($tableVales,$tabe);
				}
			}
			
		}
		$this->listeregimeA(0);
	}

	public function setsuivitP(){
		$timezone = new DateTimeZone('Europe/London');
		$date = new DateTime('now', $timezone);
		$dateActuelle = $date->format('Y-m-d');
		if( isset($_GET['idregime']) ){
			$tabe= array(
				array($_SESSION['idutilisateur'],'%s'),
				array($_GET['idregime'],'%d'),
				array($dateActuelle,'%s')
			);
			$prixregime = $this->crud->selectdonner("montant"," regime where idRegime=".$_GET['idregime']);
				if(count($prixregime)>0){
					if($this->argentutilisateur()-$prixregime[0]['montant']>0){
						$tabex=array(
							array($prixregime[0]['montant'],'%d'),
							array($_SESSION['idutilisateur'],'%s')
						);
						$this->crud->insert("depenceUtilisateur(montant,idutilisateur)",$tabex);
						$tableVales="userRegimeP(idutilisateurs,idRegime,dater)";
						$this->crud->insert($tableVales,$tabe);
					}
				}
		}
		$this->listeregimeP(0);
	}

	public function listesuivitRA($i){
		$data=array();
        $data['num']=$i;
        $str="userRegimeA.idRegime,nomRegime,nombrejour,dater";
        $nomtable="userRegimeA join Regime on userRegimeA.idRegime=Regime.idRegime where idutilisateurs='".$_SESSION['idutilisateur']."' limit ".$i.",5";
        $data["regime"]=$this->crud->selectdonner($str,$nomtable);
        $this->loadpageclientB("Client/SuivitRegimeA",$data);
	}

	public function listesuivitRP($i){
		$data=array();
        $data['num']=$i;
        $str="userRegimep.idRegime,nomRegime,nombrejour,dater";
        $nomtable="userRegimeP join regimePhysique on userRegimeP.idRegime=regimePhysique.idRegime where idutilisateurs='".$_SESSION['idutilisateur']."' limit ".$i.",5";
        $data["regime"]=$this->crud->selectdonner($str,$nomtable);
        $this->loadpageclientB("Client/SuivitRegimeP",$data);
	}
	public function detailleRegime(){
		if(isset($_GET['id'])){
			$data=array();
			$str="iduregime,detailRegime.idPlat,NumeroDeJour,Heure,nomAliment,poids,nomPlat,nomRegime";
			$nomtable="detailRegime  join Plat on detailRegime.idPlat=Plat.idPlat join detailPlat  on detailPlat.idPlat =Plat.idPlat join Aliment on Aliment.idAliment=detailPlat.idAliment join Regime on detailRegime.idRegime=Regime.idRegime join userRegimeA on userRegimeA.idregime=Regime.idRegime where Regime.idRegime=".$_GET['id']."  and NumeroDeJour=".$_GET['num'];
			$data["regime"]=$this->crud->selectdonner($str,$nomtable);
			if(count($this->crud->selectAll("suivitRegimeA  join  userRegimeA on suivitRegimeA.iduregime=userRegimeA.iduregime where idutilisateurs='".$_SESSION['idutilisateur']."' and idregime=".$_GET['id']." and numjour=".$_GET['num']))>0){
				$data['fait']=true;
			}else{
				$data['fait']=false;
			}
			$this->loadpageclientB("Client/DetailleRegime",$data);
		}
	}

	public function detailleRegimeP(){
		if(isset($_GET['id'])){
			$data=array();
			$str="iduregime,detaille_regimeP.idRegime,exercice.idexerice,nomexerice,nomregime,quantiter,unite,Heure,nomRegime,NumeroDeJour";
			$nomtable="detaille_regimeP join regimePhysique on detaille_regimeP.idRegime=regimePhysique.idRegime join exercice on detaille_regimeP.idexerice=exercice.idexerice join userRegimeP on userRegimeP.idregime=regimePhysique.idRegime where NumeroDeJour=".$_GET['num']." and regimePhysique.idRegime=".$_GET['id'];
			$data["regime"]=$this->crud->selectdonner($str,$nomtable);
			if(count($this->crud->selectAll("suivitRegimeP  join  userRegimeP on suivitRegimeP.iduregime=userRegimeP.iduregime where idutilisateurs='".$_SESSION['idutilisateur']."' and idregime=".$_GET['id']." and numjour=".$_GET['num']))>0){
				$data['fait']=true;
			}else{
				$data['fait']=false;
			}
			$this->loadpageclientB("Client/DetailleRegimeP",$data);
		}
	}

	public function fixeRegimeA(){
		if(isset($_GET["num"])){
			$timezone = new DateTimeZone('Europe/London');
			$date = new DateTime('now', $timezone);
			$dateActuelle = $date->format('Y-m-d');
			$tabe= array(
				array($_GET["id"],'%d'),
				array($_GET["num"],'%d'),
				array($dateActuelle,'%s')
			);
			$tableVales="suivitRegimeA(iduregime,numjour,datef)";
			$this->crud->insert($tableVales,$tabe);
		}
		$this->listesuivitRA(0);
	}
	public function fixeRegimeP(){
		if(isset($_GET["num"])){
			$timezone = new DateTimeZone('Europe/London');
			$date = new DateTime('now', $timezone);
			$dateActuelle = $date->format('Y-m-d');
			$tabe= array(
				array($_GET["id"],'%d'),
				array($_GET["num"],'%d'),
				array($dateActuelle,'%s')
			);
			$tableVales="suivitRegimeP(iduregime,numjour,datef)";
			$this->crud->insert($tableVales,$tabe);
		}
		$this->listesuivitRP(0);
	}
	public function ajoutcredit(){
		$data=array();
		$data['code']=$this->crud->selectAll(" code ");
		$this->loadpageclientB("Client/Credit",$data);
	}
	public function setcredit(){
		$timezone = new DateTimeZone('Europe/London');
		$date = new DateTime('now', $timezone);
		$dateActuelle = $date->format('Y-m-d');
		if($_GET['code']){
			$tabe= array(
				array($_SESSION['idutilisateur'],'%s'),
				array($_GET["code"],'%s'),
				array($dateActuelle,'%s'),
				array(1,'%d')
			);
			$tableVales="VolaUtilisateur(idUtilisateur,idcode,dateAchat,etat)";
			$this->crud->insert($tableVales,$tabe);
		}
		$this->ajoutcredit();
	}
	public function argentutilisateur(){
		$argent =$this->crud->selectdonner("sum(montant) as vola"," VolaUtilisateur join code on code.idcode=VolaUtilisateur.idcode where idUtilisateur='".$_SESSION['idutilisateur']."' and etat=2");
		$depence= $this->crud->selectdonner("sum(montant) as vola"," depenceUtilisateur where idUtilisateur='".$_SESSION['idutilisateur']."'");
		if(count($depence)>0){
			if(count($argent)>0){
					$argent[0]['vola']=$argent[0]['vola']-$depence[0]['vola'];
					return $argent[0]['vola'];
			}
		}
		return 0;
	}
	public function setObjectif(){
		$data=array();
		$data['objectif'] =$this->crud->selectAll(" objectif ");
		$this->loadpageclientB("Client/SetObjectif",$data);
	}
	public function insertObject(){
		$timezone = new DateTimeZone('Europe/London');
		$date = new DateTime('now', $timezone);
		$dateActuelle = $date->format('Y-m-d');

		if(isset($_GET['num'])){
			$tabe= array(
				array($_SESSION['idutilisateur'],'%s'),
				array($_GET['num'],'%d'),
				array($dateActuelle,'%s')
			);
			$tableVales=" ObjectUtilisateur(idutilisateurs,idobjectif,datef) ";
			$this->crud->insert($tableVales,$tabe);
		}
		$this->setObjectif();
	}


}

?>