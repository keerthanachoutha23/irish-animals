/*--------------------------------------------------
   Irish Animals Data Analysis (SAS)
   - Import dataset
   - Data cleaning and summary statistics
   - Population analysis
   - Size and weight analysis
   - Correlation study
   - Visualizations
   - Summary report
--------------------------------------------------*/

/* mport the dataset */
PROC IMPORT DATAFILE="\\apporto.com\dfs\CLT\Users\kchoutha_clt\Downloads\irish_animals.csv"
    OUT=irish_animals
    DBMS=CSV
    REPLACE;
    GUESSINGROWS=MAX;
RUN;

/* View first few rows of the dataset */
PROC PRINT DATA=irish_animals (OBS=5);
    TITLE "First 5 Rows of Irish Animals Dataset";
RUN;

/* STEP 3: Check for missing values */
PROC MEANS DATA=irish_animals N NMISS;
    TITLE "Missing Values Count in Irish Animals Dataset";
RUN;

/* STEP 4: Basic Summary Statistics */
PROC MEANS DATA=irish_animals MEAN MIN MAX STD;
    VAR Population Size__min_cm_ Size__max_cm_ Weight__min_kg_ Weight__max_kg_
        Lifespan__min_years_ Lifespan__max_years_;
    TITLE "Summary Statistics of Irish Animals";
RUN;

/*--------------------------------------------------
ANALYSIS 1: Top 5 Most and Least Populated Animals
--------------------------------------------------*/
/* Sort dataset by Population in descending order */
PROC SORT DATA=irish_animals OUT=sorted_population;
    BY DESCENDING Population;
RUN;

/* Print the Top 5 Most Populated Animals */
PROC PRINT DATA=sorted_population (OBS=5);
    TITLE "Top 5 Most Populated Irish Animals";
RUN;

/* Sort dataset by Population in ascending order */
PROC SORT DATA=irish_animals OUT=sorted_population_asc;
    BY Population;
RUN;

/* Print the Top 5 Least Populated Animals */
PROC PRINT DATA=sorted_population_asc (OBS=5);
    TITLE "Top 5 Least Populated Irish Animals";
RUN;

/*--------------------------------------------------
ANALYSIS 2: Largest and Smallest Animals
--------------------------------------------------*/
/* Sort dataset by max size */
PROC SORT DATA=irish_animals OUT=sorted_size;
    BY DESCENDING Size__max_cm_;
RUN;

/* Print the 5 Largest Animals */
PROC PRINT DATA=sorted_size (OBS=5);
    TITLE "Top 5 Largest Animals (by max size)";
RUN;

/* Sort dataset by min size */
PROC SORT DATA=irish_animals OUT=sorted_size_smallest;
    BY Size__min_cm_;
RUN;

/* Print the 5 Smallest Animals */
PROC PRINT DATA=sorted_size_smallest (OBS=5);
    TITLE "Top 5 Smallest Animals (by min size)";
RUN;

/*--------------------------------------------------
   ANALYSIS 3: Relationship Between Size & Weight
--------------------------------------------------*/
/* Find correlation between Size and Weight */
PROC CORR DATA=irish_animals;
    VAR Size__max_cm_ Weight__max_kg_;
    TITLE "Correlation Between Animal Size and Weight";
RUN;

/*--------------------------------------------------
   VISUALIZATIONS
--------------------------------------------------*/

/* Histogram: Population Distribution */
PROC SGPLOT DATA=irish_animals;
    HISTOGRAM Population;
    TITLE "Distribution of Animal Populations in Ireland";
RUN;

/* Scatter Plot: Size vs Weight */
PROC SGPLOT DATA=irish_animals;
    SCATTER X=Size__max_cm_ Y=Weight__max_kg_;
    TITLE "Size vs. Weight of Irish Animals";
RUN;

/* Bar Chart: Lifespan of Animals */
PROC SGPLOT DATA=irish_animals;
    VBAR Name / RESPONSE=Lifespan__max_years_;
    TITLE "Maximum Lifespan of Irish Animals";
RUN;

/*--------------------------------------------------
   FINAL SUMMARY REPORT
--------------------------------------------------*/
PROC REPORT DATA=irish_animals NOWD;
    COLUMN Name Population Size__max_cm_ Weight__max_kg_ Lifespan__max_years_;
    DEFINE Name / DISPLAY "Animal Name";
    DEFINE Population / ANALYSIS SUM "Total Population";
    DEFINE Size__max_cm_ / ANALYSIS MEAN "Average Max Size (cm)";
    DEFINE Weight__max_kg_ / ANALYSIS MEAN "Average Max Weight (kg)";
    DEFINE Lifespan__max_years_ / ANALYSIS MEAN "Average Lifespan (years)";
    TITLE "Summary Report of Irish Animals";
RUN;
