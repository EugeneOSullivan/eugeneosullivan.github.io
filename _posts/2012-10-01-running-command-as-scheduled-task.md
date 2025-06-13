---
layout: post
title: "Running a command as a scheduled task"
date: 2012-10-01
categories: [Windows, Automation]
tags: [Windows, Scheduled Tasks, Automation, Command Line]
description: "How to run a command or script as a scheduled task in Windows."
---

If you need to run a command or script automatically at a scheduled time in Windows, you can use the built-in Task Scheduler. Here's a quick guide:

1. Open **Task Scheduler** from the Start menu.
2. Click **Create Basic Task**.
3. Give your task a name and description.
4. Choose the trigger (e.g., daily, weekly, at startup).
5. For the action, select **Start a program**.
6. Enter the path to your script or command (e.g., `C:\Scripts\my_script.bat`).
7. Complete the wizard and confirm your settings.

You can also use the `schtasks` command-line tool to create tasks programmatically:

```cmd
schtasks /create /tn "MyTask" /tr "C:\Scripts\my_script.bat" /sc daily /st 09:00
```

This will run `my_script.bat` every day at 9:00 AM.

---

*Posted in: Windows, Automation / Tagged: Windows, Scheduled Tasks, Automation, Command Line*

---

*Note: This post was salvaged from my old blog at [netawakening.azurewebsites.net](https://web.archive.org/web/20170112012148/http://netawakening.azurewebsites.net/page/5/) via the Wayback Machine.* 