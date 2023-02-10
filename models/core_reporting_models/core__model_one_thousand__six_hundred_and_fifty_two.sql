with model_a as
  (select *
   from {{ ref('int__finance_model_one_thousand,_six_hundred_and_seventy') }})
select * exclude unqiue_key,
         row_number() over (partition by 1
                            order by 1) as unqiue_key
from model_a