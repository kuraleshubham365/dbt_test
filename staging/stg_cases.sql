with primary as (
    select 
        Date
    from {{ ref('stg_primary') }}
),
cases as (
    select
    New Cases as NEW_CASES,
    New Deaths as NEW_DEATHS,
    New Active Cases as ACTIVE_CASES,
    Total Cases as TOTAL_CASES,
    Total Deaths as TOTAL_DEATHS,
    Total Recovered as TOTAL_RECOVERED,
    Total Active Cases as TOTAL_ACTIVE_CASES,
    New Cases per Million as NEW_CASES_PER_M,
    Total Cases per Million as TOTAL_CASES_PER_M,
    


    from "FIVETRAN_INTERVIEW_DB"."GOOGLE_SHEETS"."COVID_19_INDONESIA_SHUBHAM_KURALE"
)