#1
select * from cars join
sales using (car_id)
where year(purchase_date)=2022;

#2
select name,count(sale_id) as no_of_cars_sold from salespersons sp join 
sales s on s.salesman_id=sp.salesman_id
group by name;

#3
select name,sum(cost_$) as total_revenue_generated from salespersons sp join
sales s on s.salesman_id=sp.salesman_id
join cars c using(car_id)
group by s.salesman_id;

#4
select sp.salesman_id,name,car_id,make,type,style,cost_$ from salespersons sp join
sales s on s.salesman_id=sp.salesman_id
join cars c using(car_id);

#5
select type,sum(cost_$) from cars
group by type;	

#6
select name,make,type,style,cost_$,purchase_date from salespersons sp join
sales s on s.salesman_id=sp.salesman_id
join cars c using(car_id)
where year(purchase_date)=2021 and name = 'Emily Wong';

#7
select sum(cost_$) as hatchback_revenue from cars
where style = 'Hatchback'
group by style;

#8
select sum(cost_$) as SUV_revenue_2022 from cars
join sales using(Car_id)
where style = 'SUV' and year(purchase_date)=2022
group by style;

#9
select name,city,count(sale_id) as no_of_cars_sold from salespersons sp join 
sales s on s.salesman_id=sp.salesman_id
where year(purchase_date)=2023
group by s.salesman_id
order by no_of_cars_Sold desc limit 1;

#10
select name,age,sum(cost_$) as revenue_generated from salespersons sp join
sales s on s.salesman_id=sp.salesman_id
join cars c using(car_id)
where year(purchase_date)=2022
group by sp.salesman_id
order by revenue_generated desc limit 1;


