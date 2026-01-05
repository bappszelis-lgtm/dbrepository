{% macro m_acct_percentage(c1,c2) %}
    case when {{c1}} ='USA' then {{c2}} * 0.3
     when {{c1}}  ='INDIA' then {{c2}}  * 0.2
     else {{c2}}  * 0.5 end new_balance
{% endmacro %}