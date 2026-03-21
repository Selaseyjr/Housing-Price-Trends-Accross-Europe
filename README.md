# European Housing Price Analysis (2015–2024)

## 📊 Project Overview

This project analyzes housing price trends across European countries using the **House Price Index (HPI)** dataset. It follows a complete data analytics workflow, transforming raw data into meaningful insights through data cleaning, database storage, SQL analysis, and visualization.

The project demonstrates an end-to-end data pipeline:

**Raw Data → Data Cleaning (Python) → Database (MySQL) → SQL Analysis → Visualization**

---

## Research Questions

1. **Housing Market Growth**
   Which European countries experienced the largest increase in housing prices since 2015?

2. **Market Trend Over Time**
   How has the average housing price index evolved across Europe from 2015 to 2024?

3. **Top Housing Markets**
   Which countries recorded the highest housing price index values in 2024?

---

## Key Insights

* **Consistent Growth:**
  Housing prices increased steadily across most European countries after the 2015 baseline,  with Hungary leading with a wide margin.

* **Post-2020 Acceleration:**
  Many countries experienced faster growth in housing prices after 2020 with the average price of housing at 178euros in 2024.

* **Market Differences:**
  Some countries show significantly higher price levels and growth compared to others as at 2024.

---

## Database Design

The cleaned dataset is stored in a MySQL database: `housing_project`.

### Main Table: `house_prices_clean`

| Column            | Type        |
| ----------------- | ----------- |
| country           | VARCHAR(50) |
| year              | INT         |
| house_price_index | FLOAT       |

This structure allows analysis of housing price trends across countries and years using SQL aggregation.

---

## Data Processing (ETL)

The original dataset was provided in a **wide format** (years as columns).
It was transformed into a **long format** suitable for analysis.

### Key Steps:

* Load dataset using **Pandas**
* Fix encoding issues (`cp1252`)
* Remove unnecessary columns (e.g., unnamed columns)
* Filter out aggregated regions (e.g., EU totals)
* Reshape data using `pandas.melt()` (wide → long)
* Clean and convert numeric values
* Export final dataset as `house_prices_clean.csv`

---

## SQL Analysis

The following queries were used to answer the research questions:

### 1. Housing Price Growth by Country

```sql
SELECT 
    country,
    MIN(house_price_index) AS starting_price,
    MAX(house_price_index) AS latest_price
FROM house_prices_clean
GROUP BY country
ORDER BY latest_price DESC;
```

### 2. Average Housing Price Index Over Time

```sql
SELECT 
    year,
    AVG(house_price_index) AS average_price
FROM house_prices_clean
GROUP BY year
ORDER BY year;
```

### 3. Highest Housing Prices in 2024

```sql
SELECT 
    country,
    house_price_index
FROM house_prices_clean
WHERE year = 2024
ORDER BY house_price_index DESC;
```

---

## 📊 Visualizations

Using Python (**Matplotlib**), the following visualizations were created:

* Housing price growth by country (bar chart)
* Average price trend over time (line chart)
* Highest housing prices in 2024 (ranking chart)

---

## 📁 Project Structure

```
housing-price-analysis/
│
├── data/
│   ├── raw/
│   └── cleaned/
│
├── notebooks/
│   ├── data_cleaning.ipynb
│   └── analysis_visualization.ipynb
│
├── sql/
│   ├── create_tables.sql
│   └── analysis_queries.sql
│
├── visuals/
│
├── presentation/
│
├── docs/
│   └── trello_board.pdf
│
├── requirements.txt
└── README.md
```

---

## How to Reproduce

### 1. Data Cleaning

Run:

```
data_cleaning.ipynb
```

This generates:

```
house_prices_clean.csv
```

---

### 2. Create Database

Run:

```
sql/create_tables.sql
```

---

### 3. Import Data

Use MySQL Workbench → **Table Data Import Wizard**
Import:

```
house_prices_clean.csv
```

---

### 4. Run SQL Analysis

Execute:

```
sql/analysis_queries.sql
```

---

### 5. Generate Visualizations

Run:

```
analysis_visualization.ipynb
```

---

## Technologies Used

* **Python** (Pandas, Matplotlib, Seaborn, )
* **MySQL**
* **Jupyter Notebook**

---

## Data Source

* European House Price Index (HPI) dataset (Eurostat)

---

## Conclusion

This project highlights the steady increase in housing prices across Europe and demonstrates how data analytics tools can be used to explore economic trends. It showcases fundamental skills in data cleaning, SQL analysis, and data visualization.

---

## Authors
* Diego Fornero
* Selasey Junior Gbeddy

