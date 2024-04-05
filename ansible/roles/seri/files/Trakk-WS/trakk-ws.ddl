DROP DATABASE trakkws;
CREATE DATABASE IF NOT EXISTS trakkws CHARACTER SET utf8;

create user if not exists 'trakkws' identified by 'trakkws';
grant all on trakkws.* to 'trakkws';

USE trakkws;

DROP TABLE IF EXISTS capabilities;
CREATE TABLE capabilities (
  `id` varchar(255) NOT NULL,
  `capability` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB;

INSERT INTO `capabilities` VALUES 
 ('1a2a3a4c','input',NULL),
 ('1a2a3a4d','approve',NULL),
 ('1a2a3b4c','approve',NULL),
 ('1a2a3b4d','reject',NULL),
 ('1a2a3c4c','input',NULL),
 ('1a2a3c4d','input',NULL),
 ('1a2a3d4c','input',NULL),
 ('1a2a3d4d','input',NULL),
 ('1a2b3a4c','input',NULL),
 ('1a2b3a4d','input',NULL),
 ('1a2b3b4c','input',NULL),
 ('1a2b3b4d','input',NULL),
 ('1a2b3c4c','input',NULL),
 ('1a2b3c4d','input',NULL),
 ('1a2b3d4c','input',NULL),
 ('1a2b3d4d','input',NULL),
 ('1a2c3a4c','input',NULL),
 ('1a2c3a4d','input',NULL),
 ('1a2c3b4c','input',NULL),
 ('1a2c3b4d','input',NULL),
 ('1a2c3c4c','input',NULL),
 ('1a2c3c4d','input',NULL),
 ('1a2c3d4c','input',NULL),
 ('1a2c3d4d','input',NULL),
 ('1b2a3a4c','input',NULL),
 ('1b2a3a4d','input',NULL),
 ('1b2a3b4c','input',NULL),
 ('1b2a3b4d','input',NULL),
 ('1b2a3c4c','input',NULL),
 ('1b2a3c4d','input',NULL),
 ('1b2a3d4c','input',NULL),
 ('1b2a3d4d','input',NULL),
 ('1b2b3a4c','input',NULL),
 ('1b2b3a4d','input',NULL),
 ('1b2b3b4c','input',NULL),
 ('1b2b3b4d','input',NULL),
 ('1b2b3c4c','input',NULL),
 ('1b2b3c4d','input',NULL),
 ('1b2b3d4c','input',NULL),
 ('1b2b3d4d','input',NULL),
 ('1b2c3a4c','input',NULL),
 ('1b2c3a4d','input',NULL),
 ('1b2c3b4c','input',NULL),
 ('1b2c3b4d','input',NULL),
 ('1b2c3c4c','input',NULL),
 ('1b2c3c4d','input',NULL),
 ('1b2c3d4c','input',NULL),
 ('1b2c3d4d','input',NULL),
 ('1c2a3a4c','input',NULL),
 ('1c2a3a4d','input',NULL),
 ('1c2a3b4c','input',NULL),
 ('1c2a3b4d','input',NULL),
 ('1c2a3c4c','input',NULL),
 ('1c2a3c4d','input',NULL),
 ('1c2a3d4c','input',NULL),
 ('1c2a3d4d','input',NULL),
 ('1c2b3a4c','input',NULL),
 ('1c2b3a4d','input',NULL),
 ('1c2b3b4c','input',NULL),
 ('1c2b3b4d','input',NULL),
 ('1c2b3c4c','input',NULL),
 ('1c2b3c4d','input',NULL),
 ('1c2b3d4d','input',NULL),
 ('1c2c3a4c','input',NULL),
 ('1c2c3a4d','input',NULL),
 ('1c2c3b4d','input',NULL),
 ('1c2c3c4c','input',NULL),
 ('1c2c3c4d','input',NULL),
 ('1c2c3d4c','input',NULL),
 ('1c2c3d4d','input',NULL);

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  `id` varchar(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB ;

INSERT INTO `users` VALUES 
('1a2a3a4c', 'Thomas.Martinez', 'Thomas', 'Martinez', 'Thomas.Martinez@demoexample.com'),
('1a2a3a4d', 'Dorothy.Robinson', 'Dorothy', 'Robinson', 'Dorothy.Robinson@demoexample.com'),
('1a2a3b4c', 'Nancy.Lee', 'Nancy', 'Lee', 'Nancy.Lee@demoexample.com'),
('1a2a3b4d', 'Paul.Walker', 'Paul', 'Walker', 'Paul.Walker@demoexample.com'),
('1a2a3c4c', 'Donald.Hernandez', 'Donald', 'Hernandez', 'Donald.Hernandez@demoexample.com'),
('1a2a3c4d', 'Helen.King', 'Helen', 'King', 'Helen.King@demoexample.com'),
('1a2a3d4c', 'Donna.Scott', 'Donna', 'Scott', 'Donna.Scott@demoexample.com'),
('1a2a3d4d', 'Steven.Green', 'Steven', 'Green', 'Steven.Green@demoexample.com'),
('1a2b3a4c', 'Brian.Nelson', 'Brian', 'Nelson', 'Brian.Nelson@demoexample.com'),
('1a2b3a4d', 'Sharon.Carter', 'Sharon', 'Carter', 'Sharon.Carter@demoexample.com'),
('1a2b3b4c', 'Laura.Turner', 'Laura', 'Turner', 'Laura.Turner@demoexample.com'),
('1a2b3b4d', 'Kevin.Phillips', 'Kevin', 'Phillips', 'Kevin.Phillips@demoexample.com'),
('1a2b3c4c', 'Matthew.Edwards', 'Matthew', 'Edwards', 'Matthew.Edwards@demoexample.com'),
('1a2b3c4d', 'Deborah.Collins', 'Deborah', 'Collins', 'Deborah.Collins@demoexample.com'),
('1a2b3d4c', 'Shirley.Rogers', 'Shirley', 'Rogers', 'Shirley.Rogers@demoexample.com'),
('1a2b3d4d', 'Jose.Reed', 'Jose', 'Reed', 'Jose.Reed@demoexample.com'),
('1a2c3a4c', 'Jeffrey.Murphy', 'Jeffrey', 'Murphy', 'Jeffrey.Murphy@demoexample.com'),
('1a2c3a4d', 'Melissa.Bailey', 'Melissa', 'Bailey', 'Melissa.Bailey@demoexample.com'),
('1a2c3b4c', 'Amy.Cox', 'Amy', 'Cox', 'Amy.Cox@demoexample.com'),
('1a2c3b4d', 'Eric.Howard', 'Eric', 'Howard', 'Eric.Howard@demoexample.com'),
('1a2c3c4c', 'Andrew.Gray', 'Andrew', 'Gray', 'Andrew.Gray@demoexample.com'),
('1a2c3c4d', 'Virginia.Ramirez', 'Virginia', 'Ramirez', 'Virginia.Ramirez@demoexample.com'),
('1a2c3d4c', 'Pamela.Kelly', 'Pamela', 'Kelly', 'Pamela.Kelly@demoexample.com'),
('1a2c3d4d', 'Joshua.Sanders', 'Joshua', 'Sanders', 'Joshua.Sanders@demoexample.com'),
('1b2a3a4c', 'Arthur.Bryant', 'Arthur', 'Bryant', 'Arthur.Bryant@demoexample.com'),
('1b2a3a4d', 'Ann.Alexander', 'Ann', 'Alexander', 'Ann.Alexander@demoexample.com'),
('1b2a3b4c', 'Diane.Hayes', 'Diane', 'Hayes', 'Diane.Hayes@demoexample.com'),
('1b2a3b4d', 'Joe.Myers', 'Joe', 'Myers', 'Joe.Myers@demoexample.com'),
('1b2a3c4c', 'Jack.Sullivan', 'Jack', 'Sullivan', 'Jack.Sullivan@demoexample.com'),
('1b2a3c4d', 'Heather.Wallace', 'Heather', 'Wallace', 'Heather.Wallace@demoexample.com'),
('1b2a3d4c', 'Doris.Jordan', 'Doris', 'Jordan', 'Doris.Jordan@demoexample.com'),
('1b2a3d4d', 'Justin.Owens', 'Justin', 'Owens', 'Justin.Owens@demoexample.com'),
('1b2b3a4c', 'Gerald.Harrison', 'Gerald', 'Harrison', 'Gerald.Harrison@demoexample.com'),
('1b2b3a4d', 'Jean.Gibson', 'Jean', 'Gibson', 'Jean.Gibson@demoexample.com'),
('1b2b3b4c', 'Mildred.Ortiz', 'Mildred', 'Ortiz', 'Mildred.Ortiz@demoexample.com'),
('1b2b3b4d', 'Willie.Gomez', 'Willie', 'Gomez', 'Willie.Gomez@demoexample.com'),
('1b2b3c4c', 'Lawrence.Webb', 'Lawrence', 'Webb', 'Lawrence.Webb@demoexample.com'),
('1b2b3c4d', 'Ashley.Simpson', 'Ashley', 'Simpson', 'Ashley.Simpson@demoexample.com'),
('1b2b3d4c', 'Rose.Hunter', 'Rose', 'Hunter', 'Rose.Hunter@demoexample.com'),
('1b2b3d4d', 'Benjamin.Hicks', 'Benjamin', 'Hicks', 'Benjamin.Hicks@demoexample.com'),
('1b2c3a4c', 'Brandon.Mason', 'Brandon', 'Mason', 'Brandon.Mason@demoexample.com'),
('1b2c3a4d', 'Nicole.Morales', 'Nicole', 'Morales', 'Nicole.Morales@demoexample.com'),
('1b2c3b4c', 'Christina.Ramos', 'Christina', 'Ramos', 'Christina.Ramos@demoexample.com'),
('1b2c3b4d', 'Fred.Reyes', 'Fred', 'Reyes', 'Fred.Reyes@demoexample.com'),
('1b2c3c4c', 'Billy.Holmes', 'Billy', 'Holmes', 'Billy.Holmes@demoexample.com'),
('1b2c3c4d', 'Beverly.Rice', 'Beverly', 'Rice', 'Beverly.Rice@demoexample.com'),
('1b2c3d4c', 'Tammy.Daniels', 'Tammy', 'Daniels', 'Tammy.Daniels@demoexample.com'),
('1b2c3d4d', 'Jeremy.Palmer', 'Jeremy', 'Palmer', 'Jeremy.Palmer@demoexample.com'),
('1c2a3a4c', 'Ernest.Wagner', 'Ernest', 'Wagner', 'Ernest.Wagner@demoexample.com'),
('1c2a3a4d', 'Jacqueline.Willis', 'Jacqueline', 'Willis', 'Jacqueline.Willis@demoexample.com'),
('1c2a3b4c', 'Bonnie.Carroll', 'Bonnie', 'Carroll', 'Bonnie.Carroll@demoexample.com'),
('1c2a3b4d', 'Jesse.Duncan', 'Jesse', 'Duncan', 'Jesse.Duncan@demoexample.com'),
('1c2a3c4c', 'Alan.Bradley', 'Alan', 'Bradley', 'Alan.Bradley@demoexample.com'),
('1c2a3c4d', 'Lois.Lane', 'Lois', 'Lane', 'Lois.Lane@demoexample.com'),
('1c2a3d4c', 'Phyllis.Fox', 'Phyllis', 'Fox', 'Phyllis.Fox@demoexample.com'),
('1c2a3d4d', 'Sean.Riley', 'Sean', 'Riley', 'Sean.Riley@demoexample.com'),
('1c2b3a4c', 'Chris.Greene', 'Chris', 'Greene', 'Chris.Greene@demoexample.com'),
('1c2b3a4d', 'Diana.Lawrence', 'Diana', 'Lawrence', 'Diana.Lawrence@demoexample.com'),
('1c2b3b4c', 'Lillian.Austin', 'Lillian', 'Austin', 'Lillian.Austin@demoexample.com'),
('1c2b3b4d', 'Jimmy.Peters', 'Jimmy', 'Peters', 'Jimmy.Peters@demoexample.com'),
('1c2b3c4c', 'Danny.Fields', 'Danny', 'Fields', 'Danny.Fields@demoexample.com'),
('1c2b3c4d', 'Peggy.Gutierrez', 'Peggy', 'Gutierrez', 'Peggy.Gutierrez@demoexample.com'),
('1c2b3d4c', 'Gladys.Vasquez', 'Gladys', 'Vasquez', 'Gladys.Vasquez@demoexample.com'),
('1c2b3d4d', 'Luis.Castillo', 'Luis', 'Castillo', 'Luis.Castillo@demoexample.com'),
('1c2c3a4c', 'Stanley.Montgomery', 'Stanley', 'Montgomery', 'Stanley.Montgomery@demoexample.com'),
('1c2c3a4d', 'Connie.Richards', 'Connie', 'Richards', 'Connie.Richards@demoexample.com'),
('1c2c3b4c', 'Tracy.Meyer', 'Tracy', 'Meyer', 'Tracy.Meyer@demoexample.com'),
('1c2c3b4d', 'Dale.Bishop', 'Dale', 'Bishop', 'Dale.Bishop@demoexample.com'),
('1c2c3c4c', 'Rodney.Morrison', 'Rodney', 'Morrison', 'Rodney.Morrison@demoexample.com'),
('1c2c3c4d', 'Carmen.Hansen', 'Carmen', 'Hansen', 'Carmen.Hansen@demoexample.com'),
('1c2c3d4c', 'Cindy.Little', 'Cindy', 'Little', 'Cindy.Little@demoexample.com'),
('1c2c3d4d', 'Allen.Burton', 'Allen', 'Burton', 'Allen.Burton@demoexample.com');