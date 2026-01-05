{{
    config(
        materialized='incremental',
        unique_key='empno'
    )
}}
select empno,ename,deptno,sal,d_up_date from {{ source('s1', 'emp') }}
{% if is_incremental() %}
    -- this filter will only be applied on an incremental run
    where d_up_date > (select max(d_up_date) from {{ this }}) 
{% endif %}