--23 Temmuz 2022, Cumartesi
--DB Browser tanıtımı

-- DATABASE --
-- Database (Veritabanı): Verileri anlamlı saklayan programdır.
-- SQL: Veri işlemleri içindir. Veritabanına kaydetme, okuma, güncelleme, silme (CRUD: Create,Read,Update,Delete) gibi işlemleri yaptığımız dildir.


-- YORUM --
-- Tek satır yorum için iki-tire (--) kullanabilirim. iki-tire kullandıktan sonrası komple yorum satırı olur.
/*
	TersSlaş-Yıldız ile istediğim gibi yorum yazabilirim.
	İster satır içi, ister çoklu satıra yazabilirim.
	Kapatmak için Yıldız-TersSlaş kullanmalıyım.
*/

--SELECT 1 /* Kod içi yorum */ AS One;
SELECT 1 /* Kod içi yorum */ AS One;


-- SQL --> case insensitive (büyük-küçük harf ayrımı gözetmez)
-- BNF kurallar: (Python PEP8 gibi.)
-- * SQL komutları BÜYÜK HARF, tablo-sütun isimleri küçük harfle yazmamız beklenir.
-- * String verilerde çift-tırnak ve tek-tırnak kullanabiliyor. (Her program çift-tırnak desteklemez). tek-tırnak (') kullanırın.
-- * Noktalı-virgül (;) -> SQL işlemi yaptğınızda satır sonuna eklemeniz gereken ayıraçtır. Tek bir işlem yaptığnızda gerek yoktur. Çoklu işlemlerde mecburidir.


--SELECT 
SELECT Name, Composer FROM tracks;





------------------------- 
 -- db tanımak relation anlamak kurmak önemli
 --	DB içinde tablo, şema/diyagram olunca entity
 
 

 
 
-- SELECT - Seç ve Getir.
-- FROM - Hangi tablodan?
-- WHERE -- Filtreleme
-- LIMIT -- Limitler -- Default: LIMIT start=0, kaçtane=?
-- ORDER BY - Sıralama - Default: ASC
-- AS - Tablo veya Sütun isimlendirme için kullanılır. -> Lakap takma :)
-- DISTINCT - Tekrar edilen kayıtarın tekrar edilmesini engeller (tek kayıt olarak getirir)

 
 
 --FROM
-- track table dan track isimlerini alan sorgu


---DISTINCT
--track tablosundan uniq composerları alan sorgu



--dictinct sutünları değil satırları uniq yapar






--WHERE 
--ÖNCE from sonra where en son selecte bakar SQL engine, çalışma olarak 
-- date ve string lerde tırnak kullan, number için gerek yok

-- Jimi Hendrix 'in parçalarının isimlerini getiriniz.




-- DESC azalan sırala, ASC artan sırala   --> birşey yazılmazsa default artan sıralama yapar(ASC)
--LIMIT en sona yazılır, çıkan sorgudan kaç satır/kayıt istiyorsam onu göster demek
--ORDER BY limitin üstünde yazılır. sıralamak için


--- 10 dolardan yüksek tutara sahip invoice' ları getiriniz ve büyükten küçüğe sıralayarak 5 kayıt gösterin



--Berlin' de 2 dolardan yüksek tutara sahip invoice' ların en yüksek 3 tanesini




/*Berlin' de veya London' da 2 dolardan yüksek tutara sahip invoice' ları getiriniz.
SELECT *
FROM invoices
WHERE (BillingCity = 'Berlin' OR BillingCity = 'London') AND total > 2 
parantez kullanılmazsa sonuç farklı olur.*/

/*
-- IN ile yapılanlar OR gibidir.
-- NOT IN ile yapılanlar AND ile yaılabilir.

--- belçika norveç kanada ve usadan sipariş verenlerin isim ve soyisimlerini getir.
SELECT	FirstName, LastName
FROM	customers
WHERE Country IN ('Belgium', 'Norway', 'Canada', 'USA')

------ kontrol için ülkeleride ekledim çıktı doğru mu diye
SELECT	FirstName, LastName, Country
FROM	customers
WHERE Country IN ('Belgium', 'Norway', 'Canada', 'USA') 
*/


