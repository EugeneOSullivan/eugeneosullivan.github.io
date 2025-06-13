---
layout: post
title: "Oracle Savepoint"
date: 2012-09-12
author: Eugene
categories: [Oracle, SQL, Toad]
tags: [Oracle, Quick Tip, SQL, Toad]
---

It's inevitable that sometimes sql scripts and stored procs can run away with themselves and get quiet complicated. A really handy feature to Rollback a script to a certain point if there's been a failure or condition not met is to use the Savepoint keyword.

I'll show a quick example in the context of a stored proc.

```sql
CREATE OR REPLACE PROCEDURE SAVETOMULTIPLETABLES 
        (iUpdateID IN NUMBER)
IS

BEGIN

    --This statement will always get executed
    update TABLE1 SET IsUpdated = TRUE WHERE ID = iUpdateID;

    --Set my savepoint, the procedure will be rolledback to here
    savepoint my_savepoint;

    INSERT INTO TABLE2 .....;    
    IF(TABLE2 HAS VALUE) THEN
        UPDATE TABLE3 ......;
    ELSE
        --Table2 or Table3 won't be changed.
        ROLLBACK TO my_savepoint;
    END IF;

    --Commit what has been executed
  COMMIT;

END SAVETOMULTIPLETABLES;
/
```

Here are two great links to display more information on this: [dba-oracle](https://www.dba-oracle.com/t_savepoint.htm) and [Stack Overflow](https://stackoverflow.com/questions/109273/what-is-a-savepoint-in-oracle). 