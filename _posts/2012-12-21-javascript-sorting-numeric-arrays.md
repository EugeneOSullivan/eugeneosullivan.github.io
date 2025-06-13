---
layout: post
title: "Javascript: Sorting Numeric Arrays"
date: 2012-12-21
categories: [Web Development]
tags: [JavaScript, Arrays, Sorting]
description: "How to implement custom sorting on a numeric array in JavaScript using the sort function and a comparator."
---

It's quite easy to implement custom sorting on an int array in JavaScript. Take the example below, which will take an array of numbers and sort high to low:

```javascript
var numList = [3,7,5,8];
numList.sort(function (a, b) { return (b - a); });
// Output: [8,7,5,3]
```

As you can see, the `sort` function of array can take an anonymous function for sorting left/right.

---

*Posted in: Javascript / Tagged: Javascript*

---

*Note: This post was salvaged from my old blog at [netawakening.azurewebsites.net](https://web.archive.org/web/20161016223910/http://netawakening.azurewebsites.net/page/3/) via the Wayback Machine.* 