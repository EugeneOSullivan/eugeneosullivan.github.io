---
layout: post
title: "Oracle Trigger: Stop field being updated"
date: 2012-08-21
author: Eugene
categories: [Oracle, Quick Tip, SQL, Toad]
tags: [Oracle, SQL, Toad]
---

So an unusual requirement popped up recently. A 3rd party data update was being applied to one of our data tables which was causing issues. Basically, despite the fact we needed the data sometimes an update happened on certain row overwriting our correct data with incorrect data. We wanted to disable this without the update job being stopped or interrupted.

The solution was to create a trigger as below:

```sql
CREATE OR REPLACE TRIGGER STOP_STATUS_UPDATE_TGR
BEFORE UPDATE
OF UserStatus
ON MyUserTable
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
BEGIN
    IF (UPPER(:new.UserStatus) = UPPER('UGLYSTATUS')) THEN 
        :new.UserStatus := :old.UserStatus;
    END IF; 
END;
/
```

Pretty straightforward but very handy I'll quickly explain.

1. We want to call this Before the row is updated.
2. Using the OF keyword we specify the table field.
3. We now use the REFERENCING to create a reference to the new values we're using the update, and the old values in the row before update.
4. If the new field value is not what we want, set the new value to be the old value and so our data doesn't get skewed. 

---

[View original on the Wayback Machine](https://web.archive.org/web/20161017025120/http://netawakening.azurewebsites.net/page/7/) 