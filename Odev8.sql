-- 1) Test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
CREATE TABLE employe (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(100),
  birthday DATE  
);

-- 2) Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.

insert into employe (id, name, birthday, email) values (1, 'Osmund', '2005/08/01', 'ogatheral0@yolasite.com');
insert into employe (id, name, birthday, email) values (2, 'Sara', '2004/05/21', 'skeizman1@cmu.edu');
    .
    .
    .
insert into employe (id, name, birthday, email) values (50, 'Job', '2007/08/26', 'jschwerin1d@wikimedia.org');

​-- 3) Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
UPDATE employe
SET name = 'Sarah'
    email = 'sarah@ase.com'
WHERE id =10;

UPDATE employe
    SET email = 'Yunus@qqww.com'
WHERE name = 'Osmund';

UPDATE employe   
    SET email= 'Reşit Değil'
WHERE  birthday BETWEEN  '2005-01-01' AND  '2010-12-31';

UPDATE employe
    SET name = 'Aslan'
WHERE email = 'skeizman1@cmu.edu';

UPDATE employe
    SET birthday = '2005-05-05'
WHERE name = 'Darrin';

-- 4) Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
DELETE FROM employe
WHERE name = 'Norby';

DELETE FROM employe
WHERE id = '3';

DELETE FROM employe
WHERE email = 'Reşit Değil';

DELETE FROM employe
WHERE email NOT LIKE '%.com';

DELETE FROM employe
WHERE name LIKE 'A%';   