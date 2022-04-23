-- 1) City tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz LEFT JOIN sorgusunu yazınız.
SELECT city, country FROM country
LEFT JOIN city 
ON city.city_id=country.country_id;
-- 2) Customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz RIGHT JOIN sorgusunu yazınız.
Select customer.first_name,customer.last_name,payment.payment_id
From customer RIGHT JOIN payment On customer.customer_id = payment.customer_id ;
-- 3) Customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz FULL JOIN sorgusunu yazınız.
Select customer.first_name,customer.last_name,rental.rental_id From  customer FULL JOIN rental On customer.customer_id = rental.customer_id ;
