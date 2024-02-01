<h3> 1. What is the gender breakdown of employees in the company? </h3>
    
    SELECT gender, count(*) as count from HR.human group by gender;
    
<table>
  <thead>
    <tr>
      <th>gender</th>
      <th>count</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Male</td>
      <td>10794</td>
    </tr>
    <tr>
      <td>Female</td>
      <td>9876</td>
    </tr>
    <tr>
      <td>Non-Conforming</td>
      <td>577</td>
    </tr>
  </tbody>
</table>

<h3> 2. What is the race/ethnicity breakdown of employees in the company? </h3>

    SELECT race, COUNT(*) AS count FROM HR.human GROUP BY race ORDER BY count DESC;
    
<table>
  <thead>
    <tr>
      <th>race</th>
      <th>count</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>White</td>
      <td>6057</td>
    </tr>
    <tr>
      <td>Two or More Races</td>
      <td>3508</td>
    </tr>
    <tr>
      <td>Black or African American</td>
      <td>3443</td>
    </tr>
    <tr>
      <td>Asian</td>
      <td>3388</td>
    </tr>
    <tr>
      <td>Hispanic or Latino</td>
      <td>2402</td>
    </tr>
    <tr>
      <td>American Indian or Alaska Native</td>
      <td>1273</td>
    </tr>
    <tr>
      <td>Native Hawaiian or Other Pacific Islander</td>
      <td>1176</td>
    </tr>
  </tbody>
</table>


<h3> 3. What is the age distribution of employees in the company? </h3>

     SELECT
      CASE
        WHEN age >= 18 and age <=24 THEN '18-24'
        WHEN age >= 25 and age <=34 THEN '25-34'
        WHEN age >= 35 and age <=44 THEN '35-44'
        WHEN age >= 45 and age <=54 THEN '45-54'
        WHEN age >= 55 and age <=64 THEN '55-64'
        ELSE '65+'
     END AS age_group, gender,
     COUNT(*) AS count FROM HR.human GROUP BY age_group, gender ORDER BY age_group, gender;

<table>
  <thead>
    <tr>
      <th>age_group</th>
      <th>gender</th>
      <th>count</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>18-24</td>
      <td>Female</td>
      <td>1167</td>
    </tr>
    <tr>
      <td>18-24</td>
      <td>Male</td>
      <td>1342</td>
    </tr>
    <tr>
      <td>18-24</td>
      <td>Non-Conforming</td>
      <td>61</td>
    </tr>
    <tr>
      <td>25-34</td>
      <td>Female</td>
      <td>2860</td>
    </tr>
    <tr>
      <td>25-34</td>
      <td>Male</td>
      <td>3058</td>
    </tr>
    <tr>
      <td>25-34</td>
      <td>Non-Conforming</td>
      <td>163</td>
    </tr>
    <tr>
      <td>35-44</td>
      <td>Female</td>
      <td>2700</td>
    </tr>
    <tr>
      <td>35-44</td>
      <td>Male</td>
      <td>3137</td>
    </tr>
    <tr>
      <td>35-44</td>
      <td>Non-Conforming</td>
      <td>159</td>
    </tr>
    <tr>
      <td>45-54</td>
      <td>Female</td>
      <td>2689</td>
    </tr>
    <tr>
      <td>45-54</td>
      <td>Male</td>
      <td>2796</td>
    </tr>
    <tr>
      <td>45-54</td>
      <td>Non-Conforming</td>
      <td>163</td>
    </tr>
    <tr>
      <td>55-64</td>
      <td>Female</td>
      <td>460</td>
    </tr>
    <tr>
      <td>55-64</td>
      <td>Male</td>
      <td>461</td>
    </tr>
    <tr>
      <td>55-64</td>
      <td>Non-Conforming</td>
      <td>31</td>
    </tr>
  </tbody>
</table>

<h3> 4. How many employees work at headquarters versus remote locations? </h3>

    SELECT location, COUNT(*) AS count FROM HR.human GROUP BY location;
    
<table>
  <thead>
    <tr>
      <th>location</th>
      <th>count</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Headquarters</td>
      <td>15992</td>
    </tr>
    <tr>
      <td>Remote</td>
      <td>5255</td>
    </tr>
  </tbody>
</table>


<h3> 5. What is the average length of employment for employees who have been terminated? </h3>

        SELECT ROUND(AVG(datediff(termdate, hire_date))/365,0) AS avg_lenght FROM HR.human WHERE termdate <= CURRENT_DATE();

 <table>
  <thead>
    <tr>
      <th>avg_length</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>8</td>
    </tr>
  </tbody>
</table>       

