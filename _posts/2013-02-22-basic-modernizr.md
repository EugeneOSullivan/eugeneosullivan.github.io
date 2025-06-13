---
layout: post
title: "Basic Modernizr"
date: 2013-02-22
categories: [Web Development]
tags: [JavaScript, JQuery, Modernizr, Feature Detection]
description: "A quick guide to using Modernizr for feature detection in browsers, with an example of adding a datepicker for unsupported input types."
---

Modernizr is an awesome feature detection library that can really get you up and running with features for different browsers. But, I think also it's a bit misunderstood. I've seen it added to a few projects now without being actually used. In that, it was added to the project with the developer (one of them being me) thinking it automatically entered JavaScript shims (i.e. replaces missing features in browsers) – Well, if you did that too, you're **WRONG**.

The key is that it's feature detection. It tells you what's missing so that you can add the shim or whatever. It's best described in code:

Say you have an input decorated with a type of date:

```html
<input id="txtdate" type="date" value="2011-01-01"/>
```

In modern browsers such as Chrome and Opera, they may have built-in HTML5 date controls that pick this up and give you a datepicker. However, older browsers will just give you a blank text box.

What if we want to check if the browser will add a text box and if not use jQuery UI to add a datepicker popup?

 