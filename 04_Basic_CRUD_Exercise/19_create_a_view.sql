CREATE OR REPLACE VIEW view_company_chart AS
SELECT
    "Full Name",
    "Job Title"
FROM
    company_chart
WHERE
    "Manage ID" = 184;