-- composer BACH olan  parçaların bütün bilgilerini bul
-- Yüzde (%) ve alt-tire (_) -> JOKER KARAKTERLER



-- toplam kaç satır varsa sayar NULL değerler dahil



--- NULL değerleri saymadı



/* -- database'de kaç farklı compose var? 
---(3503 composer satırı var
SELECT count(*)
FROM tracks
---2525 composer var,
SELECT count(Composer)
FROM tracks
---852 farklı composer var
SELECT count(DISTINCT composer)
FROM tracks */


----en kısa ve en uzun süreli trackleri bul



-- bulduk fakat isimleri yok bunun için



-- mağaza ne kadar para kazandı?(2328.6)



----ortalama süreden uzun track isimleri nedir?  -- önce ortalam süre bulunur



--- sonra bu süreden büyük track isimleri çağırılır.



---- her parçanın uzunluğu ve ortalam değerde bulunsun ki kontrol edebileyim
--- 393599.212103911 bu her satırda yazar




-- GRUP BY Clause(broken by diye sorulur)
-- broken by gender, gender kırılımında grupla demek
-- %99 Aggerate ile birlikte kullanılır.

-- ablumıd ye göre isimleri grupla



--- herbir yazarın toplam track sayısını göster




---- her ülkeden kaç müşterim var? çıktı counrty/number olacak
--- burada order by 2 (2nci sütunu sırala demek)





--Write a query that displays InvoiceId, CustomerId and total dollar amount for each invoice,
--but this time sorted first by total dollar amount (in descending order),
--and then by CustomerId (in ascending order).




---Write a query to pull the first 5 rows and all columns from the invoices table 
---that have a dollar amount of total less than 10.





---Find all track names that start with 'B' and end with 's'.



---farklı yazılması,




-- 2011-05-16 tarihinden sonra USA veya Kanada' da düzenlenen en yüksek tutara sahip InvoiceId' yi getiriniz.





------Kaç state'te fatura düzenlenmiştir?
------Kaç farklı state'te fatura düzenlenmiştir?




-----JOIN-----

-- tracks tablosundaki her bir track' in genre bilgisini getiriniz.
-- hepsi aynı sonucu farklı yollardan verir.





--Find the album title of the tracks. Your solution should include 
--track name and its album title.





--Find the total duration of each album. 
--Your solution should include album id, 
--album title and its total duration sorted from highest to lowest.




--Find the minimum duration of the track in each album. Your solution should include 
--album id, album title and duration of the track sorted from highest to lowest.





--subquary ve table create/drop konularına yer verilmemiştir.
--subquary örnekleri için aşağıdaki sorgulara bakabilirsiniz.. 

---Album title' ı 'Faceless' veya 'Let There Be Rock' olan track' lerin bilgilerini getiriniz.
SELECT 	TrackId, AlbumId, Name
FROM	tracks
WHERE	AlbumId IN (SELECT AlbumId FROM albums WHERE Title IN ('Faceless', 'Let There Be Rock'));

--farklı yazımı
SELECT trackId, albumId, name
FROM tracks
Where AlbumId in
	(SELECT AlbumId
	FROM albums
	WHERE Title = 'Faceless' or Title = 'Let There Be Rock');


---Album title' ı 'Faceless' olan track' lerin bilgilerini getiriniz.
SELECT 	TrackId, AlbumId, Name
FROM	tracks
WHERE	AlbumId = 88;  --'Faceless'ın ıd ile sorgulama

--subquary ile;
SELECT 	TrackId, AlbumId, Name
FROM	tracks
WHERE	AlbumId = (SELECT AlbumId FROM albums WHERE Title = 'Faceless');

----JOIN ile yapma;
SELECT 	tracks.TrackId, tracks.AlbumId, tracks.Name
FROM	tracks INNER JOIN albums ON tracks.AlbumId = albums.AlbumId
WHERE	albums.Title = 'Faceless';
	
	
	
-- KADİR Hoca Notları Genel Tekrar ---

-- DATABASE --
-- Database (Veritabanı): Verileri anlamlı saklayan programdır.
-- SQL: Veri işlemleri içindir. Veritabanına kaydetme, okuma, güncelleme, silme (CRUD: Create,Read,Update,Delete) gibi işlemleri yaptığımız dildir.


