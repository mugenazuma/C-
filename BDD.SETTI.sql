CREATE TABLE customers(
   Id INT,
   lastname VARCHAR(50),
   firstname VARCHAR(50),
   address VARCHAR(50),
   cp INT,
   phone INT,
   e_mail VARCHAR(50),
   password VARCHAR(50),
   PRIMARY KEY(Id)
);

CREATE TABLE products(
   Id INT,
   name VARCHAR(50),
   description TEXT,
   number INT,
   PRIMARY KEY(Id)
);

CREATE TABLE date_order(
   Id INT,
   number_order VARCHAR(50),
   description VARCHAR(50),
   number__product VARCHAR(50),
   date_ord VARCHAR(50),
   PRIMARY KEY(Id)
);

CREATE TABLE employee(
   Id INT,
   lastname VARCHAR(50),
   firstname VARCHAR(50),
   PRIMARY KEY(Id)
);

CREATE TABLE opt(
   Id INT,
   Id_1 INT,
   PRIMARY KEY(Id, Id_1),
   FOREIGN KEY(Id) REFERENCES customers(Id),
   FOREIGN KEY(Id_1) REFERENCES products(Id)
);

CREATE TABLE validate(
   Id INT,
   Id_1 INT,
   PRIMARY KEY(Id, Id_1),
   FOREIGN KEY(Id) REFERENCES products(Id),
   FOREIGN KEY(Id_1) REFERENCES date_order(Id)
);

CREATE TABLE send(
   Id INT,
   Id_1 INT,
   PRIMARY KEY(Id, Id_1),
   FOREIGN KEY(Id) REFERENCES date_order(Id),
   FOREIGN KEY(Id_1) REFERENCES employee(Id)
);

CREATE TABLE furnish(
   Id INT,
   Id_1 INT,
   PRIMARY KEY(Id, Id_1),
   FOREIGN KEY(Id) REFERENCES customers(Id),
   FOREIGN KEY(Id_1) REFERENCES employee(Id)
);
