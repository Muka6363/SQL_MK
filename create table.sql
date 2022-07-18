CREATE TABLE

CREATE TABLE database_name.table_name (
  column1 data_type,
  column2 data_type,
  ...
);
--CREATE TABLE ifadesi, yeni tablonun aşağıdaki niteliklerini belirtir:
Yeni tablonun adı
Yeni tablonun oluşturulduğu veritabanı. Bu isteğe bağlıdır. Belirtmek zorunda değilsiniz. Örneğin, CREATE TABLE tablo_adı (...) yazabilirdik;
Sütunların adı
Her sütunun beyan edilen veri türü

/*soru; personel adında bir tablo oluşturunuz. Tablo da FirstName, LastName ve age(ınt) ve HireDate (date) sütunları olmalıdır.*/
CREATE TABLE personel(
FirstName TEXT,
LastName TEXT,
age INT,
HireDate date
);

KOMUT BİTİNDE YANİ SON SATIRDAN SONRA VİRGÜL KULLANMIYORUZ. BU ÖRNEK İÇİN DATE İN yanında virgül olmayacak.
---Bu komutu yazdıktan sonra bir kez çalıştırabiliriz, ikinci kez çalışmaz,hata verir. Çünkü varolan bir tablo yu yeniden oluşturamayız, bu nedenle silmek lazım.
---tablo yu oluşturduktan sonra BROWSE DATA dan bu yeni yaptığımız tabloyu görebiliriz.
---silmek için DATABASE structure kullanabiliriz.(sol üst köşede)buradan yeni oluşturduğumuz tabloyu seçip sağ tuşla delete yapabiliriz.


Aynı isimle yeniden bir veritabanı oluşturulmak istenirse hata verir. Bunu önlemek için;
Bir tablo veri tabanında yoksa bunu oluşturmak varsa ise hata almamak için aşağıdaki gibi yazabibiliriz;

CREATE TABLE IF NOT EXISTS personel(
FirstName TEXT,
LastName TEXT,
age INT,
HireDate date
);
----------------------------------------------------------------------------------------------------------------------

/*veritabanında vacation_plan adında yeni bir tablo oluşturalım.
sutün isimleri place_id, country, hotel_name, Employee_Id, vacation_length, budget*/

CREATE TABLE vacation_plan (
place_id INT,
country NVARCHAR(50),
hotel_name NVARCHAR (100),
Employee_Id INTEGER,
vacation_length INTEGER,
budget NUMERIC
);

--Öğrenci veritabanımıza öğretmen adında bir tablo ekleyeceğiz. Her öğretmen aşağıdaki bilgilere sahiptir:
İsim
Ders
Maaş
Tabloyu oluşturalım.
/*CREATE TABLE teachers (
  name TEXT,
  lesson TEXT,
  salary INT
);  */

