---
layout: post
title: "Convert String to Enum and Enum to string using Generic"
date: 2012-12-07
categories: [Software Development]
tags: [C#, .NET, Enum, Generics]
description: "How to convert between strings and enums in C# using generic static methods."
---

Too long since I did a C# post! Recently I was faced with a requirement to use an enum in code but save it as a string in the database. Rather than do implicit conversions every time this change was required, I use generics instead. See below:

```csharp
private static T ToEnum<T>(string value)
{
    return (T) Enum.Parse(typeof(T), value, true);
}

private static string EnumToString<T>(T enumValue)
{
    Type typeParameterType = typeof(T);
    return Enum.GetName(typeParameterType, enumValue);
}
```

Pretty straightforward: I create two static generic methods taking type of T. In `ToEnum` I use the `Enum.Parse` method to parse the string to Type T of Enum. In `EnumToString` I get the type of T and use that to getName. These methods are basic and could be improved with proper checks.

---

*Posted in: .Net, C#*

---

*Note: This post was salvaged from my old blog at [netawakening.azurewebsites.net](https://web.archive.org/web/20161016223910/http://netawakening.azurewebsites.net/page/3/) via the Wayback Machine.* 