package bretagne;


import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class TestDemandeAbsence {
	
	DemandeAbsence uneDemande ;

	@BeforeEach
	public void setUp() throws Exception {
		
		Salarie mrRobert = new Salarie("Robert ENC","Robert", "Timo") ;
		DateFr debAbsence = new DateFr(25,2,2019) ;
		DateFr finAbsence = new DateFr(27,2,2019);

		Absence lundiJeViensPasJaiPiscine = new Absence(debAbsence,finAbsence,"Piscine",mrRobert) ;
		uneDemande = new DemandeAbsence(lundiJeViensPasJaiPiscine) ;

		
	}

	
	@Test
	public void testAccepter() {
		
		uneDemande.accepter() ;
		assertEquals("ACC",uneDemande.getLeEtatDemande(), "L etat de la demande est KO");
	}

	@Test
	public void testRefuser() {
		uneDemande.refuser("guignol") ;
		assertEquals("REF",uneDemande.getLeEtatDemande(), "L etat de la demande est KO");
		assertEquals("guignol",uneDemande.getLeMotifRefus(), "L etat de la demande est KO");

	}

}
