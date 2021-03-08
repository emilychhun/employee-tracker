DELETE FROM ourdepartments;
INSERT INTO ourdepartments (id, name) VALUES (1, "Human Resources");
INSERT INTO ourdepartments (id, name) VALUES (2, "Retail");
INSERT INTO ourdepartments (id, name) VALUES (3, "Accounting");
INSERT INTO ourdepartments (id, name) VALUES (4, "Sales");
INSERT INTO ourdepartments (id, name) VALUES (5, "Engineering");


DELETE FROM ourrole;
INSERT INTO ourrole (id, title, salary, ourdepartments_id) VALUES (1, "general HR", 65000, 1); 

INSERT INTO ourrole (id, title, salary, ourdepartments_id) VALUES (2, "Manager", 85000, 1); 

INSERT INTO ourrole (id, title, salary, ourdepartments_id) VALUES (3, "shipping", 55000, 2); 

INSERT INTO ourrole (id, title, salary, ourdepartments_id) VALUES (4,"director", 85000, 2); 

INSERT INTO ourrole (id, title, salary, ourdepartments_id) VALUES (5, "accounting", 55000, 3); 


INSERT INTO ourrole (id, title, salary, ourdepartments_id) VALUES (6, "senior accountig", 75000, 3); 

INSERT INTO ourrole (id, title, salary, ourdepartments_id) VALUES (7, "director", 100000, 3); 

INSERT INTO ourrole (id, title, salary, ourdepartments_id) VALUES (8, "general sales", 45000, 4); 

INSERT INTO ourrole (id, title, salary, ourdepartments_id) VALUES (9,"manager sales", 65000, 4); 


INSERT INTO ourrole (id, title, salary, ourdepartments_id) VALUES (10, "engineeringI", 85000, 5); 

INSERT INTO ourrole (id, title, salary, ourdepartments_id) VALUES (11, "engineeringII", 45000, 5);        


INSERT INTO ourrole (id, title, salary, ourdepartments_id) VALUES (12, "director", 40000, 5); 




DELETE FROM ouremployees;
INSERT INTO ouremployees ( id, first_name, last_name, ourrole_id, ourmanager_id) VALUES (1, "Ly", "Ted", 1, 1);


INSERT INTO ouremployees ( id, first_name, last_name, ourrole_id, ourmanager_id) VALUES (2, "emily", "chhun", 1, 1);

INSERT INTO ouremployees ( id, first_name, last_name, ourrole_id, ourmanager_id) VALUES (3, "cavin", "ngov", 2, 2);   

INSERT INTO ouremployees ( id, first_name, last_name, ourrole_id, ourmanager_id) VALUES (4, "jason", "bang", 2, 2); 
INSERT INTO ouremployees ( id, first_name, last_name, ourrole_id, ourmanager_id) VALUES (5, "jamie", "aung", 3, 3); 
INSERT INTO ouremployees ( id, first_name, last_name, ourrole_id, ourmanager_id) VALUES (6, "reza", "martirosian", 3, 4); 
INSERT INTO ouremployees ( id, first_name, last_name, ourrole_id, ourmanager_id) VALUES (7, "jeremy", "nance", 4, 3);  
INSERT INTO ouremployees ( id, first_name, last_name, ourrole_id, ourmanager_id) VALUES (8, "saul", "picazo", 4, 5); 
INSERT INTO ouremployees ( id, first_name, last_name, ourrole_id, ourmanager_id) VALUES (9, "melva", "crump", 5, 4);   
INSERT INTO ouremployees ( id, first_name, last_name, ourrole_id, ourmanager_id) VALUES (10, "angelica", "miranda", 5, 3); 
INSERT INTO ouremployees ( id, first_name, last_name, ourrole_id, ourmanager_id) VALUES (11, "jeanne", "walters", 5, 2);
INSERT INTO ouremployees ( id, first_name, last_name, ourrole_id, ourmanager_id) VALUES (12, "kimberly", "morris", 3, 5);






