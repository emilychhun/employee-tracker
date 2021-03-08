INSERT INTO ourdepartments (id, name) VALUES (1, "Human Resources");
INSERT INTO ourdepartments (id, name) VALUES (2, "Retail");
INSERT INTO ourdepartments (id, name) VALUES (3, "Accounting");
INSERT INTO ourdepartments (id, name) VALUES (4, "Sales");
INSERT INTO ourdepartments (id, name) VALUES (5, "Engineering");


INSERT INTO ourrole (title, salary, ourdepartments_id) VALUES ("general HR", 65000, 1); 

INSERT INTO ourrole (title, salary, ourdepartments_id) VALUES ("Manager", 85000, 1); 

INSERT INTO ourrole (title, salary, ourdepartments_id) VALUES ("shipping", 55000, 2); 

INSERT INTO ourrole (title, salary, ourdepartments_id) VALUES ("director", 85000, 2); 

INSERT INTO ourrole (title, salary, ourdepartments_id) VALUES ("accounting", 55000, 3); 


INSERT INTO ourrole (title, salary, ourdepartments_id) VALUES ("senior accountig", 75000, 3); 

INSERT INTO ourrole (title, salary, ourdepartments_id) VALUES ("director", 100000, 3); 

INSERT INTO ourrole (title, salary, ourdepartments_id) VALUES ("general sales", 45000, 4); 

INSERT INTO ourrole (title, salary, ourdepartments_id) VALUES ("manager sales", 65000, 4); 


INSERT INTO ourrole (title, salary, ourdepartments_id) VALUES ("engineeringI", 85000, 5); 

INSERT INTO ourrole (title, salary, ourdepartments_id) VALUES ("engineeringII", 45000, 5);        


INSERT INTO ourrole (title, salary, ourdepartments_id) VALUES ("director", 40000, 5); 





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






