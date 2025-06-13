---
layout: post
title: "ColorBox: Call function onClosed"
date: 2012-11-21
categories: [Web Development]
tags: [JavaScript, JQuery, ColorBox, UI]
description: "How to use the onClosed callback in the ColorBox jQuery plugin to trigger actions after a popup closes."
---

A very handy feature of the ColorBox plugin for jQuery is `onClosed`, allowing you to call a function to, say, rebind a grid when you've finished your popup activity.

Example:

```javascript
// Show Popup
$.colorbox({
    width: "500px", height: "80%",
    opacity: "0.5",
    iframe: true,
    href: '@Url.Action("GetForm", "Admin")?id=' + Id,
    onClosed: function () {
        // Rebinds my grid
        BindGrid();
    }
});
```

---

*Posted in: Javascript, JQuery, Quick Tip / Tagged: Javascript, JQuery*

---

*Note: This post was salvaged from my old blog at [netawakening.azurewebsites.net](https://web.archive.org/web/20170112030327/http://netawakening.azurewebsites.net/page/4/) via the Wayback Machine.* 