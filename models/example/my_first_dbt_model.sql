
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml
*/

{{ config(materialized='table') }}

with source_data as (

    SELECT data.artists as artists, data.id as track_id, data.link as track_link, data.track_name as track_name FROM `first-demo-361604.spotify_data.raw_tracks`

)

select *
from source_data


