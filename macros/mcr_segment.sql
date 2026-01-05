{% macro mcr_segment(column_name) %}
    case when {{column_name}} in ('AUTOMOBILE','MACHINERY') then 'MACHINE' 
     when {{column_name}} in ('BUILDING','HOUSEHOLD','FURNITURE') then 'HOUSE'
     else 'OTHER' end {{column_name}}
{% endmacro %}