-- 1) film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?
SELECT COUNT(*) FROM film
WHERE length>
(
SELECT AVG(length) FROM film
);

-- 2) film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
SELECT COUNT(Rental_rate) FROM film
WHERE rental_rate = (
SELECT MAX(rental_rate) FROM film
)

-- 3) film tablosunda en düşük rental_rate ve en düşük replacement_cost değerlerine sahip filmleri sıralayınız.
SELECT title,rental_rate,replacement_cost FROM film
WHERE  rental_rate = 
(
	SELECT MIN(rental_rate) FROM  film) 
	and 
	replacement_cost = (SELECT MIN(replacement_cost)  FROM film)
ORDER BY title

-- 4) payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız
SELECT * FROM payment
WHERE amount=
(
SELECT MAX(amount) from payment
);
patika.dev
