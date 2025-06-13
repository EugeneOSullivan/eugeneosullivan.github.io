---
layout: post
title: ".Net 4.0 ThrowIfMaxHttpCollectionKeysExceeded Issue"
date: 2012-08-31
author: Eugene
categories: [.Net, C#, Visual Studio]
tags: [.Net, C#, Visual Studio]
---

I got a bug through on one of our applications the other day, the user said the system kept on crashing on them. When I checked the error log the inner exception coming through was

```
System.Web.HttpValueCollection.ThrowIfMaxHttpCollectionKeysExceeded()
```

Now the form has a lot of dynamic fields in it and has the capacity to get quiet big. What I hadn't realised was that a form is limited to 1000 fields for submission currently. This was a update to .Net 4, you can read more [here](https://learn.microsoft.com/en-us/dotnet/framework/migration-guide/mitigation-request-validation) if that interests you. Anyway the fix is to extend the MaxHttpCollectionKeys value in the web.config appSettings as below:

```xml
<add key="aspnet:MaxHttpCollectionKeys" value="2000" />
```

And now the form can have up to 2000 fields. Problem solved. 