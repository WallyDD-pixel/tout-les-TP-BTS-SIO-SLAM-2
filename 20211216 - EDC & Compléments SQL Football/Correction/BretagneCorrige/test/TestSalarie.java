package bretagne;


import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.hasItems;
import static org.hamcrest.Matchers.not;

public class TestSalarie {
	
	Salarie mrRobert  ;


	@BeforeEach
	public void setUp() throws Exception {
		
		mrRobert = new Salarie("Robert ENC","Robert", "Timo") ;

	}

	@Test
	public void testAjoutUneAbsence() {
		
		// je vais cr�er une nouvelle absence. peut �tre y a t'il un mod�le ailleurs ?
	
			
		// je vais ajouter cette absence � Mr Robert
			
		
		// je vais tester que la collection d'absences de Mr robert contient l'absence ajout�e

		DateFr debAbsence = new DateFr(25,2,2019) ;
		DateFr finAbsence = new DateFr(27,2,2019);
		Absence lundiJeViensPasJaiPiscine = new Absence(debAbsence,finAbsence,"Piscine",mrRobert) ;

		// je vais ajouter cette absence � Mr Robert

		mrRobert.ajoutUneAbsence(lundiJeViensPasJaiPiscine);

		// je vais tester que la collection d'absences de Mr robert contient l'absence ajout�e

		assertThat(mrRobert.getListeAbsences(), hasItems(lundiJeViensPasJaiPiscine));

	}

	@Test
	public void testAbsenceEnAttente(){
		DateFr debAbsence = new DateFr(25,2,2019) ;
		DateFr finAbsence = new DateFr(27,2,2019);
		Absence lundiJeViensPasJaiPiscine = new Absence(debAbsence,finAbsence,"Piscine",mrRobert) ;
		DemandeAbsence uneDemande = new DemandeAbsence(lundiJeViensPasJaiPiscine);
		mrRobert.ajoutUneAbsence(lundiJeViensPasJaiPiscine);

		assertThat("Pas absence piscine",mrRobert.getAbsencesEnAttente(), hasItems(lundiJeViensPasJaiPiscine));

		DateFr deb2Absence = new DateFr(18,2,2019) ;
		DateFr fin2Absence = new DateFr(22,2,2019);
		Absence leMardiCestRavioli = new Absence(deb2Absence,fin2Absence,"Raviolis",mrRobert) ;
		mrRobert.ajoutUneAbsence(leMardiCestRavioli);

		assertThat("Pas absence piscine ou ravioli",mrRobert.getAbsencesEnAttente(),
				hasItems(lundiJeViensPasJaiPiscine,leMardiCestRavioli));

		leMardiCestRavioli.setLeEtat("ACC");
		assertThat("Pas absence piscine ou ravioli",mrRobert.getAbsencesEnAttente(),
				hasItems(lundiJeViensPasJaiPiscine));
		assertThat("Pas absence piscine ou ravioli",mrRobert.getAbsencesEnAttente(),
				not(hasItems(leMardiCestRavioli)));

	}


}