<h3> 6. How does the gender distribution vary across departments and job titles? </h3>

        SELECT department, gender, COUNT(*) AS count FROM HR.human GROUP BY department, gender ORDER BY department;

<table>
  <thead>
    <tr>
      <th>department</th>
      <th>gender</th>
      <th>count</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Accounting</td>
      <td>Female</td>
      <td>1462</td>
    </tr>
    <tr>
      <td>Accounting</td>
      <td>Male</td>
      <td>1640</td>
    </tr>
    <tr>
      <td>Accounting</td>
      <td>Non-Conforming</td>
      <td>90</td>
    </tr>
    <tr>
      <td>Auditing</td>
      <td>Female</td>
      <td>23</td>
    </tr>
    <tr>
      <td>Auditing</td>
      <td>Male</td>
      <td>27</td>
    </tr>
    <tr>
      <td>Business Development</td>
      <td>Female</td>
      <td>722</td>
    </tr>
    <tr>
      <td>Business Development</td>
      <td>Male</td>
      <td>798</td>
    </tr>
    <tr>
      <td>Business Development</td>
      <td>Non-Conforming</td>
      <td>49</td>
    </tr>
    <tr>
      <td>Engineering</td>
      <td>Female</td>
      <td>2983</td>
    </tr>
    <tr>
      <td>Engineering</td>
      <td>Male</td>
      <td>3225</td>
    </tr>
    <tr>
      <td>Engineering</td>
      <td>Non-Conforming</td>
      <td>179</td>
    </tr>
    <tr>
      <td>Human Resources</td>
      <td>Female</td>
      <td>820</td>
    </tr>
    <tr>
      <td>Human Resources</td>
      <td>Male</td>
      <td>867</td>
    </tr>
    <tr>
      <td>Human Resources</td>
      <td>Non-Conforming</td>
      <td>40</td>
    </tr>
    <tr>
      <td>Legal</td>
      <td>Female</td>
      <td>134</td>
    </tr>
    <tr>
      <td>Legal</td>
      <td>Male</td>
      <td>158</td>
    </tr>
    <tr>
      <td>Legal</td>
      <td>Non-Conforming</td>
      <td>7</td>
    </tr>
    <tr>
      <td>Marketing</td>
      <td>Female</td>
      <td>230</td>
    </tr>
    <tr>
      <td>Marketing</td>
      <td>Male</td>
      <td>245</td>
    </tr>
    <tr>
      <td>Marketing</td>
      <td>Non-Conforming</td>
      <td>5</td>
    </tr>
    <tr>
      <td>Product Management</td>
      <td>Female</td>
      <td>270</td>
    </tr>
    <tr>
      <td>Product Management</td>
      <td>Male</td>
      <td>338</td>
    </tr>
    <tr>
      <td>Product Management</td>
      <td>Non-Conforming</td>
      <td>15</td>
    </tr>
    <tr>
      <td>Research and Development</td>
      <td>Female</td>
      <td>491</td>
    </tr>
    <tr>
      <td>Research and Development</td>
      <td>Male</td>
      <td>506</td>
    </tr>
    <tr>
      <td>Research and Development</td>
      <td>Non-Conforming</td>
      <td>35</td>
    </tr>
    <tr>
      <td>Sales</td>
      <td>Female</td>
      <td>793</td>
    </tr>
    <tr>
      <td>Sales</td>
      <td>Male</td>
      <td>906</td>
    </tr>
    <tr>
      <td>Sales</td>
      <td>Non-Conforming</td>
      <td>46</td>
    </tr>
    <tr>
      <td>Services</td>
      <td>Female</td>
      <td>770</td>
    </tr>
    <tr>
      <td>Services</td>
      <td>Male</td>
      <td>815</td>
    </tr>
    <tr>
      <td>Services</td>
      <td>Non-Conforming</td>
      <td>33</td>
    </tr>
    <tr>
      <td>Support</td>
      <td>Female</td>
      <td>419</td>
    </tr>
    <tr>
      <td>Support</td>
      <td>Male</td>
      <td>450</td>
    </tr>
    <tr>
      <td>Support</td>
      <td>Non-Conforming</td>
      <td>34</td>
    </tr>
    <tr>
      <td>Training</td>
      <td>Female</td>
      <td>759</td>
    </tr>
    <tr>
      <td>Training</td>
      <td>Male</td>
      <td>819</td>
    </tr>
    <tr>
      <td>Training</td>
      <td>Non-Conforming</td>
      <td>44</td>
    </tr>
  </tbody>
</table>
  
