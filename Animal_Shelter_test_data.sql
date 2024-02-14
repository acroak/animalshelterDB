/* -------------------------------------------------------------------------
* --------------------------~ INITIAL TEST DATA ~--------------------------
------------------------------------------------------------------------- */


/* -------------------------------------------------------------------------
* Add data to the Shelter Info Table
* INSERT INTO Shelter( S_Name, S_Street, S_City, S_State, S_ZipCode, S_Email, S_Phone, S_Website ) VALUES ( x, x, x, x, x, x, x );
------------------------------------------------------------------------- */ 
INSERT INTO Shelter( S_Name, S_Street, S_City, S_State, S_ZipCode, S_Email, S_Phone, S_Website ) VALUES ( 'Animal Welfare Society', '46 Holland Rd', 'Kennebunk', 'ME', 04043, '', 2079853244, 'https://animalwelfaresociety.org/' );

INSERT INTO Shelter( S_Name, S_Street, S_City, S_State, S_ZipCode, S_Email, S_Phone, S_Website ) VALUES ( 'Animal Refuge League of Greater Portland', '217 Landing Rd', 'Westbrook', 'ME', 04092, 'volunteer@arlgp.org', 2078549771, 'https://arlgp.org/' );

INSERT INTO Shelter( S_Name, S_Street, S_City, S_State, S_ZipCode, S_Email, S_Phone, S_Website ) VALUES ( 'Friends of Feral Felines', '651 Forest Ave', 'Portland', 'ME', 04101, 'office@feralfelines.net', 2077973014, 'https://feralfelines.net/' );

/* -------------------------------------------------------------------------
* Add data to the EmployeeType Table
* INSERT INTO EmployeeType( EmpTitle ) VALUES ( x );
------------------------------------------------------------------------- */ 
INSERT INTO EmployeeType( EmpTitle ) VALUES ( 'Adoption Counselor' );
INSERT INTO EmployeeType( EmpTitle ) VALUES ( 'Adoption Director' );
INSERT INTO EmployeeType( EmpTitle ) VALUES ( 'Veterinarian' );
INSERT INTO EmployeeType( EmpTitle ) VALUES ( 'Veterinarian Assistant' );
INSERT INTO EmployeeType( EmpTitle ) VALUES ( 'Volunteer' );


/* -------------------------------------------------------------------------
* Add Data to the Employee Table
* INSERT INTO Employee( E_FName, E_LName, E_Email, E_Phone, ShelterId, EmpTypeId ) VALUES ( x, x, x, x, x );
------------------------------------------------------------------------- */
INSERT INTO Employee( E_FName, E_LName, E_Email, E_Phone, ShelterId, EmpTypeId ) VALUES ( 'Amanda', 'Cooke', 'acooke@feralfelines.net', 2071234567 ,3, 1 );
INSERT INTO Employee( E_FName, E_LName, E_Email, E_Phone, ShelterId, EmpTypeId ) VALUES ( 'Evan', 'Smith', 'esmith@feralfelines.net', 2075551234, 3, 2 );

INSERT INTO Employee( E_FName, E_LName, E_Email, E_Phone, ShelterId, EmpTypeId ) VALUES ( 'Ruby', 'Collier', 'rcollier@arlgp.org', 2075555678, 2, 1 );
INSERT INTO Employee( E_FName, E_LName, E_Email, E_Phone, ShelterId, EmpTypeId ) VALUES ( 'Edison', 'Webber', 'ewebber@arlgp.org', 2075551357, 2, 3 );

INSERT INTO Employee( E_FName, E_LName, E_Email, E_Phone, ShelterId, EmpTypeId ) VALUES ( 'Silas', 'Mitchell', 'smitchell@aws.org', 2075552468, 1, 4 );
INSERT INTO Employee( E_FName, E_LName, E_Email, E_Phone, ShelterId, EmpTypeId ) VALUES ( 'Gianna', 'Arnold', 'garnold@aws.org', 2075553579, 1, 2 );

/*------------------------------------------------------------------------
* Add data to the Species Table
* INSERT INTO Species( SpeciesName ) VALUES ( x );
------------------------------------------------------------------------ */
INSERT INTO Species( SpeciesName ) VALUES ( 'Dog' );
INSERT INTO Species( SpeciesName ) VALUES ( 'Cat' );
INSERT INTO Species( SpeciesName ) VALUES ( 'Small and Furry' );
INSERT INTO Species( SpeciesName ) VALUES ( 'Bird' );
INSERT INTO Species( SpeciesName ) VALUES ( 'Barnyard' );
INSERT INTO Species( SpeciesName ) VALUES ( 'Exotic' );

/*------------------------------------------------------------------------
* Add data to the Breed Table
* INSERT INTO Breed( BreedName ) VALUES ( x );
------------------------------------------------------------------------ */
INSERT INTO Breed( BreedName ) VALUES ( 'German Shepherd' );
INSERT INTO Breed( BreedName ) VALUES ( 'Australian Cattledog' );
INSERT INTO Breed( BreedName ) VALUES ( 'American Shorthair' );
INSERT INTO Breed( BreedName ) VALUES ( 'Siamese' );
INSERT INTO Breed( BreedName ) VALUES ( 'Rat' );
INSERT INTO Breed( BreedName ) VALUES ( 'Guinea Pig' );
INSERT INTO Breed( BreedName ) VALUES ( 'Budgie' );
INSERT INTO Breed( BreedName ) VALUES ( 'Conure' );
INSERT INTO Breed( BreedName ) VALUES ( 'Goose' );
INSERT INTO Breed( BreedName ) VALUES ( 'Chicken' );
INSERT INTO Breed( BreedName ) VALUES ( 'Serval' );
INSERT INTO Breed( BreedName ) VALUES ( 'Hedgehog' );

