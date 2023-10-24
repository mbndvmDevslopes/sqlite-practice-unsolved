-- Below is a dummy query, if we leave it empty then the SQLITE package will throw a non-readable error
-- Change the query to pass the test :)
select first_name, last_name
 from users u
 JOIN favorites  f ON u.id = f.user_id
 JOIN dogs d ON f.dog_id = d.id
 WHERE d.name = 'Zoey';