-- YORUM --
-- Tek satır yorum için iki-tire (--) kullanabilirim. iki-tire kullandıktan sonrası komple yorum satırı olur.
/*
	TersSlaş-Yıldız ile istediğim gibi yorum yazabilirim.
	İster satır içi, ister çoklu satıra yazabilirim.
	Kapatmak için Yıldız-TersSlaş kullanmalıyım.
*/


-- SQL -- 

-- SQL is case insensitive (büyük-küçük harf ayrımı gözetmez)
-- BNF kurallar: (Python PEP8 gibi.)
-- * SQL komutları BÜYÜK HARF, tablo-sütun isimleri küçük harfle yazmamız beklenir.
-- * String verilerde çift-tırnak ve tek-tırnak kullanabiliyor. (Her program çift-tırnak desteklemez). tek-tırnak (') kullanırın.
-- * Noktalı-virgül (;) -> SQL işlemi yaptğınızda satır sonuna eklemeniz gereken ayıraçtır. Tek bir işlem yaptığnızda gerek yoktur. Çoklu işlemlerde mecburidir.

-- noktalı virgül:
-- SELECT 1;
-- select AlbumId, Title, ArtistId from albums; -- Çalışır ama BNF aykırı.

-- SELECT - Seç ve Getir.
-- FROM - Hangi tablodan?
-- SELECT AlbumId, Title, ArtistId FROM albums; -- Tavsiye edilen yöntemdir.
-- SELECT * FROM albums; -- Tüm sutunları getir.

-- AS - Tablo veya Sütun isimlendirme için kullanılır. -> Lakap takma :)
-- SELECT FirstName AS isim FROM clients; -- Sütün isimlendirme
-- SELECT (1+2-3) AS lakap; -- Matematiksel işlem isimlendirme
-- SELECT c.FirstName FROM clients AS c; -- Tablo isimlendirme
-- SELECT c.FirstName isim FROM clients c; -- Kısa kullanım

-- DISTINCT - Tekrar edilen kayıtarın tekrar edilmesini engeller (tek kayıt olarak getirir)
-- SELECT DISTINCT FirstName FROM clients; -- FirstName aynı olanları 1 defa getir.
-- SELECT DISTINCT FirstName, LastName FROM clients; -- (FirstName AND LastName) aynı olanları 1 defa getir.

-- WHERE -- Filtreleme
-- SELECT * FROM customers WHERE City = 'Berlin'; -- = Eşit olanlar.
-- SELECT * FROM customers WHERE CustomerId > 3; -- Büyük olanlar.
-- SELECT * FROM customers WHERE CustomerId >= 3; -- Dahil Büyük olanlar.
-- SELECT * FROM customers WHERE CustomerId < 3; -- Küçük olanlar.
-- SELECT * FROM customers WHERE CustomerId <= 3; -- Dahil Küçük olanlar.
-- SELECT * FROM customers WHERE CustomerId <> 3; -- Eşit olmayanlar
-- SELECT * FROM customers WHERE CustomerId != 3; -- Eşit olmayanlar
-- SELECT * FROM customers WHERE CustomerId BETWEEN 3 AND 15; -- Arasında olanlar
-- SELECT CustomerId, FirstName, LastName FROM customers WHERE CustomerId BETWEEN 3 AND 5; -- Arasında olanlar
-- SELECT * FROM invoices WHERE InvoiceDate BETWEEN '2009-01-01' AND '2009-02-15'; -- İki tarih arasındaki veriler.

-- LIMIT -- Limitler -- Default: LIMIT start=0, kaçtane=?
-- SELECT * FROM invoices LIMIT 20; -- İlk 20 kayıt
-- SELECT * FROM invoices LIMIT 0, 20; -- İlk 20 kayıt
-- SELECT * FROM invoices LIMIT 20, 25; -- İlk 20'den sonraki (20 hariç) 25 adet kayıt getir.

