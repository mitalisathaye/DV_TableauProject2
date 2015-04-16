df <- data.frame(fromJSON(getURL(URLencode(gsub("\n", " ", '129.152.144.84:5001/rest/native/?query=
"select COUNTY, STATE, HOUSINGUNITS, cume_dist() 
OVER (PARTITION BY STATE order by HOUSINGUNITS) AS cume_dist
from COUNTIES2 
order by 2,3 desc"
')),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_mks2426', PASS='orcl_mks2426', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE))); tbl_df(df)