/*------------------------------------------------------------------------
* Add data to the Coat Color Table
* INSERT INTO CoatColor( ColorName ) VALUES ( x );
------------------------------------------------------------------------ */
INSERT INTO CoatColor( ColorName ) VALUES ( 'Tan' );
INSERT INTO CoatColor( ColorName ) VALUES ( 'Brown' );
INSERT INTO CoatColor( ColorName ) VALUES ( 'Black' );
INSERT INTO CoatColor( ColorName ) VALUES ( 'Gray' );
INSERT INTO CoatColor( ColorName ) VALUES ( 'White' );
INSERT INTO CoatColor( ColorName ) VALUES ( 'Brindle' );
INSERT INTO CoatColor( ColorName ) VALUES ( 'Tuxedo' );
INSERT INTO CoatColor( ColorName ) VALUES ( 'Seal Point' );
INSERT INTO CoatColor( ColorName ) VALUES ( 'Blue' );
INSERT INTO CoatColor( ColorName ) VALUES ( 'Green' );

/*------------------------------------------------------------------------
* Add data to the Animal Table
* INSERT INTO Animal( PetName, Gender, DateOfBirth, Age, SpeciesId, BreedId, ColorId ) VALUES ( x, x, x, x, x, x, x );
------------------------------------------------------------------------ */
INSERT INTO Animal( PetName, Gender, DateOfBirth, Age, SpeciesId, BreedId, ColorId ) VALUES ( 'Kito', 'Female', '1989-10-01', 20, 2, 4, 8 );

INSERT INTO Animal( PetName, Gender, DateOfBirth, Age, SpeciesId, BreedId, ColorId ) VALUES ( 'Mya', 'Female', '1989-10-01', 16, 1, 2, 9 );

INSERT INTO Animal( PetName, Gender, DateOfBirth, Age, SpeciesId, BreedId, ColorId ) VALUES ( 'Pepper', 'Female', '2018-11-30', 5, 6, 12, 1 );

/*------------------------------------------------------------------------
* Add data to the Faves List Table
* INSERT INTO FavesList( ListName, CreatedOn, PetId01, PetId02, PetId03, PetId04, PetId05, PetId06, PetId07, PetId08, PetId09, PetId10 ) VALUES ( x, x, x, x, x, x, x, x, x, x, x, x );
------------------------------------------------------------------------ */
INSERT INTO FavesList( ListName, CreatedOn, PetId_01, PetId_02 ) VALUES ( 'Kitty Cuties', '2023-10-24', 1, 3 );

/*------------------------------------------------------------------------
* Add data to the Adopter Table
* INSERT INTO Adopter( A_FName, A_LName, A_Street, A_City, A_State, A_ZipCode, A_Phone, A_Email, ListId ) VALUES ( x, x, x, x, x, x, x, x, x );
------------------------------------------------------------------------ */
INSERT INTO Adopter( A_FName, A_LName, A_Street, A_City, A_State, A_ZipCode, A_Phone, A_Email, ListId ) VALUES ( 'Andrea', 'Croak', '59 State St', 'Portland', 'ME', 04101, 4018628198, 'acroak@live.com', 1 );

INSERT INTO Adopter( A_FName, A_LName, A_Street, A_City, A_State, A_ZipCode, A_Phone, A_Email ) VALUES ( 'Chris', 'Chase', '59 State St', 'Portland', 'ME', 04101, 5555555555, 'cchase28@live.com' );

/*------------------------------------------------------------------------
* Add data to the VisitInfo table
* INSERT INTO VisitInfo( VisitDate, VisitTime, ShelterId, PetId, AdopterId ) VALUES ( x, x, x, x, x );
------------------------------------------------------------------------ */
INSERT INTO VisitInfo( VisitDate, VisitTime, ShelterId, PetId, AdopterId ) VALUES ( '2023-10-31', '12:00:00', 2, 1, 1 );

/*------------------------------------------------------------------------
* Add data to AdoptionInfo table
* INSERT INTO AdoptionInfo( AdoptionDate, PetId, EmployeeId, AdopterId ) VALUES ( x, x, x, x );
------------------------------------------------------------------------ */



/*------------------------------------------------------------------------
* Query about an adoption visit
------------------------------------------------------------------------ */
SELECT VisitDate, VisitTime, A_FName, PetName, S_Name FROM visitinfo
JOIN adopter ON visitinfo.AdopterId = adopter.AdopterId
JOIN animal ON visitinfo.PetId = animal.PetId
JOIN shelter ON visitinfo.ShelterId = shelter.ShelterId;

/*------------------------------------------------------------------------
* Query about a Pet and their species, breed, and coat color
------------------------------------------------------------------------ */
SELECT PetId, PetName, Gender, DateOfBirth, Age, SpeciesName, BreedName, ColorName FROM animal
JOIN species ON animal.SpeciesId = species.SpeciesId
JOIN breed ON animal.BreedId = breed.BreedId
JOIN coatcolor ON animal.ColorId = coatcolor.ColorId;