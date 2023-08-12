i started solving the cash, fist by getting the the description on how the murder happened.
select *
from crime_scene_report
where type = 'murder'
and date = 20180115

i moved to searching out the two witness that i found out from the first code
select *
from PERSON  
where address_street_name like 'franklin avE%'

SELECT *
FROM PERSON 
WHERE address_street_name LIKE 'NORTHWEST%'
ORDER BY address_street_name  desc
i have gotten the id numbers of each witness so i can get the interviews from each witness
select *
from interview
where person_id =16371

select *
from interview
where person_id = 14887

the interview started about a gym membership i_d so i would have to seaech to find the membe.
select * 
from get_fit_now_check_in 
join get_fit_now_member
on get_fit_now_check_in.membership_id = get_fit_now_member.id
where membership_id like '48z%'
and check_in_date = 20180109

i have found the last two suspects so i would have to find who the murder IS checking
with the drivers plate number that i discovered


select p.name, d.plate_number
from person as p
join drivers_license as d
on p.license_id = d.id
where p.name = 'Joe Germuska' or p.name = 'Jeremy Bowers'

and i found who the killer was to be jeremy bowers because he is the only one with the
registered plate number.

in order To get the mastermind of the murder 

select transcript
from interview 
where person_id = '67318'

from the interview with the person_id '67318' we got informations about who the masterminded is 
so i have to find the real person

select p. name, d.height, d.hair_color, d.car_make, d.car_model,d.gender
from drivers_license as d
join person as p
on p.id = p. license_id
where d.height between 65 and 67 and d.hair_color = 'red' and gender = 'female'and car_make = 'tesla'
        and car_model = 'model s'and p.id in (select f.person_id from facebook_event_checkin as f
                                                        where f. event_name = 'SQL symphony concert')                                         
                                              
                                              
                         


