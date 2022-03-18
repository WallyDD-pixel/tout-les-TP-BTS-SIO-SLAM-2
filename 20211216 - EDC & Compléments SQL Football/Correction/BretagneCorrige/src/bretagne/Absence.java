package bretagne;

import java.util.ArrayList;
import java.util.List;

public class Absence {
    private DateFr laDateDebut;
    private DateFr laDateFin;
    private String leMotif;
    private String leEtat; // ATT pour en attente, ACC pour acceptée, REF pour refusée
    private Salarie leSalarie;
    private DemandeAbsence laDemande;
    
    public Absence(DateFr uneDateDebut, DateFr uneDateFin, String unMotif, Salarie unSalarie) { 
    	
    	this.laDateDebut = uneDateDebut ;
    	this.laDateFin   = uneDateFin ;
    	this.leMotif = unMotif ;
    	this.leSalarie     = unSalarie ;
		this.leEtat = "ATT";

    }
    
          
   


	public DateFr getLaDateDebut() {
		return laDateDebut;
	}

	public void setLaDateDebut(DateFr laDateDebut) {
		this.laDateDebut = laDateDebut;
	}

	public DateFr getLaDateFin() {
		return laDateFin;
	}

	public void setLaDateFin(DateFr laDateFin) {
		this.laDateFin = laDateFin;
	}

	public String getLeMotif() {
		return leMotif;
	}

	public void setLeMotif(String leMotif) {
		this.leMotif = leMotif;
	}

	public String getLeEtat() {
		return leEtat;
	}

	public void setLeEtat(String leEtat) {
		this.leEtat = leEtat;
	}

	public Salarie getLeSalarie() {
		return leSalarie;
	}

	public void setLeSalarie(Salarie leSalarie) {
		this.leSalarie = leSalarie;
	}

	public DemandeAbsence getLaDemande() {
		return laDemande;
	}

	public void setLaDemande(DemandeAbsence laDemande) {
		this.laDemande = laDemande;
	}

	// Retourne la liste des jours ouvrables du mois spécifié que couvre l'absence, le principe est de
	// parcourir les jours d’absence et vérifier s’ils sont dans le mois spécifié, et s’ils sont ouvrables.

	
	public List<DateFr> getJoursAbsence(int unMois, int uneAnnee) {

	List<DateFr> joursAbsence = new ArrayList<>();
    DateFr debutMois = new DateFr(1, unMois, uneAnnee);
    DateFr finMois = new DateFr(debutMois.getNbJoursMois() ,unMois,
				          uneAnnee);
    if (laDateDebut.estAvant(finMois) 
			&& laDateFin.estApres(debutMois)) {
        DateFr depart, arrivee;
        if (laDateDebut.estApres(debutMois)) {
            depart = laDateDebut;
        } else {
            depart = debutMois;
        }
        if (laDateFin.estApres(finMois)) {
            arrivee = finMois;
        } else {
            arrivee = laDateFin;
        }
        DateFr dateCourante = depart;
        while (arrivee.estApres(dateCourante)) {
            if (dateCourante.estJourOuvrable()) {
                joursAbsence.add(dateCourante);
            }
            dateCourante = dateCourante.getJourSuivant();
        }
    }
    return joursAbsence;
	}
        
	 @Override
		public String toString() {
			return "Absence du salarié "+ leSalarie.getLeNom() + " - "+leSalarie.getLePrenom() + "qui commence le" +laDateDebut;
		}
    
}
