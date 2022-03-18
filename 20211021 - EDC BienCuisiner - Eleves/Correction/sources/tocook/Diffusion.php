<?php


namespace tocook;


class Diffusion
{
    private $id, $leJour, $horaire, $direct, $leProgramme ;

    /**
     * Diffusion constructor.
     * @param $id
     * @param $leJour
     * @param $horaire
     * @param $direct
     * @param $leProgramme
     */
    public function __construct($id, $leJour, $horaire, $direct,Programme $leProgramme)
    {
        $this->id = $id;
        $this->leJour = $leJour;
        $this->horaire = $horaire;
        $this->direct = $direct;
        $this->leProgramme = $leProgramme;
    }

    /**
     * @return mixed
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * @param mixed $id
     */
    public function setId($id)
    {
        $this->id = $id;
    }

    /**
     * @return mixed
     */
    public function getLeJour()
    {
        return $this->leJour;
    }

    /**
     * @param mixed $leJour
     */
    public function setLeJour($dateDiffusion)
    {
        $dateCourante = date('Y-m-d') ;
        if ($dateDiffusion > $dateCourante)
            $this->leJour = $dateDiffusion ;
        else return false;
        return true ;

    }

    /**
     * @return mixed
     */
    public function getHoraire()
    {
        return $this->horaire;
    }

    /**
     * @param mixed $horaire
     */
    public function setHoraire($horaire)
    {
        $this->horaire = $horaire;
    }

    /**
     * @return mixed
     */
    public function getDirect()
    {
        return $this->direct;
    }

    /**
     * @param mixed $direct
     */
    public function setDirect($direct)
    {
        $this->direct = $direct;
    }

    /**
     * @return mixed
     */
    public function getLeProgramme()
    {
        return $this->leProgramme;
    }

    /**
     * @param mixed $leProgramme
     */
    public function setLeProgramme($leProgramme)
    {
        $this->leProgramme = $leProgramme;
    }

    public function toXML(){
        $xml = "";
        $xml.="<diffusion>";
        // Début de la question 3 à ajouter
        $xml.= "<horaire>" . $this->getHoraire() . "</horaire>" ;
        $xml.= "<duree>" . $this->getLeProgramme()->getDuree() . "</duree>" ;
        $xml.= "<emission>" . $this->getLeProgramme()->getlEmission()->getTitre() . "</emission>" ;
        $xml.= "<programme>" . $this->getLeProgramme()->getTitre() . "</programme>" ;
        $xml.= "<csa>" . $this->getLeProgramme()->getLaCategorieCSA()->getLibelle() . "</csa>" ;
        $xml.= "</diffusion>" ;
        // Fin du code de la question 3 à ajouter
        return $xml ;
    }


}