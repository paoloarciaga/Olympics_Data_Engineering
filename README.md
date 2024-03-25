# Olympic Summer & Winter Games, 1896-2022: Data Engineering
![alt text](image.png)

## Background 
This project was completed by Karan Dogra, Paolo Arciaga, Amy Larsen, and Richard Bialick. We used a historical dataset on the Olympic Games, including all the games from Athens 1896 to Beijing 2022 via [Kaggle](https://www.kaggle.com/datasets/piterfm/olympic-games-medals-19862018) 

This dataset's original files are comprised of all historical data on: 
- Olympic Hosts
- Olympic Athletes
- Olympic Medals
- Olympic Results 

## ETL Workflow:

##  Data Cleaning 
Extracted and transformed our original CSVs to create new DataFrames that were ultimately used as tables to create an ERD and a new SQL database.    

- ###   Olympic Hosts
- Original: ![alt text](image-1.png)
- Cleaned: ![alt text](image-2.png)
    - Converted the datetime columns to datetime format and removed the time 
    - Split the city and year columns 
    - Renamed columns  
    - Exported the cleaned DataFrame as a CSV and saved to our repo 
- ###   Olympic Athletes
    - Original: ![alt text](image-3.png)
    - Cleaned: ![alt text](image-4.png)
        - Split the athlete full name column into two separate first and last name columns 
        - Converted last names to lower case 
        - Capitalized the first letter of each last name 
        - Used RegEx to capitalize the first letter of last names with hyphens, as well as last names with 2 names 
        - Converted the YOB column to an integer 
        - Used RegEx to fix the medals column and created 3 new columns to represent gold, silver, and bronze medals won. 
        - Converted each medal column to an integer 
        - Dropped unwanted columns
        - Reordered and renamed columns 
        - Exported the cleaned DataFrame as a CSV and saved to our repo
- ###   Olympic Medals 
    - Original: 
    - Cleaned: 
- ###   Olympic Results
    - Original: 
    - Cleaned: 

## 

## How to Use & Interact With Our Database

## Benefits of Using SQL 
Using SQL (Structured Query Language) offers several benefits for our Olympics Data Engineering ETL project:
    - Ease of Data Retrieval: SQL provides a simple and intuitive way to query and retrieve data from relational databases like Postgres, allowing us to efficiently access the information we need for our analysis tasks.

    - Data Aggregation and Transformation: SQL's powerful aggregation functions and data manipulation capabilities enable us to aggregate, filter, and transform the dataset as needed, facilitating the preparation of data for further analysis and reporting.

    - Scalability: SQL databases are highly scalable, capable of handling large volumes of data efficiently. This scalability ensures that our project can accommodate the growing dataset size associated with Olympic Games data over time.

    - Data Modeling and Schema Design: SQL allows us to define and implement data models and database schemas that accurately represent the Olympic Games data structure, facilitating efficient data storage, retrieval, and analysis.

## Ethical Considerations
In our Olympics Data Engineering ETL project, we have made several efforts to address ethical considerations throughout the data processing pipeline. We have been transparent about our data collection methods, sources, and processing steps, providing clear documentation to foster trust and accountability. Moreover, we have prioritized data security measures to safeguard against unauthorized access, data breaches, and misuse of the dataset. By incorporating these ethical considerations into our project, we aim to uphold the integrity of the data and mitigate potential risks associated with its use while promoting responsible and ethical data practices.