Kısıtlamalar, bir tablodaki veriler için belirtilen kurallardır.
Bir tabloya girecek veri türünü kısıtlamalarla sınırlayabiliriz.
CREATE TABLE deyimi veya ALTER TABLE deyimi ile kısıtları tanımlayabiliriz.
•	CREATE TABLE table_name (
•	   column1 DATATYPE CONSTRAINT,
•	   column1 DATATYPE CONSTRAINT

/*Veritabanındaki bir tabloyu kaldırmak için DROP TABLE ifadesini kullanırız. Sözdizimi çok basittir.
DROP TABLE table_name;*/
DROP TABLE orders
.table;

---Personel Tablosunu silelim;
DROP TABLE personel; 

---Bir kez siler, ikinci kez çalıştırınca hata verecektir. Hata almamak için;
DROP TABLE IF EXISTS personel;

/*not; SQL de TRUNCATE TABLE komutu bulunmasına karşın SQLite bu komut desteklenmemektedir.
Bu komut tablo içindeki verileri siler, tablo yu silmez, boş bir tablo kalır.  */
----------------------------------------------------------------------------------------------------------------
---Veri eklemek için INSERT INTO deyimini kullanırız. Sözdizimi çok basittir.
INSERT INTO table_name (column1, column2)
VALUES (value1, value2);

---Önce müşteri tablosuna değerleri girmeye başlıyoruz.
INSERT INTO customers (customer_id, first_name, last_name)
VALUES (1, 'Robert', 'Cursor'),
       (2, 'Julia', 'Loyds'),
       (3, 'Jack', 'Morgten');

---Şimdi siparişler tablosu için yapalım
INSERT INTO orders (order_id, order_number, customer_id)
VALUES (1, 101, 3),
       (2, 102, 3),
       (3, 103, 2),
       (4, 104, 1);

***aynı komut birden fazla çalıştırılırsa herhangi bir kısıtlama yoksa aynı veriler her çalıştırmada tekrar tabloya girer.
***VERİ GİRİŞİ yaparken eğer sütunların tamamına veri girmeyeceksek;

INSERT INTO orders(bu kısıma hangi sutünlara veri girmek istediğimizi yazmamız gerekiyor)
INSERT INTO orders(order_id, order_number)
VALUES (1, 103)
şeklinde yazarsak mesela SADECE BU İKİ SÜTUNA VERİ GİRMEK İSTİYORUZ demek olur.
values lardı buna göre tanımlarız.
--------------------------KISITLAMALAR----------------------------------------------------------
--NOT NULL                bir sütunun NULL içermemesini garanti eder.
--UNIQUE                  bir sütundaki tüm değerlerin BENZERSİZ olmasını garanti eder.
--PRIMARY KEY             bir sütunun NULL içermemesini ve sütundaki verilerin BENZERSİZ olmasını garanti eder.(NOT NULL ve UNIQUE birleşimi gibi)
--FOREIGN KEY             başka bir tablodaki PRIMARY KEY i referans göstermek için kullanılır.Böylelikle tablolar arasında ilişki kurulur.
--DEFAULT                 herhangi bir değer atanmadığında BAŞLANGIÇ değerinin atanmasını sağlar.
Mesela isimleri girdiniz bir yerde girmek istemediniz o boşluğa Null yazılmasını engellemek için DEFAULT yardımıyla No name yazdırabiliriz.
---------------------CONSTRAINT----------------------------------------------------------------
NOT NULL	Ensures that a column cannot have a NULL value
DEFAULT	Sets a default value for a column when no value is specified
UNIQUE	Ensures that all values in a column are different
PRIMARY KEY	Uniquely identifies each row in a table
FOREIGN KEY	Uniquely identifies a row/record in another table

---A table can have only one primary key. The primary key can consist of one or multiple columns.
---We define the PRIMARY KEY in the CREATE TABLE statement.
1.kullanım.
 CREATE TABLE table_name(
•	  column_1 INT PRIMARY KEY,
•	  column_2 TEXT,
•	  ...
•	);

---İfadenin sonunda birincil anahtarı tanımlamak da mümkündür.
---Bu çok basit bir sözdizimi: biz sadece BİRİNCİL ANAHTAR diyoruz ve sütun adını parantez içine koyuyoruz.
2.kullanım
CREATE TABLE table_name(
•	  column_1 INT,
•	  column_2 TEXT,
•	  ...
•	  PRIMARY KEY (column_1)
•	);

/*Birincil anahtar sütunu NULL değerler içeremez. 
Tablonuzda birincil anahtar tanımlamadığınızda hata almazsınız.
Ancak, iyi bir veritabanı tasarımı birincil anahtarla başlar.
Aslında, veritabanındaki tablolarımız bir birincil anahtara ihtiyaç duyar.
Bu, satır düzeyinde erişilebilirlik sağlayacaktır. Birincil anahtar ile her tablo satırını ayrı ayrı sorgulayabiliriz.*/

•	CREATE TABLE employees(
•	emp_id INT NOT NULL PRIMARY KEY,
•	first_name TEXT,
•	last_name TEXT,
•	salary INT,
•	job_title TEXT,
•	gender TEXT,
•	hire_date TEXT);
-----------------------------------------------------------------------------
Foreign Key
/*başka bir tablonun her satırını benzersiz şekilde tanımlayan bir tablodaki sütundur.
Bu sütun, başka bir tablonun birincil anahtarına başvurur.
Bu, tablolar arasında bir tür bağlantı oluşturur.*/

---şimdi 1.table ile 2.table arasında bağlantı kuralım.

---1.table
CREATE TABLE customers (customer_id INT PRIMARY KEY,
first_name TEXT,
second_name TEXT);

---2.table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_number INT,
    customer_id INT,
    FOREIGN KEY (customer_id)
     REFERENCES customers (customer_id)

Müşteriler tablosundaki müşteri_kimliği sütunu, müşteriler tablosundaki BİRİNCİL ANAHTARDIR.
Siparişler tablosundaki customer_id sütunu, siparişler tablosundaki YABANCI ANAHTARDIR.
Müşteriler tablosuna üst tablo denir.
Siparişler tablosuna alt tablo denir.
-------------------------------------------------------------------------------------------

/*EK BİLGİ; BUNLARA İLAVE OLARAK AUTOINCREMENT DİYE BİR KOMUT VAR BU otomatik ıd girmemizi sağlıyor. biz ıd girmeyiz bu komutu girince sistem
her yeni kayıtta ıd yi kendisi ekler.*/

/*FOREIGN KEY tanımlayarak ne elde ettik?
FOREIGN KEY kullanılması tablolar arasındaki bağlantıların bozulmamasını sağlar.
Ayrıca yabancı anahtar sütununa geçersiz veri girişini engeller. Örneğin, siparişler tablosuna yeni bir müşteri_kimliği değeri ekleyemezsiniz.*/

NOT NULL
/*Bir sütun NULL değerler içerebilir.
NULL değeri, değerin bilinmediği veya mevcut olmadığı anlamına gelen özel bir değerdir.
Bir tablo oluşturduğumuzda, bir sütunun NULL değerleri tutabileceğini veya tutamayacağını belirtebiliriz.
Varsayılan olarak, bir tablodaki tüm sütunlar (birincil anahtarın sütunu hariç),
NULL DEĞİL kısıtlamalarını açıkça belirtmedikçe NULL değerleri tutabilir.*/

CREATE TABLE table_name (
    column_name type_name NOT NULL,
  ...);
-------------------------------------------------------------------------------------------
hepsini kapsayan bir örnek;

CREATE TABLE workers(
 id INT PRIMARY KEY,
 id_number TEXT NOT NULL UNIQUE,
 name TEXT DEFAULT 'NONAME',
 salary INTEGER NOT NULL
);  
  
tablomuz oluştu şimdi içine veri girişi yapalım;
  INSERT INTO workers VALUES (1, "123456789", "PYTHON TUTOR", "10000");
 
  INSERT INTO workers VALUES(1,"154543456789", "PYTHON TOTUR", "200000");
 
 --Eğer aynı id no ile yeni bir veri girişi yaparsak aşağıdaki hatayı alacağız.
 --Result: UNIQUE constraint failed: workers.id
mesela name boş bırakmak istiyoruz(yani NULL girmesini değilde DEFAULT da tanımladığımızı gibi 'NONAME' yazmasını istiyorsak;

INSERT INTO workers (id, id_number, salary) VALUES(4,"1545546789", "400000");
şeklinde yazmamız gerekecektir.

/*vacation_plan tablosunu place_id sütununu PK ve
Employee_Id sütununu ise FK olarak değiştirerek
vacation_plan2 adından yeni bir tablo oluşturunuz.bu tablo employees tablosu ile ilişkili olmalıdır.*/

---tablo oluşturup bunu başka bir tablo ile bağlayalım;

CREATE TABLE vacation_plan2 (
 place_id INT,
 country NVARCHAR(50),
 hotel_name NVARCHAR(100),
 Employee_Id INTEGER,
 vacation_length INT,
 budget REAL,
 PRIMARY KEY(place_id),
 FOREIGN KEY (Employee_Id) REFERENCES employees(EmployeeId)
);

--yeni oluşturduğumuz tabloya veri girelim;
INSERT INTO vacation_plan2 VALUES(34, "TURKEY", 'HAPPY NATION', 1,5,5000);

--ALTER TABLE & DROP TABLE 

SQLite ALTER TABLE deyimi ile iki işlem gerçekleştirebilirsiniz:
1-Bir tabloyu yeniden adlandır (RENAMEing a Table)
2-Tabloya yeni bir sütun ekleme (ADD a new COLUMN)

--soru; vacation_plan2 tablosuna name adında ve DEFAULT noname olan yeni bir sütun ekleyelim.
  ALTER TABLE vacation_plan2
  ADD name TEXT DEFAULT 'isimsiz';
  
  ALTER TABLE vacation_plan2
  DROP COLUMN name;
  
  ALTER TABLE vacation_plan2
  RENAME TO people;
  
  
/*Renaming a Table:
To rename a table, we use the following ALTER TABLE RENAME TO statement syntax.
ALTER TABLE existing_table
RENAME TO new_table;*/


***SQLite appends the new column at the end of the existing columns list.
Here is the syntax of ALTER TABLE ADD COLUMN statement:
ALTER TABLE table
ADD COLUMN column_definition;
-------------------------------------------------------------------------------
Veritabanındaki bir tabloyu kaldırmak için DROP TABLE ifadesini kullanırız. Sözdizimi çok basittir.
DROP TABLE table_name;
DROP TABLE orders
.table;


















