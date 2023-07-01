# Bicycle-Sharing-Analysis-Case-Study

![image](https://github.com/duttasnigdha14/Bicycle-Sharing-Case-Study/assets/108872975/1ee4dd6d-5d13-44e0-899c-5de7aff87057)



Welcome to the Bicycle-share analysis case study! 
This case study focuses on analyzing data from a bicycle sharing company for the period of 2022 to 2023. The dataset contains a total of 5 million records, which were cleaned and processed using SQL.

**Ask**
What is the problem you are trying to solve?
The main problem addressed in this case study is to identify strategies to convert casual riders into annual members. By understanding the differences between these two member types and their motivations, we can design targeted marketing strategies and operational improvements to drive membership conversion.

How can my insights drive business decisions?
The insights gained from this analysis can drive several business decisions within the bicycle sharing company. Understanding the average trip duration can help optimize bike availability and maintenance schedules. Determining the member percentage can guide marketing efforts towards converting more casual riders into annual members. Identifying the most popular bike can assist in managing inventory and ensuring a seamless user experience. Finally, recognizing the busiest periods can inform resource allocation and operational planning. By leveraging these insights, the company can make data-driven decisions to enhance its overall success and drive growth.

**Data Preparation**
In the data preparation stage, I utilized MS SQL Server to clean and sort the dataset. I initially loaded each monthly data sheet individually to identify any null values or extraneous blank spaces. During this process, it was discovered that the columns "started_station_id," "started_station," "ended_station_id," and "ended_station" had null values. These null values were handled using the "isnull" condition, and the ride IDs were removed.
![Screenshot (30)](https://github.com/duttasnigdha14/Bicycle-Sharing-Case-Study/assets/108872975/0a57f7df-b4ad-4c16-8c88-3c3a6cd5a7a3)


**Data Processing**
To facilitate further analysis, I created a new table by combining the 12 individual monthly sheets. Additionally, I added four extra columns to extract the month, day, start time, and end time of each bike trip, which allowed for the calculation of trip duration.

Using SQL queries, I analyzed several key questions:

Average Trip Duration: Calculated the average duration of bike trips.
Member Percentage: Determined the percentage of individual members using the bike.
Popular Bike: Identified the most frequently used bike among all members.
Busiest Month, Day, and Time: Identified the busiest month, day, and time periods throughout the year.
The results of these analyses were saved in a combined table, which was exported to a CSV file for further analysis.

![Screenshot (29)](https://github.com/duttasnigdha14/Bicycle-Sharing-Case-Study/assets/108872975/a11c0ebc-ee25-48a5-b3d3-5dd636c2911e)
**Data Analysis and Visualization**
To present the data and insights to stakeholders, I employed Tableau as the visualization tool. I used various maps and charts to visually represent the findings of the query questions. The visualizations allowed for a comprehensive understanding of trends, patterns, and key metrics related to bike usage within the company.

The visualization outputs provide valuable insights into the performance, member engagement, and popularity of bikes, enabling informed decision-making and the development of effective strategies.


![Screenshot (28)](https://github.com/duttasnigdha14/Bicycle-Sharing-Case-Study/assets/108872975/87369397-01a6-4263-96dd-df743d99aa91)


Tableau DashBoard Link
https://public.tableau.com/app/profile/snigdha.dutta/viz/CyclistBikeShareanalysisCaseStudy/Dashboard2
