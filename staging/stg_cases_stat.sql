with CASES_STAT as(
select
    Date as DATE,
    new_cases_per_million as NEW_CASES_PER_M,
    total_cases_per_million as TOTAL_CASES_PER_M,
    new_deaths_per_million as NEW_DEATHS_PER_M,
    total_deaths_per_million as TOTAL_DEATHS_PER_M,
    case_fatality_rate as CASE_FATALITY_RATE,
    case_recovered_rate as CASE_RECOVERED_RATE,
    growth_factor_of_new_cases as GROETH_FACTOR_OF_NEW_CASES,
    growth_factor_of_new_deaths as GROWTH_FACTOR_OF_NEW_DEATHS

from "FIVETRAN_INTERVIEW_DB"."GOOGLE_SHEETS"."COVID_19_INDONESIA_SHUBHAM_KURALE"
)

select * from CASES_STAT