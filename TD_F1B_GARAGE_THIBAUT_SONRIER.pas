ALGORITHME:Le_Garage_automobile
//BUT: Faire un algo qui demande de creer de garage, les vehicules, génerer les plaquer calculer l'age, la cote argus, valider certaines saisie et afficher le tout
//ENTREE : Des types enregistrement et énumurés pour le listage  et deux tableaux pour stocker les info
//SORTIE : l'affichage global 

CONST
	MAXV <- 15 : ENTIER

Type petrole=(essence,diesel,GPL,electrique,hybride)

Type brand=(peugeot,bmw,audi,aston,mercedez)

Type opt=(clim,finition,toit,gtline)

Type info=ENREGISTREMENT
	
	Numero:ENTIER
	voie:ENTIER
	CP:ENTIER
	ville:CHAINE
	pays:CHAINE
	NumTel:ENTIER
	email:CHAINE

FINENREGISTREMENT

Type time=ENREGISTREMENT

	year:ENTIER
	mois:ENTIER
	jour:ENTIER

FINENREGISTREMENT


Type car=ENREGISTREMENT

	marque:brand
	modele:CHAINE
	energie:petrole
	PF:ENTIER
	PDYN:ENTIER
	couleur:CHAINE
	option:opt
	annee:ENTIER
	prix:ENTIER
	argus:ENTIER
	date:time
	age:ENTIER
	immat:CHAINE

FINENREGISTREMENT

Type garage=ENREGISTREMENT

	nom:ENTIER
	adresse:info
	voiture:car
	capaMAX:ENTIER

FINENREGISTREMENT


Type
	Tab:Tableau[1..MAXV]de garage
	Tab2:Tableau[1..MAXV]de car


PROCEDURE CREER_GARAGE(VAR garages:Tab)
//BUT : Permettre a l'utilisateur de rentrer les info sur son garage
//ENTREE : un tableau
//SORTIE : les tableaux remplis de données
VAR
	i:ENTIER

	DEBUT

		ECRIRE " Vous etes dans la creation des garages veuillez suivre les instructions"
		POUR i allant de 1 a 2 FAIRE
		DEBUT
			ECRIRE "Entrer le nom du garage : "
			LIRE (garages[i].nom)

			ECRIRE " Renseignez vos informations : "

			ECRIRE " Le numéro de votre rue : "
			LIRE (garages[i].adresse.Numero)

			ECRIRE "La voie de votre rue : "
			LIRE (garages[i].adresse.voie)

			ECRIRE "Le code postal : "
			LIRE (garage[i].adresse.CP)

			ECRIRE "Votre ville : "
			LIRE (garages[i].adresse.ville)

			ECRIRE "Votre pays : "
			LIRE (garages[i].adresse.pays)

			REPETER
				DEBUT


				ECRIRE " Votre numéro de téléphone : "
				LIRE (garages[i].adresse.NumTel)

				SI (garages[i].adresse.NumTel <> 10) ALORS
					ECRIRE "Vous n''avez pas taper un numéro valable ! RECOMMENCEZ !"
				FINSI

			FINREPETER
			JUSQU'A (garages[i].adresse.NumTel=10)


			ECRIRE " Votre email : "
			LIRE (garages[i].adresse.email)


			REPETER
				DEBUT

				ECRIRE " La capacité de votre garage : "
				LIRE (garages[i].capaMAX)

				SI (garages[i].capaMAX>15) OU (garages[i].capaMAX<6)
					ECRIRE "La capacité est soit trop faible, soit trop élevé ! RECOMMENCEZ !"
				FINSI

			FINREPETER
			JUSQU'A (garages[i].capaMAX<=15) OU (garages[i].capaMAX>=6)

		FINPOUR

	FIN

FINPROCEDURE


PROCEDURE CREER_VOITURES(VAR garages:Tab; VAR voiture:Tab2)
//BUT : Permettre a l'utilisateur de rentrer les voitures de son garage
//ENTREE : deux tableaux
//SORTIE : les tableaux remplis de données

VAR

i:ENTIER

	DEBUT

		POUR i allant de 1 (garages[i].capaMAX) FAIRE
		DEBUT

			ECRIRE " Vous etes dans la saisie de voiture "

			ECRIRE "Saissisez la marque du vehicule : "
			LIRE (voiture[i].marque)

			ECRIRE " Le modèle du vehicule : "
			LIRE (voiture[i].modele)

			ECRIRE " L'essence qu''utilise le vehicule :"
			LIRE (voiture[i].energie)

			ECRIRE " La Puissance Fiscal du vehicule : "
			LIRE (voiture[i].PF)

			ECRIRE " La Puissance DYN du vehicule : "
			LIRE (voiture[i].PDYN)

			ECRIRE " La couleur du vehicule : "
			LIRE (voiture[i].couleur)

			ECRIRE " Les options du vehicule :"
			LIRE (voiture[i].option)

			ECRIRE " L''année du modèle : "
			LIRE (voiture[i].annee)

			ECRIRE " Prix du modèle (valeur à neuf)"
			LIRE (voiture[i].prix)

			ECRIRE " La cote Argus du vehicule : "
			LIRE (voiture[i].argus)

			ECRIRE " Date de mise en circulation du vehicule : "
			ECRIRE " L''année : "
			LIRE (voiture[i].date.year)
			ECRIRE " Le mois : "
			LIRE (voiture[i].date.mois)
			ECRIRE " Le jour : "
			LIRE (voiture[i].date.jour)


			voiture[i].age <- Aujourd'hui - voiture[i].annee
			ECRIRE "L'age de votre vehicule est de : " & voiture[i].age

		FINPOUR

	FIN

FINPROCEDURE






