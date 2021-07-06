There are four tables according to the JSONs provided.
1. Receipts
2. Brand
3. Users
4. Receipt_Items

New table:

Receipt_Items is newly created because it was in a list inside Receipts JSON and to establish a relationship between Receipts and Brand tables.

Thoughts/Assumptions:

The purpose of relational schema is such that it should be easy to query the data for any scenario. A receipt will have multiple items on it and each item is related to a different brand.
There are no common/consistent fields between Receipt_Items and Brand table. For example, the barcode field from two tables are not matching, 
the "id" field inside "cpg" field of Brand table matches with "pointPayerId" field in Receipt_items and not for all records.

"b_id" column is created to establish a consistent relationship between Receipt_Items and Brand table and any item on the receipt can be indentified with its brand. 