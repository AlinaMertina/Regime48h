<?php

defined('BASEPATH') OR exit('No direct script access allowed');
require(BASEPATH.'fpdf.php');

class MD_CRUD extends CI_Model{
    
    public function concateValues($tabe){
        $string ="";
        for($i=0;$i<count($tabe);$i++){
            if(strcmp($tabe[$i][1],'%s')==0){
                $string=$string.",'".$tabe[$i][0]."'";
            }
            else{
                $string=$string.",".$tabe[$i][0];
            }
        }
        $string=substr($string, 1);
        return "( ".$string." )";
    }


    public function concateValuesupdate($tabe){
        $string ="";
        for($i=0;$i<count($tabe);$i++){
            if(strcmp($tabe[$i][2],'%s')==0){
                $string=$string.",".$tabe[$i][0]."='".$tabe[$i][1]."'";
            }
            else{
                $string=$string.",".$tabe[$i][0]."=".$tabe[$i][1];
            }
        }
        $string=substr($string, 1);
        return $string;
    }


    public function insert($tableVales,$values){
        $string = $this->concateValues($values);
        $requete="insert into ".$tableVales ." values ".$string ;
        $this->db->query($requete);
    }

    public function update($tabeValues,$values,$condition){
        $string=$this->concateValuesupdate($values);
        $requete ="update ".$tabeValues." set ".$string." where ".$condition;
        $this->db->query($requete);
    }

    public function  selectAll($nomtable){
        $string ="select * from ".$nomtable;
        $query = $this->db->query($string);
        return $query->result_array();
    }
    //login
    public function login($nom,$modpasse){
        if(count($this->selectAll("utilisateurs where nom='".$nom."' and mdp='".$modpasse."'"))>0){
            return true;
        }else{
            return false;
        }
    }

    public function identifiant(){
        $nom=$this->selectdonner("count(nom)+1 as num","utilisateurs");
        if(count($nom)==0){ return "null" ;}
        $nom=$nom[0];
        // $nom['num']=$nom['num']+1;
        $identifiantbase="UTL0000";
        $str=strlen($identifiantbase)-1;
        for($i=strlen($nom['num'])-1;$i>-1;$i--){
            $identifiantbase[$str]=$nom['num'][$i];
            $str=$str-1;
        }
        return  $identifiantbase;
    }

    public function identifiantimage(){
        $nom=$this->selectdonner("count(nomexerice)+1 as num","exercice");
        if(count($nom)==0){ return "null" ;}
        $nom=$nom[0];
        $nom['num']=$nom['num'];
        $identifiantbase="ECX0000";
        $str=strlen($identifiantbase)-1;
        for($i=strlen($nom['num'])-1 ;$i > -1;$i--){
            $identifiantbase[$str]=$nom['num'][$i];
            $str=$str-1;
        }
        return  $identifiantbase;
    }

    public function selectdonner($stringdonne,$nomtable){
        $string ="select ".$stringdonne." from ".$nomtable;
        $query = $this->db->query($string);
        return $query->result_array();
    }
           

    public function exportregimeAliment($idregime){
        $pdf = new FPDF();
        $pdf->AddPage();
        $pdf->SetFont('Arial','B',16);
        $str="detailRegime.idregime,Plat.idPlat,NumeroDeJour,Heure,Plat.nomPlat,nomRegime";
        $nomtable="detailRegime join Plat on detailRegime.idPlat=Plat.idPlat join regime on detailRegime.idRegime=regime.idregime where regime.idregime=".$idregime." order by NumeroDeJour";
        $regime=$this->selectdonner($str,$nomtable);
        // Instanciation de la classe dérivée
        $pdf->AliasNbPages();
        $pdf->SetFont('Times','',12);
        $pdf->Cell(0,10,$regime[0]["nomRegime"],1,1);

        $pdf->Cell(30,10,"Numero jours",0,0);
        $pdf->Cell(150,10,"Nom Plat",0,0);
        $pdf->Cell(50,10,"Heure",0,1);

        for($i=0;$i<count($regime);$i++){
            $pdf->Cell(30,10,$regime[$i]['NumeroDeJour'],0,0);
            $pdf->Cell(150,10,$regime[$i]['nomPlat'],0,0);
            $pdf->Cell(50,10,$regime[$i]['Heure'],0,1);
        }
        $pdf->Cell(0,10,"Composition Plat",1,1);
        $pdf->Cell(100,10,"Nom Aliment",0,0);
        $pdf->Cell(150,10,"Poids",0,1);

        for($i=0;$i<count($regime);$i++){
            $str="nomAliment,detailPlat.idPlat,poids,detailPlat.idAliment,nomPlat";
            $nomtable="detailPlat join Plat on detailPlat.idPlat =Plat.idPlat join Aliment on Aliment.idAliment=detailPlat.idAliment where Plat.idPlat=".$regime[$i]['idPlat'];
            $plat=$this->crud->selectdonner($str,$nomtable);
            $pdf->Cell(0,10,$regime[$i]['nomPlat'],1,1);
            for($a=0;$a<count($plat);$a++){
                $pdf->Cell(100,10,$plat[$a]['nomAliment'],0,0);
                $pdf->Cell(50,10,$plat[$a]['poids'].'g',0,1);
            }
        }
        

        $pdf->Output();

    }
   

    public function exportregimePhysique($idregime){

        $pdf = new FPDF();
        $pdf->AddPage();
        $pdf->SetFont('Arial','B',16);
        $str="detaille_regimeP.idRegime,nomRegime,NumeroDeJour,quantiter,Heure,unite,detaille_regimeP.idexerice,nomexerice";
        $nomtable="detaille_regimeP join regimePhysique on detaille_regimeP.idRegime=regimePhysique.idRegime join  exercice on exercice.idexerice = detaille_regimeP.idexerice where detaille_regimeP.idRegime=".$idregime;
        $regime=$this->crud->selectdonner($str,$nomtable);
        // Instanciation de la classe dérivée
        $pdf->AliasNbPages();
        $pdf->SetFont('Times','',12);
        $pdf->Cell(0,10,$regime[0]["nomRegime"],1,1);

        $pdf->Cell(30,10,"Numero jours",0,0);
        $pdf->Cell(70,10,"Nom Exrecice",0,0);
        $pdf->Cell(30,10,"Heure",0,0);
        $pdf->Cell(30,10,"Uniter",0,0);
        $pdf->Cell(30,10,"Quantiter",0,1);



        for($i=0;$i<count($regime);$i++){
            $pdf->Cell(30,10,$regime[$i]['NumeroDeJour'],0,0);
            $pdf->Cell(70,10,$regime[$i]['nomexerice'],0,0);
            $pdf->Cell(30,10,$regime[$i]['Heure'],0,0);
            $pdf->Cell(30,10,$regime[$i]['unite'],0,0);
            $pdf->Cell(30,10,$regime[$i]['quantiter'],0,1);
        }
        $pdf->Output();
    }
   

}
?>