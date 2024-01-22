use INDIAN_BANK
select * from AccountMaster
-----Case statement 
select 
		acid,
		name,
		cbalance,
		case
			when cbalance < 3000 then 'Silver'
			when cbalance between 3000 and 5000 then 'gold'
			else 'dianmond'
		end as custType
from
		AccountMaster
---or
select 
		acid,
		name,
		cbalance,
		custType =
		case
			when cbalance < 3000 then 'Silver'
			when cbalance between 3000 and 5000 then 'gold'
			else 'dianmond'
		end 
from
		AccountMaster

