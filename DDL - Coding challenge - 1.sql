-- Creating a database
Create database Hospital_Db;

-- calling the database
use Hospital_Db;
    
Create table Patients (
	PatientID Int,
    patientname Varchar(30),
    Age tinyint,
    Gender enum ('Male','female'),
    Admissiondate date
)


-- Alter
alter table patients
add DoctorAssigned varchar(50);

alter table patients
Modify patientname Varchar (100);

-- rename the table 
rename table patients to Patient_Info;

Use hospital_db;

Insert into Patient_Info ( PatientID, Patientname, Age, Gender, Admissiondate, DoctorAssigned) values
(101, 'Geetha' ,35, 'Female', curdate(), 'Dr.Siva')

Select * from Patient_Info;

Truncate table Patient_Info ;

drop table Patient_Info ;
