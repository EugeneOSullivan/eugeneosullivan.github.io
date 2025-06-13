---
layout: post
title: "Revealing Module Pattern"
date: 2012-08-19
author: Eugene
categories: [Design Patterns, Javascript, JQuery]
tags: [Design Patterns, Javascript, JQuery]
---

A really handy design pattern for cleaning up your Javascript is the Revealing Module Pattern, as variables in Javascript are global by default this is a great way to create a OO style class with private variables and functions.

In this case the function can be treated as our class initializer.

```js
var myNamespace = function(){

}();
```

Having (); at the end of our function creation automatically instantiates it so that we can call it, almost like a static class.

```js
var myNamespace = function () {

    //private variable
    var MyVariable = "The Value";

    //Private function
    MyFunction = function () {
        //Do stuff ...
    };

} ();
```

However, this is no good to us yet, we need to make the variables or functions we want public. As this is a function we can do this by returning them.

```js
var myNamespace = function () {

    //private variable
    var MyPrivateVariable = "The Value";

    //Private function
    MyPrivateFunction = function () {
        //Do stuff ...
    };

    //public variable
    var MyPublicVariable = "The Value";

    //Public function
    MyPublicFunction = function () {
        //Do stuff ...
    };

    return {
        //Set public function by setting return values.
        MyPublicVariable : MyPublicVariable,
        MyPublicFunction : MyPublicFunction
    };
} ();
```

We now have a very neat way to call various functions within OO style namespace. You can call it as below..

```js
$(function () {
    $("#btnClickableButton").click(function () {
        myNamespace.MyPublicFunction();
    });
});
```

Here's a basic untested example to help give you an idea how it's used.

```js
var feedback = function () {

    var defaultType = "Warning: ";

    Error = function (message) {
        CallLog(message, "Error: ");
    };

    Alert = function (message) {
        CallLog(message, "Alert: ");
    };

    Warning = function (message) {
        CallLog(message);
    };

    //private function
    function CallLog(message, type) {
        if (type) {
            console.log(type + message);
        }
        else {
            console.log(defaultType + message);
        }
    }

    return {
        //Set public function by setting return values.
        Error: Error,
        Alert: Alert,
        Warning: Warning
    };
} ();

feedback.Warning("Some Text");
```

Fantastic link for Javascript design patterns here. 

[View original on the Wayback Machine](https://web.archive.org/web/20161017025120/http://netawakening.azurewebsites.net/page/7/)