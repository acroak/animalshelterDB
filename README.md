# Animal Adoption and Shelter DB creation

* [Course Paper](https://docs.google.com/document/d/11hdAN6mYcZeksjlhoQnG7yAX3CirxHW07EH-ylHUOIg/edit?usp=sharing)

## Goal
Explore SQL Database Design, Implementation, and Management. 

## Proposal
The theme of my proposed database project is based on pet adoptions and humane societies. I hope to create a schema closely representing a site like PetFinder.com or AdoptAPet.com. Through inference these sites appear to have:
* a User(Adopter) table containing a potential adopters contact information, 
* a Pet table containing all manner of adoptable critters, 
  * With child tables for Species, Breed, and Coat Coloring,
* a Shelter table containing shelter location and contact information,
* a Shelter Employee table containing employee data,
  * With a child table containing the different Employee Types
* An Appointment/Visit table,
* And finally an Adoption Certificate table to track who adopts which pet and when.

## Process
* Brainstorm desired tables and data it will hold
* Create Reational Diagrams and Schema
  
 ![Schema](https://github.com/acroak/animalshelterDB/blob/main/imgs/Schema.png)
 
 ![Relational Diagram](https://github.com/acroak/animalshelterDB/blob/main/imgs/uml.png)
* Develop Table creation script
* Research, gather, and clean data for insertion
* Upon creation od dattabase develop complex questions and translate into queries

* Adopter table

![adopter table](https://github.com/acroak/animalshelterDB/blob/main/imgs/tables/adopter_table.png)

* Pet Table

![pet info table](https://github.com/acroak/animalshelterDB/blob/main/imgs/tables/petinfo_table.png)

* Children of Pet Table: Breed, Species, and Color

![breed table](https://github.com/acroak/animalshelterDB/blob/main/imgs/tables/breed_table.png)
![species table](https://github.com/acroak/animalshelterDB/blob/main/imgs/tables/species_table.png)
![coat color table](https://github.com/acroak/animalshelterDB/blob/main/imgs/tables/coatcolor_table.png)

* Shelter Table

![shelter info table](https://github.com/acroak/animalshelterDB/blob/main/imgs/tables/shelter_table.png)

* Employee Table

![employee info table](https://github.com/acroak/animalshelterDB/blob/main/imgs/tables/employee_table.png)

*Child of Employee Table: Employee Types

![employee type table](https://github.com/acroak/animalshelterDB/blob/main/imgs/tables/employeetype_table.png)

* Vist Info Table

![visit info table](https://github.com/acroak/animalshelterDB/blob/main/imgs/tables/visitinfo_table.png)

* Adoption Info Table

![adoption info table](https://github.com/acroak/animalshelterDB/blob/main/imgs/tables/adoptioninfo_table.png)
