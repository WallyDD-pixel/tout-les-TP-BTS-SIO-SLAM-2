package bretagne;


public class DemandeAbsence {
    private DateFr laDateDemande;
    private DateFr laDateReponse;
    private String leMotifRefus;
    private Absence laAbsence;
    private String leEtatDemande;

   
	public DemandeAbsence(Absence uneAbsence) {
        laDateDemande = new DateFr();
        leEtatDemande = "ATT" ;
        laAbsence = uneAbsence ;
        laAbsence.setLeEtat("ATT");
        uneAbsence.setLaDemande(this);
    }
    
     public DateFr getLaDateDemande() {
		return laDateDemande;
	}

	public void setLaDateDemande(DateFr laDateDemande) {
		this.laDateDemande = laDateDemande;
	}


	public DateFr getLaDateReponse() {
		return laDateReponse;
	}

	public void setLaDateReponse(DateFr laDateReponse) {
		this.laDateReponse = laDateReponse;
	}

	public String getLeMotifRefus() {
		return leMotifRefus;
	}

	public void setLeMotifRefus(String leMotifRefus) {
		this.leMotifRefus = leMotifRefus;
	}

	public Absence getLaAbsence() {
		return laAbsence;
	}

	public void setLaAbsence(Absence laAbsence) {
		this.laAbsence = laAbsence;
	}

	public void accepter() { 
		
		leEtatDemande = "ACC" ;
		laAbsence.setLeEtat(leEtatDemande);		
	}
	
	// Constate le refus de la demande et en mémorise le motif
	
    public void refuser(String unMotifRefus) { 
    	// Code à compléter
		leEtatDemande = "REF" ;
		laAbsence.setLeEtat(leEtatDemande);
		this.leMotifRefus = unMotifRefus ;
    }

	public String getLeEtatDemande() {
		return leEtatDemande;
	}

	public void setLeEtatDemande(String leEtatDemande) {
		this.leEtatDemande = leEtatDemande;
	}

}
