
CREATE TABLE ourdepartments (
      id INT NOT NULL AUTO_INCREMENT,
      name VARCHAR(45) NOT NULL,
      PRIMARY KEY(id)

      );

CREATE TABLE ourrole (
     id INT NOT NULL AUTO_INCREMENT,
     title VARCHAR (45) NOT NULL,
     salary DECIMAL NOT NULL,
     ourdepartments_id INT NOT NULL,
     PRIMARY KEY (id),
     FOREIGN KEY (ourdepartments_id) REFERENCES ourdepartments(id) ON DELETE CASCADE
     );

CREATE TABLE ouremployees (          
      PRIMARY KEY(id),
      FOREIGN KEY (ourmanager_id) REFERENCES ouremployees(id) ON DELETE CASCADE,
      FOREIGN kEY (ourrole_id) REFERENCES ourrole(id) ON DELETE CASCADE,
      ourrole_id INT NOT NULL,             
      ourmanager_id INT,                   
      first_name VARCHAR (45) NOT NULL,
      last_name VARCHAR (45) NOT NULL,  
      id INT NOT NULL AUTO_INCREMENT    
      );
