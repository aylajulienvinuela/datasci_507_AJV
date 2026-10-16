--1. Create a Table with Varying Columns
CREATE TABLE patientdata(
    patient_id INT PRIMARY KEY,
    first_name VARCHAR(25),
    last_name VARCHAR(50),
    age INT CHECK (age >= 0 AND age <= 99),
    birthday DATE,
    weight FLOAT,
    height FLOAT,
    appointment_date TIMESTAMP,
    diagnosis_code VARCHAR2(15),
    admission_department VARCHAR(20),
    discharge_department VARCHAR(20)
);

--2. Populate Data into Columns
INSERT ALL
  INTO PATIENTDATA (patient_id, first_name, last_name, age, birthday, weight, height, appointment_date, diagnosis_code, admission_department, discharge_department)
  VALUES (10034,'Abigail','Lourdes',15,TO_DATE('2011-01-10', 'YYYY-MM-DD'),120.3,60.0,TO_TIMESTAMP('2025-06-04 09:00:00', 'YYYY-MM-DD HH24:MI:SS'),'I00-I99','Emergency','Outpatient')
  INTO PATIENTDATA (patient_id, first_name, last_name, age, birthday, weight, height, appointment_date, diagnosis_code, admission_department, discharge_department)
  VALUES (10035,'Becca','Martinez',20,TO_DATE('2006-02-15', 'YYYY-MM-DD'),125.5,61.3,TO_TIMESTAMP('2025-07-02 10:00:00', 'YYYY-MM-DD HH24:MI:SS'),'J00-J99','Elective','Rehab')
  INTO PATIENTDATA (patient_id, first_name, last_name, age, birthday, weight, height, appointment_date, diagnosis_code, admission_department, discharge_department)
  VALUES (10036,'Cristal','Nunez',25,TO_DATE('2001-03-20', 'YYYY-MM-DD'),130.7,62.6,TO_TIMESTAMP('2025-08-28 11:00:00', 'YYYY-MM-DD HH24:MI:SS'),'O00-O9A','General','Social Work')
  INTO PATIENTDATA (patient_id, first_name, last_name, age, birthday, weight, height, appointment_date, diagnosis_code, admission_department, discharge_department)
  VALUES (10037,'Diana','Ortiz',30,TO_DATE('1996-04-25', 'YYYY-MM-DD'),135.9,63.9,TO_TIMESTAMP('2025-09-08 08:00:00', 'YYYY-MM-DD HH24:MI:SS'),'P00-P96','Emergency','Rehab')
  INTO PATIENTDATA (patient_id, first_name, last_name, age, birthday, weight, height, appointment_date, diagnosis_code, admission_department, discharge_department)
  VALUES (10038,'Evan','Perez',35,TO_DATE('1991-05-30', 'YYYY-MM-DD'),141.1,64.0,TO_TIMESTAMP('2025-10-14 07:00:00', 'YYYY-MM-DD HH24:MI:SS'),'L00-L99','Elective','Social Work')
  INTO PATIENTDATA (patient_id, first_name, last_name, age, birthday, weight, height, appointment_date, diagnosis_code, admission_department, discharge_department)
  VALUES (10039,'Fred','Quero',40,TO_DATE('1986-06-05', 'YYYY-MM-DD'),146.3,65.4,TO_TIMESTAMP('2025-11-23 08:30:00', 'YYYY-MM-DD HH24:MI:SS'),'N00-N99','General','Outpatient')
  INTO PATIENTDATA (patient_id, first_name, last_name, age, birthday, weight, height, appointment_date, diagnosis_code, admission_department, discharge_department)
  VALUES (10040,'George','Rodriguez',45,TO_DATE('1981-07-10', 'YYYY-MM-DD'),151.5,66.8,TO_TIMESTAMP('2025-12-24 13:00:00', 'YYYY-MM-DD HH24:MI:SS'),'M00-M99','Emergency','Social Work')
  INTO PATIENTDATA (patient_id, first_name, last_name, age, birthday, weight, height, appointment_date, diagnosis_code, admission_department, discharge_department)
  VALUES (10041,'Helena','Sanchez',50,TO_DATE('1976-08-15', 'YYYY-MM-DD'),156.5,69.0,TO_TIMESTAMP('2026-01-28 14:00:00', 'YYYY-MM-DD HH24:MI:SS'),'K00-K95','Elective','Outpatient')
  INTO PATIENTDATA (patient_id, first_name, last_name, age, birthday, weight, height, appointment_date, diagnosis_code, admission_department, discharge_department)
  VALUES (10042,'Isabella','Torres',55,TO_DATE('1971-09-20', 'YYYY-MM-DD'),161.7,70.1,TO_TIMESTAMP('2026-02-05 15:00:00', 'YYYY-MM-DD HH24:MI:SS'),'Q00-QA1','General','Rehab')
  INTO PATIENTDATA (patient_id, first_name, last_name, age, birthday, weight, height, appointment_date, diagnosis_code, admission_department, discharge_department)
  VALUES (10043,'Jack','Uribe',60,TO_DATE('1965-10-25', 'YYYY-MM-DD'),166.9,71.2,TO_TIMESTAMP('2026-03-05 16:00:00', 'YYYY-MM-DD HH24:MI:SS'),'R00-R99','ICU','Inpatient')
  INTO PATIENTDATA (patient_id, first_name, last_name, age, birthday, weight, height, appointment_date, diagnosis_code, admission_department, discharge_department)
  VALUES (10044,'Kaitlyn','Vinuela',65,TO_DATE('1960-11-30', 'YYYY-MM-DD'),172.1,73.3,TO_TIMESTAMP('2026-04-09 09:30:00', 'YYYY-MM-DD HH24:MI:SS'),'S00-T88','Inpatient','ICU')
  SELECT * FROM dual;

