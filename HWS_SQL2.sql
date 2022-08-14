--Q1
select c.CourseName, l.FirstName + ' ' + l.LastName FullName from courses c
full outer join Lecturers l
on c.LecturerId = l.Id
order by c.Id, l.LastName
--Q2
select c.CourseName, l.FirstName + ' ' + l.LastName FullName 
from courses c join Lecturers l
on c.LecturerId = l.Id
order by c.Id, l.LastName
--Q3
select  l.FirstName + ' ' + l.LastName FullName ,c.CourseName from courses c
left join Lecturers l
on c.LecturerId = l.Id
where c.LecturerId is not null
order by c.Id, l.LastName
--Q4
select c.CourseName,  l.FirstName + ' ' + l.LastName FullName  from courses c
left join Lecturers l
on c.LecturerId = l.Id
where c.LecturerId is null
order by c.Id, l.LastName
--Q5
select  l.FirstName + ' ' + l.LastName FullName , c.CourseName  from Lecturers l left join courses c
on c.LecturerId = l.Id
where c.LecturerId is null
--Q6
select c.CourseName, l.FirstName + ' ' + l.LastName FullName from courses c
full outer join Lecturers l
on c.LecturerId = l.Id
where c.CourseName is not null 
