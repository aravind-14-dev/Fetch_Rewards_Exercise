with table1 as
(select rewardsReceiptStatus, purchasedItemCount
from receipts where rewardsReceiptStatus in ("FINISHED","REJECTED")),
table2 as 
(select rewardsReceiptStatus, sum(purchasedItemCount) as total_number_of_items
from table1 group by rewardsReceiptStatus)

select rewardsReceiptStatus, max(total_number_of_items) as no_of_items from table2




-- Assumption and Comments:

-- 1. There are 5 different status for receipts such as "FINISHED", "REJECTED",
--    "PENDING", "FLAGGED" and "SUBMITTED". I assumed "FINISHED" as "ACCEPTED"
--    status as others are intermediate statuses.

-- 2. table1 returns records with statuses "FINISHED" and "REJECTED" only.

-- 3. table2 returns 2 records with their total number of items purchased.

-- 4. Final query returns the status with greater total number of items purchased.