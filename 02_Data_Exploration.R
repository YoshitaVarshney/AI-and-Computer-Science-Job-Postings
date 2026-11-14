jobs_clean <- read.csv(file.choose())
dim(jobs_clean)
# First 6 rows
head(jobs_clean)
# Last 6 rows
tail(jobs_clean)
# Dimensions
dim(jobs_clean)
# Column names
colnames(jobs_clean)
# Structure
str(jobs_clean)

# Summary
summary(jobs_clean)
# Select numerical columns
# Select numerical columns
# Select numerical variables

numeric_data <- jobs_clean[, c(
  "salary_usd",
  "years_experience",
  "remote_ratio",
  "benefits_score",
  "job_description_length"
)]

# Display numerical data

head(numeric_data)
summary(numeric_data)
# Step 9: Check Unique Values

# Display all unique job titles
unique(jobs_clean$job_title)

# Display all unique company locations
unique(jobs_clean$company_location)

# Display all unique industries
unique(jobs_clean$industry)

# Display all unique experience levels
unique(jobs_clean$experience_level)

# Display all unique employment types
unique(jobs_clean$employment_type)

# Display all unique company sizes
unique(jobs_clean$company_size)

# Display all unique education requirements
unique(jobs_clean$education_required)

# Count the number of unique job titles
length(unique(jobs_clean$job_title))

# Count the number of unique company locations
length(unique(jobs_clean$company_location))

# Count the number of unique industries
length(unique(jobs_clean$industry))

# Count the number of unique experience levels
length(unique(jobs_clean$experience_level))

# Count the number of unique employment types
length(unique(jobs_clean$employment_type))

# Count the number of unique company sizes
length(unique(jobs_clean$company_size))

# Display all unique company sizes
unique(jobs_clean$company_size)

# Display all unique industries
unique(jobs_clean$industry)

# Display all unique experience levels
unique(jobs_clean$experience_level)

# Display all unique employment types
unique(jobs_clean$employment_type)
# Step 10: Date Exploration

# Convert posting_date column into Date format
jobs_clean$posting_date <- as.Date(jobs_clean$posting_date)
# Find the earliest job posting date
min(jobs_clean$posting_date)
# Find the latest job posting date
max(jobs_clean$posting_date)
# Step 11: Experience Level Analysis

# Count the number of job postings for each experience level
experience_count <- table(jobs_clean$experience_level)

# Display the experience level counts
print(experience_count)
# Calculate the percentage of job postings for each experience level
experience_percentage <- prop.table(experience_count) * 100

# Display the experience level percentages
print(experience_percentage)
# Step 12: Employment Type Analysis

# Count the number of job postings for each employment type
employment_count <- table(jobs_clean$employment_type)

# Display employment type counts
print(employment_count)
# Calculate the percentage of each employment type
employment_percentage <- prop.table(employment_count) * 100

# Display employment type percentages
print(employment_percentage)
# Step 13: Job Postings by Industry

# Count the number of job postings in each industry
industry_count <- table(jobs_clean$industry)

# Display industry-wise job posting counts
print(industry_count)
# Calculate the percentage of job postings for each industry
industry_percentage <- prop.table(industry_count) * 100

# Display industry-wise percentages
print(industry_percentage)
# Check the total number of industry-wise job postings
sum(industry_count)
# Step 14: Job Postings by Company Size

# Count the number of job postings for each company size
company_size_count <- table(jobs_clean$company_size)

# Display company size counts
print(company_size_count)

# Calculate the percentage of job postings for each company size
company_size_percentage <- prop.table(company_size_count) * 100

# Display company size percentages
print(company_size_percentage)
# Step 15: Salary Analysis by Experience Level

# Calculate average salary for each experience level
average_salary <- aggregate(
  salary_usd ~ experience_level,
  data = jobs_clean,
  FUN = mean
)

# Display average salary by experience level
print(average_salary)
