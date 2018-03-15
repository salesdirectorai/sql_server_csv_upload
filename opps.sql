set nocount on; 
set ansi_warnings off;

-- your opportunity query, customize this query to pull the right data
-- note: please REMOVE commas from the fields that might have any, see "replace" function below

SELECT
xxxx as account_id,
replace(xxxxx,',','') as account_name,
xxxx as opp_id,
replace(xxxxx,',','') as opp_name,
xxxx as amount,
xxxx as close_date,
xxxx as stage,
xxxx as owner,
xxxx as owner_email
FROM opportunities
where xxxx > '1/1/2017';