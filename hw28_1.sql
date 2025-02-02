use `hillel-qauto-buggy`;
select * from users where email like "_am%";
select max(mileage) from cars where carBrandId =(1);
select * from car_brands where title in ("Audi", "BMW");
select count(title) from car_models where carBrandId in (1, 2);
select * from cars;
select count(userId) from cars where carModelId;
select count(id), userid from cars group by userid;
select * from cars 
inner join users on cars.userid=users.id;