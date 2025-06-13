---
layout: post
title: "Javascript Disable Autocomplete/Autofill"
date: 2013-04-18
categories: [Web Development]
tags: [JavaScript, Forms, Browser]
description: "Various methods to disable browser autocomplete and autofill features in web forms using HTML attributes and JavaScript."
---

To disable autocomplete/autofill in a form or input field, you can use a combination of HTML attributes and JavaScript. Here are several approaches:

### HTML Attribute Method
The simplest way is to use the `autocomplete` attribute:

```html
<input type="text" autocomplete="off" />
```

Or for an entire form:
```html
<form autocomplete="off">
    <!-- form fields -->
</form>
```

### JavaScript Method
For more control, you can use JavaScript to disable autocomplete:

```javascript
// Disable autocomplete for a specific input
document.getElementById('myInput').setAttribute('autocomplete', 'off');

// Disable autocomplete for all inputs in a form
var inputs = document.getElementsByTagName('input');
for (var i = 0; i < inputs.length; i++) {
    inputs[i].setAttribute('autocomplete', 'off');
}
```

### Additional Techniques
Some browsers might still try to autofill fields. Here are some additional techniques to prevent this:

1. Use a random name attribute:
```html
<input type="text" name="random_name_123" autocomplete="off" />
```

2. Add a hidden dummy field:
```html
<input type="text" style="display:none" />
<input type="text" autocomplete="off" />
```

3. Use a readonly attribute that gets removed on focus:
```html
<input type="text" readonly onfocus="this.removeAttribute('readonly')" />
```

### Best Practices
- Use the `autocomplete` attribute as the primary method
- Consider user experience - only disable autocomplete when necessary
- Test across different browsers as behavior may vary
- For sensitive fields, consider using additional security measures
- Remember that some browsers may ignore these settings for security reasons

Note: Modern browsers may still autofill fields despite these settings, as they prioritize user convenience and security. The most reliable approach is to use a combination of these methods and to clearly communicate to users when autofill is disabled.

Note: This post was salvaged from my old blog at [netawakening.azurewebsites.net](https://web.archive.org/web/20161002115118/http://netawakening.azurewebsites.net/) via the Wayback Machine. 