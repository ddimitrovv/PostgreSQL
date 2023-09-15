CREATE VIEW view_continents_countries_currencies_details AS
SELECT
    CONCAT(
        continent_name,
        ': ',
        continent_code
    ) AS "Continent Details",
    NULL AS "Country Information",
    NULL AS "Currencies"
FROM 
    continents
UNION ALL
SELECT
    CONCAT(
        country_name,
        ' - ',
        capital,
        ' - ',
        area_in_sq_km,
        ' km2'
    ) AS "Country Information",
    NULL AS "Continent Details",
    NULL AS "Currencies"
FROM
    countries
UNION ALL
SELECT
    NULL AS "Continent Details",
    NULL AS "Country Information",
    CONCAT(
        description,
        ' (',
        currency_code,
        ')'
    ) AS "Currencies"
FROM
    currencies
ORDER BY
    "Country Information" ASC,
    "Currencies" ASC;