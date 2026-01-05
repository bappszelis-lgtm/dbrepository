select c_custkey,c_name,n_name from {{ source('s1', 't_customers') }}
inner join {{ ref('m_nation') }}
on n_nationkey=c_nationkey