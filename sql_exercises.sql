SQL exercises
Short database description "Computer firm":
The database scheme consists of four tables:
Product(maker, model, type)
PC(code, model, speed, ram, hd, cd, price)
Laptop(code, model, speed, ram, hd, screen, price)
Printer(code, model, color, type, price)
The Product table contains data on the maker, model number, and type of product ('PC', 'Laptop', or 'Printer'). It is assumed that model numbers in the Product table are unique for all makers and product types. Each personal computer in the PC table is unambiguously identified by a unique code, and is additionally characterized by its model (foreign key referring to the Product table), processor speed (in MHz) – speed field, RAM capacity (in Mb) - ram, hard disk drive capacity (in Gb) – hd, CD-ROM speed (e.g, '4x') - cd, and its price. The Laptop table is similar to the PC table, except that instead of the CD-ROM speed, it contains the screen size (in inches) – screen. For each printer model in the Printer table, its output type (‘y’ for color and ‘n’ for monochrome) – color field, printing technology ('Laser', 'Jet', or 'Matrix') – type, and price are specified.
-------------------------------------------------------
Exercise: 1 (Serge I: 2002-09-30)
Find the model number, speed and hard drive capacity for all the PCs with prices below $500.
Result set: model, speed, hd.

SELECT distinct model, speed, hd FROM PC WHERE price<500
--------------------------------------------------------
Exercise: 2 (Serge I: 2002-09-21)
List all printer makers. Result set: maker.

SELECT distinct maker FROM Product WHERE type='printer'
--------------------------------------------------------
Exercise: 3 (Serge I: 2002-09-30)
Find the model number, RAM and screen size of the laptops with prices over $1000.

SELECT model, ram, screen FROM Laptop WHERE price>1000
--------------------------------------------------------
Exercise: 4 (Serge I: 2002-09-21)
Find all records from the Printer table containing data about color printers.

SELECT * FROM Printer WHERE color='y'
--------------------------------------------------------
Exercise: 5 (Serge I: 2002-09-30)
Find the model number, speed and hard drive capacity of PCs cheaper than $600 having a 12x or a 24x CD drive.

SELECT PC.model, PC.speed, PC.hd FROM PC WHERE price<600 and PC.cd IN ('12x','24x')

