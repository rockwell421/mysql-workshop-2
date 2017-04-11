### Exercise 1

SOURCE data/import-table-structure.sql


### Exercise 2

    INSERT INTO Account (email, password, createdOn, modifiedOn) 
    VALUES ('eddy@xcap.ca','shenanigans','2017-04-05','2017-04-09');
    
    INSERT INTO AddressBook (accountId, name, createdOn, modifiedOn) 
    VALUES (21245678901,'Patty O\Shenanigans','2017-04-05','2017-04-09');
    
    INSERT INTO Entry (addressBookId, firstName, lastName, birthday, type, subtype, contentLineOne, contentLineTwo, contentLineThree, contentLineFour, contentLineFive) 
    VALUES (12345678910,'mike','dagenais','1996-04-09','home','phone','this is the best number to reach mike','mike is a jerkoff','he is still a jerkoff','mike likes muscle cars','too bad for mike');
    
    INSERT INTO Entry (addressBookId, firstName, lastName, birthday, type, subtype, contentLineOne, contentLineTwo, contentLineThree, contentLineFour, contentLineFive) 
    VALUES (10989654321,'steve','curran','1991-09-09','home','phone','steeeeve curran','aka Curran Curran','he is still a jerkoff','professional PUA','ladies beware');
    
    INSERT INTO Entry (addressBookId, firstName, lastName, birthday, type, subtype, contentLineOne, contentLineTwo, contentLineThree, contentLineFour, contentLineFive) 
    VALUES (13579864212,'brian','farnan','1991-07-29','home','phone','wheels','o\farnahan','he too is a jerkoff','professional hedonist','double trouble');
    

### Exercise 3

    SELECT * FROM Account;
    
+----+--------------+-------------+---------------------+---------------------+
| id | email        | password    | createdOn           | modifiedOn          |
+----+--------------+-------------+---------------------+---------------------+
|  1 | eddy@xcap.ca | shenanigans | 2017-04-05 00:00:00 | 2017-04-09 00:00:00 |
+----+--------------+-------------+---------------------+---------------------+

    SELECT * FROM AddressBook;
    
+----+------------+--------------------+---------------------+---------------------+
| id | accountId  | name               | createdOn           | modifiedOn          |
+----+------------+--------------------+---------------------+---------------------+
|  1 | 2147483647 | Patty OShenanigans | 2017-04-05 00:00:00 | 2017-04-09 00:00:00 |
+----+------------+--------------------+---------------------+---------------------+    

    SELECT * FROM Entry;
    
+----+---------------+-----------+----------+---------------------+------+---------+---------------------------------------+-------------------+-----------------------+------------------------+------------------+
| id | addressBookId | firstName | lastName | birthday            | type | subtype | contentLineOne                        | contentLineTwo    | contentLineThree      | contentLineFour        | contentLineFive  |
+----+---------------+-----------+----------+---------------------+------+---------+---------------------------------------+-------------------+-----------------------+------------------------+------------------+
|  1 |    2147483647 | mike      | dagenais | 1996-04-09 00:00:00 | home | phone   | this is the best number to reach mike | mike is a jerkoff | he is still a jerkoff | mike likes muscle cars | too bad for mike |
|  2 |    2147483647 | steve     | curran   | 1991-09-09 00:00:00 | home | phone   | steeeeve curran                       | aka Curran Curran | he is still a jerkoff | professional PUA       | ladies beware    |
|  3 |    2147483647 | brian     | farnan   | 1991-07-29 00:00:00 | home | phone   | wheels                                | ofarnahan         | he too is a jerkoff   | professional hedonist  | double trouble   |
+----+---------------+-----------+----------+---------------------+------+---------+---------------------------------------+-------------------+-----------------------+------------------------+------------------+
    
    
### Exercise 4

ALTER TABLE Account MODIFY password VARCHAR(20);

ALTER TABLE AddressBook MODIFY name VARCHAR(220);

ALTER TABLE Entry
    MODIFY contentLineOne VARCHAR(150),
    MODIFY contentLineTwo VARCHAR(150),
    MODIFY contentLineThree VARCHAR(150);
    
    
### Exercise 5

TRUNCATE Entry;


### Exercise 6

TRUNCATE Account;


### Exercise 7

SOURCE data/import-table-structure.sql

SOURCE data/import-account.sql

SOURCE data/import-addressbook.sql

SOURCE data/import-entry.sql


### Exercise 8


SELECT * FROM Account WHERE id='63';

