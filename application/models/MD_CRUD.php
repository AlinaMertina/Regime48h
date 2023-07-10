<?php
defined('BASEPATH') OR exit('No direct script access allowed');
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
        $nom=$this->selectdonner("count(nom) as num","utilisateurs");
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
        $nom=$this->selectdonner("count(nomexerice) as num","exercice");
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

}
?>