---
layout: post
title: "Oracle: Update based on join"
date: 2014-05-15
categories: [Oracle, SQL]
tags: [Oracle, SQL]
description: "A guide to performing updates in Oracle using joins, with a focus on the MERGE statement for efficient table updates."
---

Sometimes an update or group update needs to be performed where a join on another table is required to return the correct dataset to update. In this instance the code below will make it easier to achieve this.

```sql
MERGE
    INTO    TABLE_A A
    USING   (
            SELECT  A1.rowid AS rid
            FROM    TABLE_A A1
            INNER JOIN    TABLE_B B1
                 ON      A1.KEY_FIELD = B1.FK_KEY_FIELD
            ) B
    ON      (A.rowid = B.rid)
    WHEN MATCHED THEN
    UPDATE
    SET     A.FIELD_TO_UPDATE = 'NEW VALUE';
```

This MERGE statement provides an efficient way to update records in TABLE_A based on a join with TABLE_B. The key points of this approach are:

1. It uses the table's ROWID for precise record targeting
2. The join condition is clearly defined in the USING clause
3. The update only affects records that match the join condition
4. It's more efficient than using a subquery in a traditional UPDATE statement

This pattern is particularly useful when you need to update records based on relationships between tables, and it's more performant than using correlated subqueries in a standard UPDATE statement.

Note: This post was salvaged from my old blog at [netawakening.azurewebsites.net](https://web.archive.org/web/20161002115118/http://netawakening.azurewebsites.net/) via the Wayback Machine. 