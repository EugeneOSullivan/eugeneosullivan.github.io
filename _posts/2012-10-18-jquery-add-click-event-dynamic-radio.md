---
layout: post
title: "Jquery: Add click event to dynamically created radio elements"
date: 2012-10-18
categories: [Web Development]
tags: [JavaScript, JQuery, DOM, Events]
description: "How to add click events to radio elements created dynamically using jQuery."
---

If you're dynamically creating radio elements in your page, you need to ensure that click events are properly bound. Here's how you can do it using jQuery's `.on()` method:

```javascript
$(document).on('click', 'input[type=radio][name=dynamicRadio]', function() {
    // Your event handler code here
    alert('Radio button clicked: ' + $(this).val());
});
```

This approach ensures that even radio buttons added after the DOM is loaded will have the click event bound.

---

*Posted in: Javascript, JQuery / Tagged: JQuery*

---

*Note: This post was salvaged from my old blog at [netawakening.azurewebsites.net](https://web.archive.org/web/20170112012148/http://netawakening.azurewebsites.net/page/5/) via the Wayback Machine.* 