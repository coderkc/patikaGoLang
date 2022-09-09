-- 1. test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
CREATE TABLE employee (
	id INTEGER PRIMARY KEY,
	name VARCHAR(50),
	birthday DATE,
	email VARCHAR(100);
)

-- 2. Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
insert into employee (id, name, birthday, email) values (1, 'Scarface', '1911-09-26', 'sdobrovolny0@sphinn.com');
...
insert into employee (id, name, birthday, email) values (50, 'Kellyann', '1973-07-26', 'kgoforth1d@edublogs.org');

-- 3. Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
-- 3.1. idsi 10 olan satır güncellendi.
UPDATE employee
SET name = 'NAM UPDATED',
    birthday  = "1999-12-24",
    email = "updated@email.com"
WHERE id = 10; 

-- 3.2. name değeri H ile başlayan satırlar güncellendi.
UPDATE employee
SET email = 'emails@updated.com'
WHERE name LIKE 'H%'; 

-- 3.3 email değerinde ".edu" içeren satırlar güncellendi.
UPDATE employee
SET birthday = '2000-12-21'
WHERE email LIKE '%.edu';

-- 3.4. id değeri 30 ile 35 arasında olanlar güncellendi.
UPDATE employee
SET birthday = '2000-12-21'
WHERE id BETWEEN 30 AND 35;

-- 3.5 Name değerinin ikinci harfinde "o" olanlar güncellendi.
UPDATE employee
SET birthday = '2001-10-02',
	email = 'enough@is.enough'
WHERE name LIKE '_o%';

-- 4. Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
-- 4.1. Name değeri 'Scarface' olan silindi.
DELETE FROM employee
WHERE name = 'Scarface';

--4.2. id değeri 10 20 30 olanlar silindi.
DELETE FROM employee
WHERE id IN (10,20,30);

--4.3. email değeri '.gov' içerenler silindi.
DELETE FROM employee
WHERE email LIKE '%.gov%';

--4.4. name değeri m ile biten satırlar silindi.
DELETE FROM employee
WHERE name LIKE '%m'; 

--4.5. id değeri 47 den büyük olanlar silindi
DELETE FROM employee
WHERE id>47; 