+----+-------------------------------------------------+-------------+---------------------+---------------------+
| id | email                                           | password    | createdOn           | modifiedOn          |
+----+-------------------------------------------------+-------------+---------------------+---------------------+
| 63 | consectetuer.rhoncus.Nullam@temporloremeget.org | IXW18QLZ3AH | 2015-03-03 16:28:10 | 2016-06-17 23:01:47 |
+----+-------------------------------------------------+-------------+---------------------+---------------------+


SELECT * FROM AddressBook WHERE accountId='3';

+-----+-----------+---------------------------------+---------------------+---------------------+
| id  | accountId | name                            | createdOn           | modifiedOn          |
+-----+-----------+---------------------------------+---------------------+---------------------+
|   3 |         3 | Donec Incorporated              | 2016-05-04 23:06:18 | 2016-06-16 06:54:15 |
|  62 |         3 | Ipsum Nunc LLC                  | 2015-09-08 00:26:17 | 2016-01-11 13:40:49 |
| 117 |         3 | In Consectetuer Ltd             | 2016-06-03 11:56:16 | 2015-07-14 11:37:52 |
| 510 |         3 | Lacus Aliquam Rutrum Industries | 2015-03-18 10:29:24 | 2016-07-27 14:37:47 |
| 535 |         3 | Ac Ltd                          | 2016-06-06 12:50:37 | 2014-10-09 11:23:40 |
| 614 |         3 | Mauris Consulting               | 2016-07-19 16:37:29 | 2015-04-16 12:32:05 |
| 657 |         3 | Ornare Corporation              | 2014-10-12 09:24:10 | 2015-02-26 17:12:48 |
+-----+-----------+---------------------------------+---------------------+---------------------+

SELECT * FROM AddressBook WHERE name='Lorem Foundation';

+-----+-----------+------------------+---------------------+---------------------+
| id  | accountId | name             | createdOn           | modifiedOn          |
+-----+-----------+------------------+---------------------+---------------------+
|   5 |        84 | Lorem Foundation | 2016-06-26 02:43:41 | 2015-04-06 10:24:41 |
| 153 |        12 | Lorem Foundation | 2015-05-04 14:28:16 | 2015-05-24 20:46:26 |
+-----+-----------+------------------+---------------------+---------------------+


### Exercise 9

SELECT COUNT(id) FROM Account;
+-----------+
| COUNT(id) |
+-----------+
|      1000 |
+-----------+

SELECT COUNT(*) FROM AddressBook;                                                                                                                     
+-----------+
| COUNT(id) |
+-----------+
|      1100 |
+-----------+

SELECT COUNT(id) FROM Entry;                                                                                                                     

+-----------+
| COUNT(id) |
+-----------+
|      4000 |
+-----------+


### Exercise 10

SELECT COUNT(*) FROM Entry WHERE birthday < '19820212';

| COUNT(*) |
+----------+
|     2687 |
+----------+


* How many Address Book Entries are listed as born on or after January 1st of 1965?


SELECT COUNT(*) FROM Entry WHERE birthday >= '19650101';

+----------+
| COUNT(*) |
+----------+
|     2597 |
+----------+


SELECT * FROM Entry ORDER BY birthday ASC LIMIT 1;

+------+---------------+-----------+----------+---------------------+-------+---------+----------------+----------------+------------------+-----------------+-----------------+
| id   | addressBookId | firstName | lastName | birthday            | type  | subtype | contentLineOne | contentLineTwo | contentLineThree | contentLineFour | contentLineFive |
+------+---------------+-----------+----------+---------------------+-------+---------+----------------+----------------+------------------+-----------------+-----------------+
| 2260 |            93 | Abigail   | Rollins  | 1945-09-02 09:21:58 | other | address | 194 Non Road   | Berlin         | Berlin           | Bolivia         | 791155          |
+------+---------------+-----------+----------+---------------------+-------+---------+----------------+----------------+------------------+-----------------+-----------------+


### Exercise 11


SELECT COUNT(*) FROM Entry WHERE type != 'other';

+----------+
| COUNT(*) |
+----------+
|     2800 |
+----------+


SELECT COUNT(*) FROM Entry WHERE type = 'home' OR type = 'work';

+----------+
| COUNT(*) |
+----------+
|     2800 |
+----------+


SELECT COUNT(*) FROM Entry WHERE subType = 'phone';

+----------+
| COUNT(*) |
+----------+
|      600 |
+----------+