<h3> 7. Which department has the highest turnover rate? </h3>

        SELECT department, COUNT(*) AS total_count,
          SUM(CASE WHEN termdate ='-' THEN 1 ELSE 0 END) AS active_count,
          (Count(*) - SUM(CASE WHEN termdate ='-' THEN 1 ELSE 0 END)) AS terminated_count,
          (((Count(*) - SUM(CASE WHEN termdate ='-' THEN 1 ELSE 0 END))/COUNT(*))*100) AS termination_rate
        FROM HR.human GROUP BY department ORDER BY termination_rate DESC;

<table>
  <tr>
    <th>Department</th>
    <th>Total Count</th>
    <th>Active Count</th>
    <th>Terminated Count</th>
    <th>Termination Rate</th>
  </tr>
  <tr>
    <td>Auditing</td>
    <td>50</td>
    <td>38</td>
    <td>12</td>
    <td>24.00</td>
  </tr>
  <tr>
    <td>Legal</td>
    <td>299</td>
    <td>237</td>
    <td>62</td>
    <td>20.73</td>
  </tr>
  <tr>
    <td>Research and Development</td>
    <td>1032</td>
    <td>830</td>
    <td>202</td>
    <td>19.57</td>
  </tr>
  <tr>
    <td>Support</td>
    <td>903</td>
    <td>732</td>
    <td>171</td>
    <td>18.93</td>
  </tr>
  <tr>
    <td>Sales</td>
    <td>1745</td>
    <td>1426</td>
    <td>319</td>
    <td>18.28</td>
  </tr>
  <tr>
    <td>Product Management</td>
    <td>623</td>
    <td>512</td>
    <td>111</td>
    <td>17.81</td>
  </tr>
  <tr>
    <td>Accounting</td>
    <td>3192</td>
    <td>2626</td>
    <td>566</td>
    <td>17.73</td>
  </tr>
  <tr>
    <td>Engineering</td>
    <td>6387</td>
    <td>5259</td>
    <td>1128</td>
    <td>17.66</td>
  </tr>
  <tr>
    <td>Training</td>
    <td>1622</td>
    <td>1338</td>
    <td>284</td>
    <td>17.50</td>
  </tr>
  <tr>
    <td>Services</td>
    <td>1618</td>
    <td>1337</td>
    <td>281</td>
    <td>17.36</td>
  </tr>
  <tr>
    <td>Human Resources</td>
    <td>1727</td>
    <td>1430</td>
    <td>297</td>
    <td>17.19</td>
  </tr>
  <tr>
    <td>Business Development</td>
    <td>1569</td>
    <td>1307</td>
    <td>262</td>
    <td>16.69</td>
  </tr>
  <tr>
    <td>Marketing</td>
    <td>480</td>
    <td>410</td>
    <td>70</td>
    <td>14.58</td>
  </tr>
</table>



<h3> 8. What is the distribution of employees across locations by state? </h3>

        SELECT location_state, COUNT(*) AS count FROM HR.human GROUP BY location_state ORDER BY count DESC;

<table>
  <tr>
    <th>Location State</th>
    <th>Count</th>
  </tr>
  <tr>
    <td>Ohio</td>
    <td>17252</td>
  </tr>
  <tr>
    <td>Pennsylvania</td>
    <td>1066</td>
  </tr>
  <tr>
    <td>Illinois</td>
    <td>833</td>
  </tr>
  <tr>
    <td>Indiana</td>
    <td>666</td>
  </tr>
  <tr>
    <td>Michigan</td>
    <td>650</td>
  </tr>
  <tr>
    <td>Kentucky</td>
    <td>417</td>
  </tr>
  <tr>
    <td>Wisconsin</td>
    <td>363</td>
  </tr>
</table>


<h3> 9. How has the company's employee count changed over time based on hire and term dates? </h3>

        SELECT YEAR(hire_date) AS year,
        Count(*) as hires,
        SUM(termdate != '-' AND termdate <= CURRENT_DATE()) as terminated_count,
        COUNT(*) - SUM(termdate != '-' AND termdate <= CURRENT_DATE()) as net_change,
        ROUND(((count(*)- SUM(termdate != '-' AND termdate <= CURRENT_DATE()))/ count(*) * 100),2) AS net_change_percent
        FROM HR.human GROUP BY YEAR(hire_date) ORDER BY YEAR(hire_date) ASC;

