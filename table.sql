 CREATE TABLE user (id INT(10) NOT NULL PRIMARY KEY ,
                    media_id INT(10), 
                    name VARCHAR(45),
                     FOREIGN KEY(media_id) REFERENCES media(id) ); 

CREATE TABLE project_has_user (project_id INT(10) , user_id INT , manager TINYINT(1), 
                                    FOREIGN KEY(project_id) REFERENCES project(id),
                                    FOREIGN KEY(user_id) REFERENCES user(id));

 CREATE TABLE bug (id INT(10) NOT NULL PRIMARY KEY,
                         project_id INT,
                          name VARCHAR(45) ,
                          FOREIGN KEY (project_id) REFERENCES project(id));

 CREATE TABLE project (id INT(10) NOT NULL PRIMARY KEY ,
                         name VARCHAR(45) );   

CREATE TABLE comment (id INT(10) NOT NULL PRIMARY KEY,
                        bug_project_id INT,
                         bug_id INT, text TEXT 
                         FOREIGN KEY (bug_id) REFERENCES bug(id)
                         FOREIGN KEY (bug_project_id) REFERENCES bug(project_id),);      

 CREATE TABLE bug_has_media ( bug_id INT(10) ,
                                bug_project_id INT,
                                 media_id INT
                                 FOREIGN KEY (bug_id) REFERENCES bug(id),
                                 FOREIGN KEY (bug_project_id) REFERENCES bug(project_id),
                                 FOREIGN KEY (media_id) REFERENCES media(id) ); 

  CREATE TABLE media ( id INT(10) NOT NULL PRIMARY KEY ,
                        user_id INT ,  
                         path VARCHAR (70),
                          filetype VARCHAR(20),
                           filesize DECIMAL(65,2),
                            FOREIGN KEY (user_id) REFERENCES user(id) );   

CREATE TABLE comment_has_media ( comment_id INT,comment_bug_project_id INT, comment_bug_id INT,media_id,
                                FOREIGN KEY (comment_id) REFERENCES comment(id),
                                FOREIGN KEY (comment_bug_project_id) comment(bug_project_id),
                                FOREIGN KEY (comment_bug_id) REFERENCES comment(bug_id),
                                FOREIGN KEY (media_id) REFERENCES media(id) );                                                                                                                          


 --CREATING VIEW

CREATE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;

CREATE VIEW ROOP AS
SELECT firstName
FROM employees
WHERE employeeNumber > 1000;

CREATE TABLE Orders (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (PersonID) REFERENCES Persons(PersonID)
);

