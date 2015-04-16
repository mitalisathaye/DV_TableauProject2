df <- data.frame(fromJSON(getURL(URLencode(gsub("\n", " ", '129.152.144.84:5001/rest/native/?query=
"select COUNTY, STATE, POPULATION, last_value(MAX_POPULATION) 
OVER (PARTITION BY STATE order by POPULATION) MAX_POPULATION, last_value(MAX_POPULATION) 
OVER (PARTITION BY STATE order by POPULATION) - POPULATION AS POPULATION_diff
from
(SELECT COUNTY, STATE, POPULATION, max(POPULATION)
OVER (PARTITION BY STATE) MAX_POPULATION 
FROM COUNTIES2) 
order by 2,3 desc"
')),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_mks2426', PASS='orcl_mks2426', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE))); tbl_df(df)


