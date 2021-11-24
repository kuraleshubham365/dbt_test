{{ config(materialized="table") }}

with Main as(
select 
    try_cast(Date as DATE),
    New_Cases as NEW_CASES,
    New_Deaths as NEW_DEATHS,
    New_Active_Cases as ACTIVE_CASES,
    Total_Cases as TOTAL_CASES,
    Total_Deaths as TOTAL_DEATHS,
    Total_Recovered as TOTAL_RECOVERED,
    Total_Active_Cases as TOTAL_ACTIVE_CASES,
    New_Cases_per_Million as NEW_CASES_PER_M,
    Total_Cases_per_Million as TOTAL_CASES_PER_M,
    new_deaths_per_million as NEW_DEATHS_PER_M,
    total_deaths_per_million as TOTAL_DEATHS_PER_M,
    case_fatality_rate as CASE_FATALITY_RATE,
    case_recovered_rate as CASE_RECOVERED_RATE,
    growth_factor_of_new_cases as GROETH_FACTOR_OF_NEW_CASES,
    growth_factor_of_new_deaths as GROWTH_FACTOR_OF_NEW_DEATHS,
    Location as LOCATION,
    location_level as LOC_LEVEL,
    province as PROVINCE,
    Island as ISLAND,
    time_zone as TZ,
    special_status as SPECIAL_STATUS,
    total_regencies as TOTAL_REGENCIES,
    total_cities as TOTAL_CITIES,
    total_districts as TOTAL_DISTRICTS,
    total_urban_villages as TOTAL_URBAN_VILLIAGE,
    total_rural_villages as TOTAL_RURAL_VILLIAGE,
    area_km_2_ as AREA_PER_2KM,
    population as POPULATION,
    population_density as POPULATION_DENSITY,
    longitude as LNG,
    latitude as LAT

from "FIVETRAN_INTERVIEW_DB"."GOOGLE_SHEETS"."COVID_19_INDONESIA_SHUBHAM_KURALE"
having (ACTIVE_CASES>=0)
)

select * from MAIN