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
    public function insert($tableVales,$values){
        $string = $this->concateValues($values);
        $requete="insert into ".$tableVales ." values ".$string ;
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
        $identifiantbase="UTL0000";
        $str=strlen($identifiantbase)-1;
        for($i=strlen($nom['num'])-1;$i>-1;$i--){
            $identifiantbase[$str]=$nom['num'][$i];
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