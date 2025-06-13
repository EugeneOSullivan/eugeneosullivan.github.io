---
layout: post
title: "Upsert in Oracle SQL using Merge"
date: 2012-08-20
author: Eugene
categories: [Oracle, SQL, Toad]
tags: [Oracle, Quick Tip, SQL, Toad]
---

Here is a handy bit of SQL for Oracle to allow you to do an Upsert on a row.

```sql
MERGE INTO UserDetails DEST
    USING(SELECT 1 AS ID FROM DUAL) src
    ON (DEST.userid = 'john.smith')          
WHEN MATCHED THEN 
    UPDATE SET DEST.GROUPID = '6'          
WHEN NOT MATCHED THEN 
    INSERT(DEST.USERID, DEST.GROUPID) VALUES ('john.smith', '6');

COMMIT;
```

I'll quickly explain the code above.

1. We want to use the MERGE Oracle keyword on our destination table (prefixed DEST above)
2. The USING keyword requires a statement, in this instance we don't care what the statement is, hence simple calling _select 1 frm dual_.
3. The ON brings back our actually query, in this case I want to see if I have user _john.smith_ with Group ID of _5_
4. The rest is pretty straight forward, if it's MATCHED then do an update, if not the record isn't there so do an insert. 

[View original on the Wayback Machine](https://web.archive.org/web/20161017025120/http://netawakening.azurewebsites.net/page/7/) 