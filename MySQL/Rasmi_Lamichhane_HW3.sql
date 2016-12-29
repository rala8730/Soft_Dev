#number1
select name,statecode from states order by name;
select* from counties where name LIKE 'prince%' order by statecode;
select population_2010 from states join senators on states.statecode=senators.statecode where senators.name='Richard Lugar';
select count(counties.name) from states, counties where states.statecode=counties.statecode and states.name='maryland';
select name,admitted_to_union from states order by admitted_to_union DESC LIMIT 1;
select distinct senators.name from senators where senators.name NOT in (select distinct senators.name from committees inner join senators on senators.name=committees.chairman where affiliation='D') and affiliation='D' order by senators.name;