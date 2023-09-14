CREATE OR REPLACE VIEW view_company_chart AS
SELECT
    CONCAT(first_name, ' ', last_name) AS "Full Name",
    job_title AS "Job Title"
FROM
    employees
WHERE
    manager_id = 184;