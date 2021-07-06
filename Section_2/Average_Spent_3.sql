with table1 as
(select rewardsReceiptStatus, totalSpent
from receipts where rewardsReceiptStatus in ("FINISHED","REJECTED")),
table2 as 
(select rewardsReceiptStatus, avg(totalSpent) as average_spent
from table1 group by rewardsReceiptStatus)

select rewardsReceiptStatus, max(average_spend) as maximum_spent from table2;

