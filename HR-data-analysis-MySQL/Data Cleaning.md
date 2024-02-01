Select * from HR.human limit 5;

<table>
  <thead>
    <tr>
      <th>id</th>
      <th>first_name</th>
      <th>last_name</th>
      <th>birthdate</th>
      <th>gender</th>
      <th>race</th>
      <th>department</th>
      <th>jobtitle</th>
      <th>location</th>
      <th>hire_date</th>
      <th>termdate</th>
      <th>location_city</th>
      <th>location_state</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>00-0037846</td>
      <td>Kimmy</td>
      <td>Walczynski</td>
      <td>06-04-91</td>
      <td>Male</td>
      <td>Hispanic or Latino</td>
      <td>Engineering</td>
      <td>Programmer Analyst I</td>
      <td>Headquarters</td>
      <td>1/20/2002</td>
      <td></td>
      <td>Cleveland</td>
      <td>Ohio</td>
    </tr>
    <tr>
      <td>00-0041533</td>
      <td>Ignatius</td>
      <td>Springett</td>
      <td>6/29/1984</td>
      <td>Male</td>
      <td>White</td>
      <td>Business Development</td>
      <td>Business Analyst</td>
      <td>Headquarters</td>
      <td>04-08-19</td>
      <td></td>
      <td>Cleveland</td>
      <td>Ohio</td>
    </tr>
    <tr>
      <td>00-0045747</td>
      <td>Corbie</td>
      <td>Bittlestone</td>
      <td>7/29/1989</td>
      <td>Male</td>
      <td>Black or African American</td>
      <td>Sales</td>
      <td>Solutions Engineer Manager</td>
      <td>Headquarters</td>
      <td>10-12-10</td>
      <td></td>
      <td>Cleveland</td>
      <td>Ohio</td>
    </tr>
    <tr>
      <td>00-0055274</td>
      <td>Baxy</td>
      <td>Matton</td>
      <td>9/14/1982</td>
      <td>Female</td>
      <td>White</td>
      <td>Services</td>
      <td>Service Tech</td>
      <td>Headquarters</td>
      <td>04-10-05</td>
      <td></td>
      <td>Cleveland</td>
      <td>Ohio</td>
    </tr>
     <tr>
      <td>00-0076100</td>
      <td>Terrell</td>
      <td>Suff</td>
      <td>04-11-94</td>
      <td>Female</td>
      <td>Two or More Races</td>
      <td>Product Management</td>
      <td>Business Analyst</td>
      <td>Remote</td>
       <td>9/29/2010</td>
       <td>2029-10-29 06:09:38 UTC</td>
       <td>Flint</td>
       <td>Michigan</td>
    </tr>
  </tbody>
 </table>
 

 &nbsp;
 &nbsp;
 &nbsp;
 &nbsp;
 
 <h3> Check the data type of all columns </h3>
 DESCRIBE HR.human;
 
 
 &nbsp;
 &nbsp;
<table>
  <thead>
    <tr>
      <th>Field</th>
      <th>Type</th>
      <th>Null</th>
      <th>Key</th>
      <th>Default</th>
      <th>Extra</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>emp_id</td>
      <td>b'varchar(20)'</td>
      <td>YES</td>
      <td></td>
      <td>NULL</td>
      <td></td>
    </tr>
    <tr>
      <td>first_name</td>
      <td>b'text'</td>
      <td>YES</td>
      <td></td>
      <td>NULL</td>
      <td></td>
    </tr>
    <tr>
      <td>last_name</td>
      <td>b'text'</td>
      <td>YES</td>
      <td></td>
      <td>NULL</td>
      <td></td>
    </tr>
    <tr>
      <td>birthdate</td>
      <td>b'text'</td>
      <td>YES</td>
      <td></td>
      <td>NULL</td>
      <td></td>
    </tr>
    <tr>
      <td>gender</td>
      <td>b'text'</td>
      <td>YES</td>
      <td></td>
      <td>NULL</td>
      <td></td>
    </tr>
    <tr>
      <td>race</td>
      <td>b'text'</td>
      <td>YES</td>
      <td></td>
      <td>NULL</td>
      <td></td>
    </tr>
    <tr>
      <td>department</td>
      <td>b'text'</td>
      <td>YES</td>
      <td></td>
      <td>NULL</td>
      <td></td>
    </tr>
    <tr>
      <td>jobtitle</td>
      <td>b'text'</td>
      <td>YES</td>
      <td></td>
      <td>NULL</td>
      <td></td>
    </tr>
    <tr>
      <td>location</td>
      <td>b'text'</td>
      <td>YES</td>
      <td></td>
      <td>NULL</td>
      <td></td>
    </tr>
    <tr>
      <td>hire_date</td>
      <td>b'text'</td>
      <td>YES</td>
      <td></td>
      <td>NULL</td>
      <td></td>
    </tr>
    <tr>
      <td>termdate</td>
      <td>b'text'</td>
      <td>YES</td>
      <td></td>
      <td>NULL</td>
      <td></td>
    </tr>
    <tr>
      <td>location_city</td>
      <td>b'text'</td>
      <td>YES</td>
      <td></td>
      <td>NULL</td>
      <td></td>
    </tr>
    <tr>
      <td>location_state</td>
      <td>b'text'</td>
      <td>YES</td>
      <td></td>
</table>
  
 <h2> Data Cleaning </h2>
 
  #cleaning birthdate column
  
    UPDATE HR.human
     SET birthdate = CASE
      	WHEN birthdate LIKE '%/%' THEN date_format(str_to_date(birthdate, '%m/%d/%Y'), '%Y-%m-%d')
        WHEN birthdate LIKE '%-%' THEN date_format(str_to_date(birthdate, '%m-%d-%Y'), '%Y-%m-%d')
        ELSE NULL
    END;
  
#This SQL code is updating the "birthdate" column in a table called "HR.human". 
  
#The birtdate is converted into the year-month-day format(eg. 2000-02-02).
  
    ALTER TABLE HR.human MODIFY COLUMN birthdate DATE;
  
#Cleaning hire_date column
  
    UPDATE HR.human
      SET hire_date = CASE
       WHEN hire_date LIKE '%/%' THEN DATE_FORMAT(STR_TO_DATE(hire_date, '%m/%d/%Y'), '%Y-%m-%d')
       WHEN hire_date LIKE '%-%' THEN DATE_FORMAT(STR_TO_DATE(hire_date, '%m-%d-%y'), '%Y-%m-%d')
      ELSE NULL
    END
  
    ALTER TABLE HR.human MODIFY COLUMN hire_date DATE;
  
 #cleaning termdate(termination date) column
     
      UPDATE HR.human SET termdate = DATE_FORMAT(STR_TO_DATE(termdate, '%Y-%m-%d %H:%i:%s UTC'), '%Y-%m-%d %H:%i:%s UTC')
      WHERE termdate IS NOT NULL AND termdate != ' ' AND termdate != '';
  
      UPDATE HR.human SET termdate = '-' WHERE termdate = '';
  
 #adding age column
  
      ALTER TABLE HR.human ADD COLUMN age INT;
      UPDATE HR.human SET age = TIMESTAMPDIFF(YEAR, birthdate, CURDATE());
  
 #removing null values of termdate

      UPDATE HR.human SET termdate = '-' WHERE termdate = '';

 #Adding age column (Using birthyear)

      ALTER TABLE HR.human ADD COLUMN age INT;
      UPDATE HR.human SET age = TIMESTAMPDIFF(YEAR, birthdate, CURDATE());


 #Removing records where age is below 18 or has negative values

       DELETE FROM HR.human where age < 18;

  
  
