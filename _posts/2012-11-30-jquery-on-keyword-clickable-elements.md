---
layout: post
title: "JQuery: On Keyword for clickable elements added after DOM is loaded"
date: 2012-11-30
categories: [Web Development]
tags: [JavaScript, JQuery, DOM]
description: "How to use jQuery's .on() method to handle events for dynamically added elements."
---

If you are doing something such as dynamically appending `li`'s to an unordered list but you also wanted to have a remove button, we can do this using the `.on()` keyword. Take for example the following unordered list and button:

```html
<ul id="ullist">
  <!-- dynamically added li elements -->
</ul>
<button id="add">Add Item</button>
```

To handle click events for elements added after the DOM is loaded, use:

```javascript
$(document).on('click', '#ullist li .remove', function() {
    // Remove the clicked item
    $(this).closest('li').remove();
});

$('#add').on('click', function() {
    $('#ullist').append('<li>New Item <span class="remove">Remove</span></li>');
});
```

This ensures that even dynamically created elements will have the click event bound.

---

*Posted in: Javascript, JQuery / Tagged: JQuery*

---

*Note: This post was salvaged from my old blog at [netawakening.azurewebsites.net](https://web.archive.org/web/20170112030327/http://netawakening.azurewebsites.net/page/4/) via the Wayback Machine.* 