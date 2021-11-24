{{ config(materialize="table") }}

with CASES as (
select
    Date as DATE,
    New_Cases as NEW_CASES,
    New_Deaths as NEW_DEATHS,
    New_Active_Cases as ACTIVE_CASES,
    Total_Cases as TOTAL_CASES,
    Total_Deaths as TOTAL_DEATHS,
    Total_Recovered as TOTAL_RECOVERED,
    Total_Active_Cases as TOTAL_ACTIVE_CASES,
    New_Cases_per_Million as NEW_CASES_PER_M,
    Total_Cases_per_Million as TOTAL_CASES_PER_M
    
from "FIVETRAN_INTERVIEW_DB"."GOOGLE_SHEETS"."COVID_19_INDONESIA_SHUBHAM_KURALE"
)

select * from CASES