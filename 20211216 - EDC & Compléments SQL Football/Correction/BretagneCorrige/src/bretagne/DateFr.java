package bretagne;

import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

public class DateFr {
	
	private int jour, mois, annee ;
	private Date date ;
	private Calendar calendrier ;
	
	// initialisation avec la date du jour
    public DateFr() { 
    	this.date = new Date(); // your date
    	this.calendrier = Calendar.getInstance();
    	calendrier.setTime(date);
    	this.annee = calendrier.get(Calendar.YEAR);
    	this.mois = calendrier.get(Calendar.MONTH);
    	this.jour = calendrier.get(Calendar.DAY_OF_MONTH);    	
    } 
    
	// initialisation avec une date en paramètre 
    public DateFr(Date unedate) { 
    	this.date = unedate ;
    	this.calendrier = Calendar.getInstance();
    	calendrier.setTime(date);
    	this.annee = calendrier.get(Calendar.YEAR);
    	this.mois = calendrier.get(Calendar.MONTH);
    	this.jour = calendrier.get(Calendar.DAY_OF_MONTH);
 	
    } 
    
 // initialisation avec les valeurs des paramètres jour, mois et annee
    public DateFr(int jour, int mois, int annee) { 
    	this.jour = jour ;
    	this.mois = mois ;
    	this.annee = annee ;
    	this.calendrier = new GregorianCalendar(annee, mois, jour) ;
    	this.date = calendrier.getTime();
    	 } 
    
   
    public int getJour() {
		return jour;
	}
	

	public void setJour(int jour) {
		this.jour = jour;
	}
	public int getMois() {
		return mois;
	}
	public void setMois(int mois) {
		this.mois = mois;
	}
	public int getAnnee() {
		return annee;
	}
	public void setAnnee(int annee) {
		this.annee = annee;
	}
	
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
	// Retourne le nombre de jours que compte le mois
	public int getNbJoursMois() {
		return 30 ;	
} 
	
	// Retourne true si la date est avant uneDate
    public boolean estAvant(DateFr uneDate) { 
    	if (this.date.compareTo(uneDate.getDate()) <0)
    		return true ;
    	else return false;
    }
    
 // Retourne true si la date est après uneDate
    public boolean estApres(DateFr uneDate) {
    	if (this.date.compareTo(uneDate.getDate()) > 0)
    		return true ;
    	else return false;
    } 
    
 // Retourne true si la date est un jour ouvrable
    public boolean estJourOuvrable() {
    	int jourSemaine  = calendrier.get(Calendar.DAY_OF_WEEK);
    	if (jourSemaine <=5 ) return true;
    	else return false;
    } 
    
 // Retourne la date du jour suivant
   public DateFr getJourSuivant() {
	   Date dt=this.getDate();
	   Calendar c = Calendar.getInstance(); 
	   c.setTime(dt); 
	   c.add(Calendar.DATE, 1);
	   dt = c.getTime();
	   return new DateFr(dt);
   }

@Override
public String toString() {
	return "DateFr [jour=" + jour + ", mois=" + mois + ", annee=" + annee + ", date=" + date + ", calendrier="
			+ calendrier + "]";
} 
}