-- ORDER BY - Sıralama - Default: ASC
-- SELECT * FROM invoices ORDER BY InvoiceDate ASC; -- Yakın tarihten uzağa sırala.
-- SELECT * FROM invoices ORDER BY InvoiceDate DESC; -- Uzak tarihten yakın sırala.
-- SELECT * FROM invoices ORDER BY InvoiceDate; -- Default: ASC
-- SELECT * FROM invoices ORDER BY BillingAddress ASC; -- A -> Z sırala. (Önce rakamlar)
-- SELECT * FROM invoices ORDER BY BillingAddress DESC; -- Z -> A sırala. (Sonra rakamlar)
-- SELECT * FROM invoices ORDER BY BillingCity DESC, BillingAddress ASC; -- Önce BillingCity DESC, sonra BillingAddress ASC
-- SELECT * FROM invoices ORDER BY BillingCountry DESC, BillingCity ASC;
-- SELECT * FROM invoices WHERE CustomerId = 54 ORDER BY InvoiceDate ASC -- Müşteri ID'si = 54 olan faturaları getir ve tarihe göre sırala.
-- SELECT * FROM invoices WHERE CustomerId = 54 ORDER BY InvoiceDate ASC LIMIT 3 -- Müşteri ID'si = 54 olan faturaları getir ve tarihe göre sırala. ilk 3 kayıt

-- AND, OR, NOT -- WHERE içinde kullanılır. (ORDER BY için virgül kullanılır.)
-- SELECT * FROM invoices WHERE CustomerId = 54 AND InvoiceDate <= '2010-09-13'; --  54 nolu müşteri ve bu tarihte önceki kayıtlar.
-- SELECT * FROM invoices WHERE CustomerId = 54 OR CustomerId = 42; -- Hem 42 hem de 54 numaralı müşterilerin faturaları.
-- SELECT * FROM invoices WHERE (CustomerId = 54 AND InvoiceDate <= '2010-09-13') OR CustomerId = 42; -- AND ve OR kullanımı.
-- SELECT * FROM invoices WHERE NOT CustomerId = 54; -- 54 olmayan müşterilerin faturalarını getir.
-- SELECT * FROM invoices WHERE CustomerId <> 54; -- 54 eşit olmayan müşterilerin faturalarını getir.
-- SELECT * FROM invoices WHERE InvoiceDate >= '2008-09-01' AND CustomerId = 54 AND NOT Total <= 2; -- Çoklu kullanım
-- SELECT * FROM customers WHERE CustomerId NOT BETWEEN 3 AND 15; -- Arasında OLMAYAN
-- SELECT * FROM invoices ORDER BY Total ASC LIMIT 10; -- En düşük fatura tutarına ait ilk 10 kayıt.

-- IN -- İçindekilerden biri mi?
-- NOT IN -- İçindekilerinden hiçbiri ?
-- SELECT * FROM invoices WHERE CustomerId = 50 OR CustomerId = 51 OR CustomerId = 52 OR CustomerId = 53 OR CustomerId = 54; -- Daha kısa yolu var -> IN :)
-- SELECT * FROM invoices WHERE CustomerId IN (50, 51, 52, 53, 54); -- Müşteri numaralası parantez içinde yazılı OLAN getir. (OR olarak düşünülebilir.)
-- SELECT * FROM invoices WHERE CustomerId NOT IN (50, 51, 52, 53, 54); -- Müşteri numaralası parantez içinde yazılı OLMAYAN getir. (AND olarak düşünülebilir.)
-- SELECT * FROM invoices WHERE CustomerId BETWEEN 50 AND 55; -- 50 ile 55 arasını getir.

