 
 /* Table Utilisateurs */

 create table Utilisateur
 	(
 		idUtilisateur int(11) not null auto_increment,
 		nom varchar(50),
 		prenom varchar(50),
 		email varchar(50),
 		mdp varchar(50),
 		permission int(5),
 		primary key(idUtilisateur)
 	);

/* Table Morceau */

create table Morceau
	(
       idMorceau int(11) not null auto_increment,
       nomMorceau varchar(50),
       idUtilisateur int(11),
       primary key(idMorceau),
       foreign key(idUtilisateur) references Utilisateur(idUtilisateur)
	);

/* Table Artiste */

create table Artiste
	(
        idArtiste int(11) not null auto_increment,
        nomArtiste varchar(50),
        styleArtiste varchar(50),
	idMorceau int(11),
        primary key(idArtiste),
        foreign key(idMorceau) references Morceau(idMorceau)
	);
/* Table Album */

 create table Album
 	(
 		idAlbum int(11) not null auto_increment,
 		nomAlbum varchar(50),
 		anneesAlbum int(4),
 		styleAlbum varchar(50),
 		idUtilisateur int(11),
 		idArtiste int(11),
 		primary key(idAlbum),
 		foreign key (idUtilisateur) references Utilisateur(idUtilisateur),
 		foreign key(idArtiste) references Artiste(idArtiste)
 	);
