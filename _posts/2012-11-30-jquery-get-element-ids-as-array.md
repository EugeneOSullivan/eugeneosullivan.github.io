---
layout: post
title: "JQuery: get element ids as array"
date: 2012-11-30
categories: [Web Development]
tags: [JavaScript, JQuery, DOM]
description: "How to get the collection of element IDs from an unordered list using jQuery and map()."
---

I needed to get the collection of IDs in an unordered list in order to use this to update the database. The code below worked nicely:

```javascript
var IDs = $("#ullist li")
               .map(function () { return this.id; })
               .get();
```

I'll explain briefly by line:

1. Get the `li` elements of my `ul`.
2. `map` traverses each element returned and in this case I return the ID of each element.
3. `get` returns a JSON array. It can be used with full elements etc. In this instance as I've used the map it simply returns an array of IDs.

---

*Posted in: Javascript, JQuery / Tagged: Javascript, JQuery*

---

*Note: This post was salvaged from my old blog at [netawakening.azurewebsites.net](https://web.archive.org/web/20161016223910/http://netawakening.azurewebsites.net/page/3/) via the Wayback Machine.* 