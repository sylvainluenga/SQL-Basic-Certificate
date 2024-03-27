                                ~Question!~

~ A University has started a student-advisor plan which assisgn a professor as an advisor to each student for academic guidance. write a query to find the roll number and names of students who either have a male advisor with a salary of more than 15,000 or a female advisor with a salary of more than 20,000.
There are two table in the database: student_information and faculty_information. The primary Key of staudent_information is roll_number whereas that of faculty_information is employee_ID

Explanation:
Student with roll number 2 advised by a male teacher with salary of 21000 which is more than 15000 and hence is displayed in the output.
Students 1 and 3 are advised by a female taecher who salary is less than 20000 and hence are not present in the output ~

                            `Answer! here we have 2 why of answering~

1:
SELECT s.roll_number, s.name
FROM student_information s
JOIN faculty_information f ON s.advisor_employee_ID = f.employee_ID
WHERE (f.gender = 'Male' AND f.salary > 15000)
   OR (f.gender = 'Female' AND f.salary > 20000);

2:
select std.roll_number, std.name 
from student_information std, faculty_information fi 
where std.advisor = fi.employee_id and (fi.gender = 'M' and fi.salary > 15000 or fi.gender = 'F' and fi.salary > 20000) 
