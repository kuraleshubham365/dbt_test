with REGION as(
select 
    Date as DATE,
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
)

select * from REGION
