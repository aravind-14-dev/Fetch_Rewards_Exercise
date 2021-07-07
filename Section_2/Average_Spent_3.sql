with table1 as
(select rewardsReceiptStatus, totalSpent
from receipts where rewardsReceiptStatus in ("FINISHED","REJECTED")),
table2 as 
(select rewardsReceiptStatus, avg(totalSpent) as average_spent
from table1 group by rewardsReceiptStatus)

select rewardsReceiptStatus, max(average_spend) as maximum_spent from table2


-- Assumption and Comments:

-- 1. There are 5 different status for receipts such as "FINISHED", "REJECTED",
--    "PENDING", "FLAGGED" and "SUBMITTED". I assumed "FINISHED" as "ACCEPTED"
--    status as others are intermediate statuses.

-- 2. table1 returns records with statuses "FINISHED" and "REJECTED" only.

-- 3. table2 returns 2 records with their average total spent.

-- 4. Final query returns the status with greater average total spent.