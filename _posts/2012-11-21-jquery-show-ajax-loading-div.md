---
layout: post
title: "JQuery: Show ajax loading div"
date: 2012-11-21
categories: [Web Development]
tags: [JavaScript, JQuery, AJAX, UI]
description: "How to show and hide a loading graphic during AJAX requests using jQuery's ajaxStart and ajaxStop."
---

If you're using AJAX calls in your applications, then a nice feature to have is a loading graphic or animated gif. jQuery has a neat catch-all solution to this:

```javascript
$(document).ready(function () {
    $('#loading_div').hide().ajaxStart(function () {
        $(this).show();
    }).ajaxStop(function () {
        $(this).hide();
    });
});
```

Where the `loading_div` contains an animated GIF and the CSS centers it on the screen.

---

*Posted in: Javascript, JQuery / Tagged: JQuery*

---

*Note: This post was salvaged from my old blog at [netawakening.azurewebsites.net](https://web.archive.org/web/20170112030327/http://netawakening.azurewebsites.net/page/4/) via the Wayback Machine.* 