<table>
  <tr>
    <th>Year</th>
    <th>Hires</th>
    <th>Terminated Count</th>
    <th>Net Change</th>
    <th>Net Change Percent</th>
  </tr>
  <tr>
    <td>2000</td>
    <td>211</td>
    <td>26</td>
    <td>185</td>
    <td>87.68</td>
  </tr>
  <tr>
    <td>2001</td>
    <td>1082</td>
    <td>197</td>
    <td>885</td>
    <td>81.79</td>
  </tr>
  <tr>
    <td>2002</td>
    <td>1012</td>
    <td>161</td>
    <td>851</td>
    <td>84.09</td>
  </tr>
  <tr>
    <td>2003</td>
    <td>1088</td>
    <td>187</td>
    <td>901</td>
    <td>82.81</td>
  </tr>
  <tr>
    <td>2004</td>
    <td>1087</td>
    <td>190</td>
    <td>897</td>
    <td>82.52</td>
  </tr>
  <tr>
    <td>2005</td>
    <td>1038</td>
    <td>166</td>
    <td>872</td>
    <td>84.01</td>
  </tr>
  <tr>
    <td>2006</td>
    <td>1069</td>
    <td>166</td>
    <td>903</td>
    <td>84.47</td>
  </tr>
  <tr>
    <td>2007</td>
    <td>1058</td>
    <td>134</td>
    <td>924</td>
    <td>87.33</td>
  </tr>
  <tr>
    <td>2008</td>
    <td>1061</td>
    <td>135</td>
    <td>926</td>
    <td>87.28</td>
  </tr>
  <tr>
    <td>2009</td>
    <td>1094</td>
    <td>139</td>
    <td>955</td>
    <td>87.29</td>
  </tr>
  <tr>
    <td>2010</td>
    <td>1050</td>
    <td>117</td>
    <td>933</td>
    <td>88.86</td>
  </tr>
  <tr>
    <td>2011</td>
    <td>1057</td>
    <td>105</td>
    <td>952</td>
    <td>90.07</td>
  </tr>
  <tr>
    <td>2012</td>
    <td>1059</td>
    <td>101</td>
    <td>958</td>
    <td>90.46</td>
  </tr>
  <tr>
    <td>2013</td>
    <td>1042</td>
    <td>86</td>
    <td>956</td>
    <td>91.75</td>
  </tr>
  <tr>
    <td>2014</td>
    <td>1014</td>
    <td>80</td>
    <td>934</td>
    <td>92.11</td>
  </tr>
  <tr>
    <td>2015</td>
    <td>1011</td>
    <td>68</td>
    <td>943</td>
    <td>93.27</td>
  </tr>
  <tr>
    <td>2016</td>
    <td>1076</td>
    <td>61</td>
    <td>1015</td>
    <td>94.33</td>
  </tr>
  <tr>
    <td>2017</td>
    <td>1043</td>
    <td>46</td>
    <td>997</td>
    <td>95.59</td>
  </tr>
  <tr>
    <td>2018</td>
    <td>1090</td>
    <td>41</td>
    <td>1049</td>
    <td>96.24</td>
  </tr>
  <tr>
    <td>2019</td>
    <td>1038</td>
    <td>41</td>
    <td>997</td>
    <td>96.05</td>
  </tr>
  <tr>
    <td>2020</td>
    <td>967</td>
    <td>19</td>
    <td>948</td>
    <td>98.04</td>
  </tr>
</table>


<h3> 10. What is the tenure distribution for each department? </h3>

        SELECT department, ROUND(AVG(datediff(CURRENT_DATE(),termdate)/365),0) AS AVG_tenure FROM HR.human WHERE termdate != '-' AND termdate <= CURRENT_DATE() GROUP BY department;

<table>
  <tr>
    <th>Department</th>
    <th>AVG Tenure</th>
  </tr>
  <tr>
    <td>Engineering</td>
    <td>8</td>
  </tr>
  <tr>
    <td>Services</td>
    <td>7</td>
  </tr>
  <tr>
    <td>Human Resources</td>
    <td>8</td>
  </tr>
  <tr>
    <td>Business Development</td>
    <td>8</td>
  </tr>
  <tr>
    <td>Sales</td>
    <td>7</td>
  </tr>
  <tr>
    <td>Auditing</td>
    <td>9</td>
  </tr>
  <tr>
    <td>Training</td>
    <td>8</td>
  </tr>
  <tr>
    <td>Accounting</td>
    <td>8</td>
  </tr>
  <tr>
    <td>Research and Development</td>
    <td>8</td>
  </tr>
  <tr>
    <td>Product Management</td>
    <td>8</td>
  </tr>
  <tr>
    <td>Support</td>
    <td>8</td>
  </tr>
  <tr>
    <td>Legal</td>
    <td>9</td>
  </tr>
  <tr>
    <td>Marketing</td>
    <td>7</td>
  </tr>
</table>