-- LIKE -- İçinde ara. (insensitive -> Küçük büyük harf ayrımı yapmaz.)
-- Yüzde (%) ve alt-tire (_) -> JOKER KARAKTERLER
-- % -> "Karakter limiti YOK ve herhangi bir karakter" 
-- _ -> "Karakter limiti VAR, her bir alt-tire bir (herhangi) karakteri temsil eder"
-- SELECT * FROM invoices WHERE BillingCountry LIKE 'G%'; -- G ile başlayan ülkelerin faturaları
-- SELECT * FROM invoices WHERE BillingCountry LIKE 'U%'; -- U ile başlayan ülkelerin faturaları
-- SELECT * FROM invoices WHERE BillingCountry LIKE '%SA%'; -- İçinde SA olan ülkelerin faturaları
-- SELECT * FROM invoices WHERE BillingCountry LIKE '%M%'; -- İçinde M olan ülkelerin faturaları
-- SELECT * FROM invoices WHERE BillingCity LIKE '%e%o%'; -- İçinde a ve b olan (yanyana olmak zorunda değil, olabilir de)
-- SELECT * FROM invoices WHERE BillingCity LIKE '%o'; -- O ile biten
-- SELECT * FROM invoices WHERE BillingCity LIKE '%e%o'; -- İçinde E geçen ve O ile biten
-- SELECT * FROM invoices WHERE BillingCity LIKE '_e%'; -- İlk karakteri önemsiz, ama ikinci karakteri E olan
-- SELECT * FROM invoices WHERE BillingCity LIKE '_e_m%'; -- 1:önemsiz, 2:E, 3. önemsiz, 4: M ... olan

-- COUNT -- Çağırdığımız verinin kayıt Sayısı.
-- SELECT COUNT(*) FROM invoices; -- Satır sayısı -> (*) kullanmasan olmaz mı?
-- SELECT COUNT(InvoiceId) FROM invoices;
-- SELECT COUNT(InvoiceId) AS fatura_adet FROM invoices WHERE BillingCountry LIKE 'G%';

-- SUM - Toplama -> İçindeki veriler sayı olmak zorunda.
-- SELECT SUM(Total) AS Toplam FROM invoices;
-- SELECT SUM(Total) AS toplam FROM invoices WHERE BillingCity LIKE '_e%';

-- AVG - Ortalama
-- SELECT AVG(Total) AS ortalama FROM invoices;
-- SELECT AVG(Total) AS ortalama FROM invoices WHERE BillingCity LIKE '_e%';

-- ROUND -> Yuvarlar. -> ROUND(sayı, noktadanSonraHaneSayisi)
-- SELECT ROUND(AVG(Total), 2) AS ortalama FROM invoices WHERE BillingCity LIKE '_e%'; 

  -- SUM, AVG, MIN, MAX, COUNT
-- Veriyi tek satırda getirir.
-- SELECT BillingCity, SUM(Total) AS toplam_tutar  FROM invoices;  -- SUM ->Topla
-- SELECT BillingCity, ROUND(AVG(Total), 2) AS toplam_tutar  FROM invoices;  -- AVG -> Ortalama (ROUND -> Yuvarla)
-- SELECT BillingCity, MIN(Total) AS toplam_tutar  FROM invoices;  -- MIN -> Min
-- SELECT BillingCity, MAX(Total) AS toplam_tutar  FROM invoices;  -- MAX -> Max
-- SELECT BillingCity, COUNT(Total) AS toplam_tutar  FROM invoices;  -- COUNT -> Satır Sayısı
-- SELECT BillingCity, MIN(BillingCity) AS toplam_tutar  FROM invoices;  -- MIN -> Min (STRING veride çalışıyor.)
-- SELECT BillingCity, MAX(BillingCity) AS toplam_tutar  FROM invoices;  -- MAX -> Max (STRING veride çalışıyor.)

-- GROUP BY -> GRUPLAMA YAPAR.

/*
-- Şehre göre toplam tutar getir:
SELECT BillingCity, SUM(Total) AS toplam_tutar 
FROM invoices
GROUP BY BillingCity; 
*/

-- Min Tutara göre sırala:
-- SELECT BillingCity, MIN(Total) AS min_tutar  FROM invoices GROUP BY BillingCity ORDER BY min_tutar ASC, BillingCity DESC;
-- Tutara göre sırala:
-- SELECT BillingCity, Total FROM invoices GROUP BY BillingCity ORDER BY Total ASC, BillingCity ASC;
-- Karakter uzunluğuna göre sırala:
-- SELECT LENGTH(BillingCity) AS karakter_sayisi, BillingCity, Total FROM invoices ORDER BY BillingState ASC, BillingCity ASC, Total ASC;
-- SELECT LENGTH(12113) AS number, LENGTH('sadnashds') AS string;  -- LENGTH -> HEm sayı hem de yazı -> karakter sayısı.
-- SELECT BillingCity, SUM(Total) AS toplam_tutar  FROM invoices GROUP BY BillingCity;  -- Fatura toplam tutar (şehre göre)
-- SELECT BillingCity, COUNT(Total) AS toplam_tutar  FROM invoices WHERE BillingCity LIKE 'B%' GROUP BY BillingCity;
-- SELECT BillingCity, COUNT(Total) AS toplam_tutar  FROM invoices WHERE LEFT(BillingCity, 1) IN ('B', 'C') GROUP BY BillingCity;

