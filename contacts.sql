set nocount on; 
set ansi_warnings off;

-- your contact query, customize this query to pull the right data
-- note: please REMOVE commas from the fields that might have any, see "replace" function below

SELECT 
xxxx as account_id,
xxxx as opp_id,
replace(xxxxx,',','') as fullname,
replace(xxxxx,',','') as company_name,
replace(xxxxx,',','') as title,
replace(xxxxx,',','') as email,
replace(xxxxx,',','') as phone,
replace(xxxxx,',','') as mobile_phone
FROM xxxx