SELECT SYSDATE FROM dual;

CREATE TABLE tbl_student(
student_id VARCHAR2(100),
student_name VARCHAR2(100),
student_age NUMBER,
department_id VARCHAR2(100),
address_id VARCHAR2(100),
CONSTRAINTS STUDENT_PK PRIMARY KEY(STUDENT_ID),
CONSTRAINTS DEPARTMENT_FK FOREIGN KEY(department_id) REFERENCES tbl_department (department_id),
CONSTRAINTS ADDRESS_FK FOREIGN KEY(address_id) REFERENCES tbl_address (address_id)
);

CREATE TABLE tbl_department(
department_id VARCHAR2(100),
department_name VARCHAR2(100) UNIQUE,
CONSTRAINTS department_pk PRIMARY KEY(department_id)
);

CREATE TABLE tbl_address(
address_id VARCHAR2(100),
address_postal_code VARCHAR2(100),
address_line1 VARCHAR2(100),
address_line2 VARCHAR2(100),
CONSTRAINTS address_pk PRIMARY KEY(address_id)
);