-- LEFT, RIGHT
-- SELECT LEFT('ABCD', 1) AS ilk_karakter;
-- SELECT RIGHT('ABCD', 1) AS son_karakter;

 

/*
-- DATA ÇAĞIRAN TEMEL KOMUTLAR:
SELECT 
FROM
JOIN
WHERE
-- ÇAĞRILMIŞ DATA İŞLEMLERİ:
SELECT DISTINCT  -- Aynı kayıtları 1 defa göster.
GROUP BY  -- Gruplar.
HAVING  -- Gelen data içinde filtreleme.
ORDER BY  -- Sıralar.
LIMIT  -- Sınırlı adet getir. (limitler)
-- EKSTRA
UNION (ALL)  -- Çağrılmış birden fazla datayı birleştirir. (sutun sayısı ve sutun isimleri/lakapları aynı olmak ZORUNDA)
*/

     -- -- -- -- - -  JOINS    -- -- -- - -  - -  - 

/*
INNER JOIN -> Kısa Kullanım: JOIN  -- Tercih: INNER JOIN - Kesişim kayıtlar
LEFT OUTER JOIN -> Kısa: LEFT JOIN - Ana tablo hepsi, kesişimleri de göster.
RIGHT OUTER JOIN -> Kısa: RIGHT JOIN - Join tablo hepsi, kesişimleri de göster.
FULL OUTER JOIN - Her iki tablo hepsi, kesişimleri de göster.
CROSS JOIN -> Kısa: FROM içinde - İlişkisiz tüm tabloları yanyana yaz.
*/

-- INNER JOIN:

/*
SELECT c.FirstName, c.LastName, c.Company, i.InvoiceDate, i.Total
FROM invoices AS i
INNER JOIN customers AS c ON i.CustomerId=c.CustomerId
WHERE c.FirstName LIKE 'L%';
*/

/*
SELECT c.FirstName, c.LastName, c.Company, i.InvoiceDate, SUM(i.Total) AS toplam_fatura
FROM invoices AS i
INNER JOIN customers AS c ON c.CustomerId=i.CustomerId  -- Sıra önemsiz, bu da çalışır -> c.CustomerId=i.CustomerId
GROUP BY c.Company, c.FirstName
ORDER BY i.InvoiceId ASC;
*/

/*
SELECT c.CustomerId, c.FirstName, c.LastName, c.Company, i.InvoiceDate, SUM(i.Total) AS toplam_fatura
FROM invoices AS i
INNER JOIN customers AS c ON c.CustomerId=i.CustomerId AND c.CustomerId>5
GROUP BY c.Company, c.FirstName
ORDER BY i.InvoiceId ASC;
*/

-- LEFT JOIN:
 

/*
SELECT ar.Name, al.Title
FROM artists AS ar
LEFT JOIN albums AS al ON al.ArtistId=ar.ArtistId
GROUP BY ar.ArtistId;
*/

-- RIGHT JOIN:
 

/*
SELECT *
FROM artists AS ar
RIGHT JOIN albums AS al ON al.ArtistId=ar.ArtistId;
*/

-- FULL OUTER JOIN:
 

/*
SELECT *
FROM artists AS ar
FULL OUTER JOIN albums AS al ON al.ArtistId=ar.ArtistId
*/

-- CROSS JOIN

/*
SELECT *
FROM invoices
CROSS JOIN customers;
*/

/*
-- Kısa Kullanım:
SELECT *
FROM invoices, customers;
*/

/*
SELECT i.InvoiceDate, i.BillingCity, c.FirstName, c.LastName
FROM invoices AS i, customers AS c;
*/

