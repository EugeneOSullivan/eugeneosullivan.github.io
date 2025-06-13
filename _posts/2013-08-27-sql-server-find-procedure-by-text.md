---
layout: post
title: "SQL Server: Find Procedure by Text"
date: 2013-08-27
categories: [Database]
tags: [SQL Server, T-SQL, Database Administration]
description: "Learn how to search for stored procedures, functions, and views in SQL Server by their text content using system views and dynamic SQL."
---

To find a stored procedure by its text content in SQL Server, you can use the following query:

```sql
SELECT DISTINCT
    o.name AS Object_Name,
    o.type_desc
FROM sys.sql_modules m
INNER JOIN sys.objects o ON m.object_id = o.object_id
WHERE m.definition LIKE '%search_text%'
```

This query searches through all stored procedures, functions, and views in the current database for the specified text. The `%` wildcards allow for partial matches.

For example, to find all procedures containing the word "customer":
```sql
SELECT DISTINCT
    o.name AS Object_Name,
    o.type_desc
FROM sys.sql_modules m
INNER JOIN sys.objects o ON m.object_id = o.object_id
WHERE m.definition LIKE '%customer%'
```

The query returns:
- `Object_Name`: The name of the stored procedure, function, or view
- `type_desc`: The type of object (e.g., "SQL_STORED_PROCEDURE", "SQL_SCALAR_FUNCTION", "VIEW")

This is particularly useful when you need to:
- Find procedures that reference specific tables or columns
- Locate procedures that contain certain business logic
- Audit database objects for specific functionality
- Clean up or refactor database code

Note that the search is case-insensitive by default in SQL Server. If you need case-sensitive searches, you can use the `COLLATE` clause with an appropriate collation.

Note: This post was salvaged from my old blog at [netawakening.azurewebsites.net](https://web.archive.org/web/20161002115118/http://netawakening.azurewebsites.net/) via the Wayback Machine. 