---
layout: post
title: "JQuery Intellisense in Visual Studio"
date: 2012-08-19
author: Eugene
categories: [Javascript, JQuery, Quick Tip, Visual Studio]
tags: [Javascript, Quick Tip, Visual Studio]
---

It's simple to get JQuery Intellisense in visual studio and two situations where you'd want it.

**Webpages** (html, aspx etc.)

1. Ensure you have the jquery vsdoc file in your project scripts folder.  
   1. Right click on project  
   2. Manage Nuget packages  
   3. Install latest version of JQuery
2. Simply include a reference to this file in your header as below

```html
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <script src="Scripts/jquery-1.8.0.min.js"></script>
    <script src="Scripts/jquery-ui-1.8.23.min.js"></script>
    <script src="Scripts/jquery-1.8.0-vsdoc.js"></script>
</head>
```

**Javascript Files**

Add the following file to the top of your JS file, ensure it's at the very start of the file and not below a date or comment or it won't work. (You can just drag it onto the open file from solution explorer)

```js
/// <reference path="jquery-1.8.0-vsdoc.js" />

/* Some comments */
$(function () {
    //My Code
});
```

Intellisense 

[View original on the Wayback Machine](https://web.archive.org/web/20161017025120/http://netawakening.azurewebsites.net/page/7/) 