-- TOTAL PATIENTS

SELECT COUNT (*) AS total_patients
FROM temp-0417.patient_data.patient_data

-- MALE AND FEMALE PATIENTS

SELECT Gender,
  COUNT (*) as total_patients
FROM temp-0417.patient_data.patient_data
GROUP BY Gender

-- AVERAGE BILLING AMOUNT

SELECT ROUND(avg(billing_amount),2) As avg_billing
FROM temp-0417.patient_data.patient_data

-- MOST COMMON MEDICAL CONDITIONS

SELECT medical_condition,
  COUNT (*) AS total_cases
FROM temp-0417.patient_data.patient_data
GROUP BY medical_condition
ORDER BY total_cases DESC

-- INSURANCE PROVIDER ANALYSIS

SELECT insurance_provider,
  COUNT (*) AS total_patients,
  ROUND(avg(billing_amount),2) As avg_bill
FROM temp-0417.patient_data.patient_data
GROUP BY insurance_provider
ORDER BY total_patients DESC

-- AGE GROUP ANALYSIS

SELECT
  CASE
    WHEN AGE < 18 THEN 'Child'
    WHEN age between 18 and 35 THEN 'Young Adult'
    WHEN age between 36 and 60 THEN 'Young'
    ELSE 'Senior'
END AS age_group,
COUNT (*) as total_patient
FROM temp-0417.patient_data.patient_data
GROUP BY age_group

-- HIGHEST BILLING DEPARTMENT

SELECT medical_condition,
  ROUND(AVG(billing_amount),2) AS avg_bill
FROM temp-0417.patient_data.patient_data
GROUP BY medical_condition
ORDER BY avg_bill DESC