--3. Update One of the Columns
UPDATE patientdata
SET last_name='Santiago'
WHERE patient_id=10041;

--View Table
SELECT *
FROM patientdata ;

--4. Add Column to Table
ALTER TABLE patientdata
ADD phone_number NUMBER(10);

--5. Delete a Row from the Table
DELETE FROM PATIENTDATA
WHERE patient_id = 10034;
COMMIT;

--View Table
SELECT *
FROM patientdata ;

--6a. Create a Second Table
CREATE TABLE DEPARTMENTDETAILS (
    dept_id NUMBER(5) PRIMARY KEY,
    department_name VARCHAR2(20),
    head_doctor VARCHAR2(50),
    building_number VARCHAR2(10),
    phone_extension NUMBER(4)
);

--6b. Add Data into New Table
INSERT ALL
  INTO departmentdetails (dept_id, department_name, head_doctor, building_number, phone_extension) 
       VALUES (1, 'Emergency', 'Dr. Smith', 'B-101', 4001)
  INTO departmentdetails (dept_id, department_name, head_doctor, building_number, phone_extension) 
       VALUES (2, 'Elective', 'Dr. Adams', 'B-102', 4002)
  INTO departmentdetails (dept_id, department_name, head_doctor, building_number, phone_extension) 
       VALUES (3, 'General', 'Dr. Baker', 'B-103', 4003)
  INTO departmentdetails (dept_id, department_name, head_doctor, building_number, phone_extension) 
       VALUES (4, 'ICU', 'Dr. Evans', 'B-106', 4006)
  INTO departmentdetails (dept_id, department_name, head_doctor, building_number, phone_extension) 
       VALUES (5, 'Inpatient', 'Dr. Foster', 'B-107', 4007)
SELECT * FROM dual;

--6c. View Second Table
SELECT * FROM departmentdetails

--6d. Complete an Inner Join between the 2 Tables 
SELECT 
    p.patient_id, 
    p.first_name, 
    p.last_name, 
    p.admission_department, 
    d.head_doctor, 
    d.building_number
FROM patientdata p
INNER JOIN departmentdetails d 
    ON p.admission_department = d.department_name
WHERE ROWNUM <= 100; 

--6e. Complete an Outer Join between the 2 Tables
SELECT 
    p.patient_id, 
    p.first_name, 
    p.last_name, 
    p.admission_department, 
    d.department_name,
    d.head_doctor, 
    d.building_number
FROM patientdata p
FULL OUTER JOIN departmentdetails d 
    ON p.admission_department = d.department_name
WHERE ROWNUM <= 100;