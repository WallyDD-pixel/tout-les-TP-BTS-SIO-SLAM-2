<?php
namespace tocook;


class Application
{
    // Tableau de Diffusion
    private $lesDiffusions ;

    /**
     * Application constructor.
     * @param $lesDiffusions
     */
    public function __construct($lesDiffusions)
    {
        $this->lesDiffusions = $lesDiffusions;
    }

    /**
     * @return mixed
     */
    public function getLesDiffusions()
    {
        return $this->lesDiffusions;
    }

    /**
     * @param mixed $lesDiffusions
     */
    public function setLesDiffusions($lesDiffusions)
    {
        $this->lesDiffusions = $lesDiffusions;
    }

    public function diffusionsXML($uneDate) {
        $xml = "<?xml version = \"1.0\" encoding=\"UTF-8\" ?>";
        $xml .= "<programmation>";
        $xml .= "<jour>" . $uneDate . "</jour>";

        // Ajouts question 2
        $xml .= "<diffusions>" ;

        foreach ( $this->getLesDiffusions() as $uneDiffusion)
        {
            if ($uneDiffusion->getLeJour() == $uneDate)
                $uneDiffusion->toXML() ;
        }
        $xml .= "</diffusions>" ;
        $xml .= "</programmation>" ;
        return $xml;

}

    public function getDiffusionsEnDirect($uneDate) {

        // Début Question 5
        $listeDiffusionsEnDirect = array() ;
        foreach ($this->getLesDiffusions() as $uneDiffusion)
            if ($uneDiffusion->getLeJour() == $uneDate && $uneDiffusion->getDirect())
                $listeDiffusionsEnDirect[] = $uneDiffusion ;
        return $listeDiffusionsEnDirect;
        // Fin Question 5
        // return null ;

    }





}