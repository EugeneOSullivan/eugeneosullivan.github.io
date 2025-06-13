---
layout: post
title: "Oracle PL/SQL Date Manipulation"
date: 2014-05-15
categories: [Database]
tags: [Oracle, PL/SQL, Date Functions]
description: "A comprehensive guide to date manipulation functions in Oracle PL/SQL, with practical examples for common date operations."
---

Here are some handy date manipulation functions available for dates in PL/SQL:

### Convert String to Date
```sql
select to_date('21-01-2014','dd-mm-yy') from dual;
```

### Convert Time to Midnight
Converts a date with time to midnight (e.g., 01-01-2014 16:30 becomes 01-01-2014 00:00)
```sql
select trunc(sysdate) from dual;
```

### Get Day of Week
Get the day of the week as a number (Monday=1, Tuesday=2)
```sql
select to_char(sysdate, 'D') from dual;
```

### Add Days to Date
```sql
select sysdate + 7 from dual;
```

### Add Months to Date
```sql
select add_months(sysdate, 2) from dual;
```

### Extract Date Components
Get the day part of a date:
```sql
select extract(day from sysdate) from dual;
```

Get the month part of a date:
```sql
select extract(month from sysdate) from dual;
```

### Get Next Specific Day
Get the next specific day from a date (e.g., the next Monday after today's date):
```sql
select next_day(sysdate, 'Monday') from dual;
```

### Get Last Day of Month
Get the last day of the date's calendar month:
```sql
select last_day(Sysdate) from dual;
```

These functions are essential for date manipulation in Oracle PL/SQL and can be combined to perform more complex date calculations. The `to_date` and `to_char` functions are particularly useful for converting between different date formats, while `trunc` and `extract` are great for working with specific parts of dates. 

Note: This post was salvaged from my old blog at [netawakening.azurewebsites.net](https://web.archive.org/web/20161002115118/http://netawakening.azurewebsites.net/) via the Wayback Machine. 