------ Tasks ------

--Task 1, Lessons / month over a year
	-- Code for views are in the soundgood_dump.sql file.
	-- Uses views:
	--	lessons_per_month				line 528
	--	individual_lessons_per_month	line 424
	--	group_lessons_per_month			line 367
	--	ensembles_per_month				line 309

SELECT 	months.month,
 		lessons_per_month.count as "# total lessons per month",
 		individual_lessons_per_month.count as "# individual lessons per month",
		group_lessons_per_month.count as "# group lessons per month",
		ensembles_per_month.count  as "# ensembles per month"
from lessons_per_month
	inner join months on months.nr = lessons_per_month.month
 	inner join individual_lessons_per_month on lessons_per_month.month = individual_lessons_per_month.month
	inner join group_lessons_per_month on individual_lessons_per_month.month = group_lessons_per_month.month
	inner join ensembles_per_month on group_lessons_per_month.month = ensembles_per_month.month

--Task 2, Number of students with no, 1, 2 siblings respectively
	-- Code for views are in the soundgood_dump.sql file.
	-- Uses views: 
	--	number_of_siblings	line 591
	--	no_siblings			line 576
	--	one_sibling			line 605
	--	two_siblings		line 790

 SELECT no_siblings.count AS "# students with no siblings",
		one_sibling.count AS "# students with 1 sibling",
		two_siblings.count AS "# students with 2 siblings"
	FROM
		no_siblings,one_sibling,two_siblings;

--Task 3, Instructor monthly lessons > k
	-- Code for views are in the soundgood_dump.sql file.
	-- Uses views: 
	--	instructor_monthly_lessons	line 453

SELECT name as "Instructor" from instructor_monthly_lessons where count > 1

--Task 4, Ensemble bookings

select 	to_char(time_slot.datetime, 'Day') as "Day next week",
		ensemble.genre as "Genre",
		case 
			when ensemble.max_students - count(booking_ensemble.booking_id) < 1
				then 'Fully booked'
			when ensemble.max_students - count(booking_ensemble.booking_id) between 1 and 2
				then '1-2'
			when ensemble.max_students - count(booking_ensemble.booking_id) > 2
				then '> 2'
		end as "Seats available"
		from ensemble
	inner join time_slot on ensemble.time_slot_id = time_slot.id
	inner join booking_ensemble on ensemble.id = booking_ensemble.ensemble_id
where extract(week from datetime) = case
										when extract(week from current_date) = 52 then 1
										when extract(week from current_date) <> 52 then extract(week from current_date) + 1
									end
group by time_slot.datetime,ensemble.genre,ensemble.max_students
order by time_slot.datetime,ensemble.genre
