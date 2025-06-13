---
layout: post
title: "JQuery Fix for IE Ajax Caching issue"
date: 2012-11-27
categories: [Web Development]
tags: [JavaScript, JQuery, AJAX, Internet Explorer]
description: "How to prevent AJAX caching issues in Internet Explorer using jQuery's ajaxSetup method."
---

Internet Explorer is notorious for caching AJAX requests, which can cause issues when you expect fresh data from the server. To prevent this, you can use jQuery's `ajaxSetup` method to globally disable caching for all AJAX requests:

```javascript
$.ajaxSetup({ cache: false });
```

This simple line ensures that every AJAX request will bypass the cache and fetch fresh data from the server.

---

*Posted in: Javascript, JQuery / Tagged: JQuery*

---

*Note: This post was salvaged from my old blog at [netawakening.azurewebsites.net](https://web.archive.org/web/20170112030327/http://netawakening.azurewebsites.net/page/4/) via the Wayback Machine.* 