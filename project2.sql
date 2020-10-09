select * from invoice i
join invoice_line il on il.invoice_id = i.invoice_id
where il.unit_price > 0.99;

select i.invoice_date,
c.first_name, c.last_name,i.total
from invoice i
join customer c on i.customer_id = c.customer_id;

select * from employee;
select c.first_name, c.last_name,
e.first_name, e.last_name
from customer c
join employee e on c.support_rep_id = e.employee_id;

select album.title, artist.name
from album album 
join artist artist on album.artist_id = artist.artist_id;


select pt.track_id, p.name
from playlist_track pt 
join playlist p
on pt.playlist_id = p.playlist_id
where p.name = 'Music';

select t.name, playlist_id
from track t
join playlist_track pt
on t.track_id = pt.track_id where pt.playlist_id = 5;

select t.name, p.name
from track t
join playlist_track pt on pt.track_id = t.track_id 
join playlist p on p.playlist_id = pt.playlist_id;

select t.name, al.title
from album al
join track t on t.album_id = al.album_id
join genre g on g.genre_id = t.genre_id
where g.name = 'Alternative & Punk';

black Diamond--
select t.name, g.name, al.title, ar.name 
from artist ar
join album al
on ar.artist_id = al.artist_id
join track t
on t.album_id = al.album_id
join genre g
on g.genre_id = t.genre_id
join playlist p
on p.name = g.name
where p.name = 'Music'; -- it ran but nothing is displaying--

select * from invoice
where invoice_id in ( select invoice_id from invoice_line where unit_price > 0.99);

select * from playlist_track
where playlist_id in ( select playlist_id from playlist where name = 'Music'
);

select name from track
where track_id in ( select track_id from playlist_track where playlist_id = 5);

select * from track
where genre_id in (select genre_id from genre where name = 'Comedy');

select * from track
where album_id in ( select album_id from album where name = 'Fireball');

select * from track
where album_id in ( select album_id from album where artist_id in ( select artist_id
                                                                  from artist
																															where name = 'Queen') );

update customer 
set fax = null
where fax != null;

update customer
set company = 'Self'
where company is null;

update customer
set last_name = 'Thompson'
where first_name = 'Julia' and last_name = 'Barnett';

update customer
set support_rep_id = 4
where email = 'luisrojas@yahoo.cl';

update track
set composer = 'The darkness around us'
where genre_id = (select genre_id from genre where name = 'Metal' )
and composer is null;

select count (*), g.name
from track t
join genre g on t.genre_id = g.genre_id
group by g.name;

select count(*), g.name
from track t 
join genre g on t.genre_id = g.genre_id
where g.name = 'Pop' or g.name = 'Rock'
group by g.name;

select count(*) album, ar.name
from artist ar
join album al on ar.artist_id = al.artist_id
group by ar.name;

select distinct composer 
from track;

select distinct billing_postal_code 
from invoice;

select distinct company
from customer;

delete from practice_delete
where 'bronze' = type;

select * from practice_delete type;

delete from practice_delete
where 'silver' = type;

delete from practice_delete
where value = 150;

create table products (
id serial primary key,
  name varchar (20),
  price integer
);

create table users (
id serial primary key,
  name varchar (20),
  email varchar (150)
);

select * from orders;


create table orders (
id serial primary key,
  product_ref integer
  );

insert into orders (product_ref)
values (3),
(5),
(2);

insert into products (name, price)
values ('coffee', 4),
				('cream', 2) ,
        ('sugar', 100);

select * from products;

insert into users (name, email)
values ('burtles', 'littlealarmclock@wahoo.com'),
				('sophie', 'cutiepootie@wahoo.com'),
        ('sam wise', 'dopeheadpupper@ruffhoo.com');

select * from users;


select * from products where




