# Data Analyst Assignment on SQl Python Excel
 This project involves analyzing sales transaction data to evaluate business performance and derive actionable insights. The tasks include data extraction, cleaning, analysis, and reporting using SQL, Python, and Excel.

Dataset:
Dataset: Adult Income Dataset
Download: The dataset can be downloaded as adult.data from here.

Tasks:
1. Python (Pandas) Task:
Load the adult.data file into a Pandas DataFrame.
Clean the data by handling missing values and encoding categorical columns.
Create a binary IncomeBracket column and combine WorkClass and Occupation into a new column.
Calculate the average age per workclass and the proportion of individuals earning more than 50K per education level.
Save the cleaned data to adult_cleaned.csv.
2. Excel Task:
Open adult_cleaned.csv in Excel.
Use VLOOKUP to map education levels to income proportions.
Create a pivot table summarizing average age by workclass and sex.
Apply conditional formatting to highlight individuals over 50 years old.
Generate a bar chart showing the distribution of workclass by income brackets, and save the file as adult_pivot_analysis.xlsx.
3. SQL Task:
Write SQL queries to:
Get the top 10 oldest individuals earning more than 50K.
Find the average hours worked per week by workclass.
Calculate the proportion of individuals earning more than 50K by education.
Update a person’s workclass based on age and occupation.
Perform a JOIN to display workclass, income, and hours worked by sex.
4. Data Visualization:
Use Matplotlib or Seaborn to visualise income distribution by education and create a heatmap of correlations between numeric variables.
