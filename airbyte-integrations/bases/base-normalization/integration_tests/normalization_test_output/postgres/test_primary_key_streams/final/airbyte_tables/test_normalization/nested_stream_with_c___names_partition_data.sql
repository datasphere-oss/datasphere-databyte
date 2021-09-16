

  create  table "postgres".test_normalization."nested_stream_with_c___names_partition_data__dbt_tmp"
  as (
    
with __dbt__CTE__nested_stream_with_c___names_partition_data_ab1 as (

-- SQL model to parse JSON blob stored in a single column and extract into separated field columns as described by the JSON Schema

select
    _airbyte_partition_hashid,
    jsonb_extract_path_text(_airbyte_nested_data, 'currency') as currency,
    _airbyte_emitted_at
from "postgres".test_normalization."nested_stream_with_c___long_names_partition" as table_alias
cross join jsonb_array_elements(
        case jsonb_typeof("DATA")
        when 'array' then "DATA"
        else '[]' end
    ) as _airbyte_nested_data
where "DATA" is not null
-- DATA at nested_stream_with_complex_columns_resulting_into_long_names/partition/DATA
),  __dbt__CTE__nested_stream_with_c___names_partition_data_ab2 as (

-- SQL model to cast each column to its adequate SQL type converted from the JSON schema type
select
    _airbyte_partition_hashid,
    cast(currency as 
    varchar
) as currency,
    _airbyte_emitted_at
from __dbt__CTE__nested_stream_with_c___names_partition_data_ab1
-- DATA at nested_stream_with_complex_columns_resulting_into_long_names/partition/DATA
),  __dbt__CTE__nested_stream_with_c___names_partition_data_ab3 as (

-- SQL model to build a hash column based on the values of this record
select
    md5(cast(
    
    coalesce(cast(_airbyte_partition_hashid as 
    varchar
), '') || '-' || coalesce(cast(currency as 
    varchar
), '')

 as 
    varchar
)) as _airbyte_data_hashid,
    tmp.*
from __dbt__CTE__nested_stream_with_c___names_partition_data_ab2 tmp
-- DATA at nested_stream_with_complex_columns_resulting_into_long_names/partition/DATA
)-- Final base SQL model
select
    _airbyte_partition_hashid,
    currency,
    _airbyte_emitted_at,
    _airbyte_data_hashid
from __dbt__CTE__nested_stream_with_c___names_partition_data_ab3
-- DATA at nested_stream_with_complex_columns_resulting_into_long_names/partition/DATA from "postgres".test_normalization."nested_stream_with_c___long_names_partition"
  );