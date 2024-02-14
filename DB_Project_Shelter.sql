CREATE SCHEMA Animal_Shelter;

USE Animal_Shelter;

#
# TABLE STRUCTURE FOR: Shelter
# This table contains contact information for different shelter locations
#

CREATE TABLE Shelter (
  ShelterId INT NOT NULL AUTO_INCREMENT,
  S_Name varchar(255),
  S_Street varchar(255),
  S_City varchar(255),
  S_State varchar(255),
  S_ZipCode varchar(5),
  S_Email varchar(255),
  S_Phone BIGINT,
  S_Website varchar(255),
  PRIMARY KEY(ShelterId) 
);

#
# TABLE STRUCTURE FOR: EmployeeType
# defines the employment types of employees
# ex: vetrinarian, volunteer, adoption counselor, etc.
#

CREATE TABLE EmployeeType (
  EmpTypeId INT NOT NULL AUTO_INCREMENT,
  EmpTitle varchar(255),
  PRIMARY KEY(EmpTypeId)
);

#
# TABLE STRUCTURE FOR: Employee
# contains the various employees associated with different shelters
#

CREATE TABLE Employee (
  EmployeeId INT NOT NULL AUTO_INCREMENT,
  E_FName varchar(255),
  E_LName varchar(255),
  E_Email varchar(255),
  E_Phone BIGINT,
  ShelterId INT,
  EmpTypeId INT,
  PRIMARY KEY(EmployeeId),
  FOREIGN KEY (ShelterId) REFERENCES Shelter(ShelterId),
  FOREIGN KEY (EmpTypeId) REFERENCES EmployeeType(EmpTypeId)
);

#
# TABLE STRUCTURE FOR: Species
# contains a normalized table listing different animal species available in shelters
# ex: Dog, Cat, Bird, Fish, Small and Furry, Barnyard, Exotic
#

CREATE TABLE Species (
  SpeciesId INT NOT NULL AUTO_INCREMENT,
  SpeciesName varchar(255),
  PRIMARY KEY(SpeciesId)
);

#
# TABLE STRUCTURE FOR: Breed
# contains a normalized table listing different animal breeds available in shelters
# ex: german shepherd, labrador retriever, siamese, american shorthair, budgie, chicken
#

CREATE TABLE Breed (
  BreedId INT NOT NULL AUTO_INCREMENT,
  BreedName varchar(255),
  PRIMARY KEY(BreedId)
);

#
# TABLE STRUCTURE FOR: CoatColor
# contains a normailized table listing different animal coat colors
# ex: brown, tuxedo, black and white, seal point, brindle, tri color, calico
#

CREATE TABLE CoatColor (
    ColorId INT NOT NULL AUTO_INCREMENT,
    ColorName varchar(255),
    PRIMARY KEY(ColorId)
);

#
# TABLE STRUCTURE FOR: Animal
#contains the adoptable animals profile
#

CREATE TABLE Animal (
    PetId INT NOT NULL AUTO_INCREMENT,
    PetName varchar(255),
    Gender varchar(255),
    DateOfBirth DATE,
    Age INT,
    SpeciesId INT,
    BreedId INT,
    ColorId INT,
    PRIMARY KEY(PetId),
    FOREIGN KEY (SpeciesId) REFERENCES Species(SpeciesId),
    FOREIGN KEY (BreedId) REFERENCES Breed(BreedId),
    FOREIGN KEY (ColorId) REFERENCES CoatColor(ColorId)
);

#
# TABLE STRUCTURE FOR: FavesList
# a list of favorited animals, belongs to an individual user
#

CREATE TABLE FavesList (
    ListId INT NOT NULL AUTO_INCREMENT,
    ListName varchar(255),
    CreatedOn DATE,
    PetId_01 INT,
    PetId_02 INT,
    PetId_03 INT,
    PetId_04 INT,
    PetId_05 INT,
    PetId_06 INT,
    PetId_07 INT,
    PetId_08 INT,
    PetId_09 INT,
    PetId_10 INT,
    PRIMARY KEY(ListId),
    FOREIGN KEY(PetId_01) REFERENCES Animal(PetId),
    FOREIGN KEY(PetId_02) REFERENCES Animal(PetId),
    FOREIGN KEY(PetId_03) REFERENCES Animal(PetId),
    FOREIGN KEY(PetId_04) REFERENCES Animal(PetId),
    FOREIGN KEY(PetId_05) REFERENCES Animal(PetId),
    FOREIGN KEY(PetId_06) REFERENCES Animal(PetId),
    FOREIGN KEY(PetId_07) REFERENCES Animal(PetId),
    FOREIGN KEY(PetId_08) REFERENCES Animal(PetId),
    FOREIGN KEY(PetId_09) REFERENCES Animal(PetId),
    FOREIGN KEY(PetId_10) REFERENCES Animal(PetId)
);

#
# TABLE STRUCTURE FOR: Adopter
# Adopter/User profile of an individual looking to bring home an animal
#

CREATE TABLE Adopter (
    AdopterId INT NOT NULL AUTO_INCREMENT,
    A_FName varchar(255),
    A_LName varchar(255),
    A_Street varchar(255),
    A_City varchar(255),
    A_State varchar(255),
    A_ZipCode varchar(5),
    A_Phone BIGINT,
    A_Email varchar(255),
    ListId INT,
    PRIMARY KEY(AdopterId),
    FOREIGN KEY(ListId) REFERENCES FavesList(ListId)
);

#
# TABLE STRUCTURE FOR: VisitInfo
# contains the scheduled visit for a specific user and animal at one specific shelter
#

CREATE TABLE VisitInfo (
    VisitId INT NOT NULL AUTO_INCREMENT,
    VisitDate DATE,
    VisitTime TIME,
    ShelterId INT,
    PetId INT,
    AdopterId INT,
    PRIMARY KEY(VisitId),
    FOREIGN KEY(ShelterId) REFERENCES Shelter(ShelterId),
    FOREIGN KEY(PetId) REFERENCES Animal(PetId),
    FOREIGN KEY(AdopterId) REFERENCES Adopter(AdopterId)

);

#
# TABLE STRUCTURE FOR: AdoptionInfo
# contains the formal adoption confirmation
#

CREATE TABLE AdoptionInfo (
    CertificateId INT NOT NULL AUTO_INCREMENT,
    AdoptionDate DATE,
    PetId INT,
    EmployeeId INT,
    AdopterId INT,
    PRIMARY KEY(CertificateId),
    FOREIGN KEY(PetId) REFERENCES Animal(PetId),
    FOREIGN KEY(EmployeeId) REFERENCES Employee(EmployeeId),
    FOREIGN KEY(AdopterId) REFERENCES Adopter(AdopterId)
);