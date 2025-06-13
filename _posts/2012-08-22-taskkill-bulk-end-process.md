---
layout: post
title: "TaskKill: Bulk End Process in Task Manager"
date: 2012-08-22
author: Eugene
categories: [Windows]
tags: [Windows]
---

A very neat command line tool I was not aware of is TaskKill. I've recently been having an issue with an automated task in Open Office causing the soffice.bin file to stall and cause a massive backup in Task Manager processes. Up until now I was manually right clicking to end process but this tool makes the task a lot easier.

In CMD window:

```dos
C:\>taskkill /?

TASKKILL [/S system [/U username [/P [password]]]]
         { [/FI filter] [/PID processid | /IM imagename] } [/T] [/F]

Description:
    This tool is used to terminate tasks by process id (PID) or image name.

C:\>TASKKILL /F /IM notepad.exe /T
```

The line above will kill off all instances of notepad.exe

* **/F** – Force the killing of the process, I don't want to be alerted of unsaved items
* **/IM** – Image name, use the image name to delete rather than process id etc.
* **/T** – Kill all child processes too. 