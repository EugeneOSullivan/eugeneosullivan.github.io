---
layout: post
title: "Applying Grouping in an ASP.NET ListView"
date: 2013-03-12
categories: [Web Development]
tags: [C#, ASP.NET, Data Binding]
description: "A detailed guide to implementing grouped items in ASP.NET WebForms using nested ListViews, with complete code examples for both the ASPX page and code-behind."
---

When implementing a grouped items list in ASP.NET WebForms, one effective approach is to nest a ListView inside another ListView and use the DataSource to specify the grouping. Here's a complete implementation:

### ASPX Page
```aspx
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Grouping.aspx.cs" Inherits="Cas.Web.Grouping" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ListView ID="lstProductsListView" runat="server">
            <LayoutTemplate>
                <div class="grid">
                    <table id="products">
                        <tr class="header">
                            <th>Product Id</th>
                            <th>Product Name</th>
                            <th>ListPrice</th>
                        </tr>
                        <tr id="itemPlaceHolder" runat="server"></tr>
                    </table>
                </div>
            </LayoutTemplate>
            <ItemTemplate>
                <tr id="row" runat="server" class="group">
                    <th class="first"></th>
                    <th colspan="2"><%# Eval("GroupName") %> 
                    (<%# Eval("Count") %> Count)</th>
                </tr>

                <asp:ListView ID="lstProducts" runat="server" 
                                  DataSource='<%# Eval("Items") %>'>
                    <LayoutTemplate>
                        <tr id="itemPlaceHolder" runat="server"></tr>
                    </LayoutTemplate>
                    <ItemTemplate>
                        <tr id="row" runat="server" class="items">
                            <td><%# Eval("ProductId") %></td>
                            <td><%# Eval("ProductName") %></td>
                            <td><%# Eval("ListPrice") %></td>
                        </tr>
                    </ItemTemplate>
                </asp:ListView>
            </ItemTemplate>
        </asp:ListView>
    </form>
</body>
</html>
```

### Code Behind
```csharp
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cas.Web
{
    public partial class Grouping : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var result = new List<ListGroup<MyProduct>>()
            {
                new ListGroup<MyProduct>()
                {
                    GroupName = "Group 1",
                    Count = 3,
                    Items = new List<MyProduct>()
                            {
                                new MyProduct{
                                    ProductId = "1",
                                    ProductName = "Test1",
                                    ListPrice = 4
                                },
                                new MyProduct{
                                    ProductId = "2",
                                    ProductName = "Test2",
                                    ListPrice = 6
                                },
                                new MyProduct{
                                    ProductId = "3",
                                    ProductName = "Test3",
                                    ListPrice = 8
                                }
                            }
                },
                new ListGroup<MyProduct>()
                {
                    GroupName = "Group 2",
                    Count = 3,
                    Items = new List<MyProduct>()
                            {
                                new MyProduct{
                                    ProductId = "1",
                                    ProductName = "Test4",
                                    ListPrice = 4
                                },
                                new MyProduct{
                                    ProductId = "2",
                                    ProductName = "Test5",
                                    ListPrice = 6
                                },
                                new MyProduct{
                                    ProductId = "3",
                                    ProductName = "Test6",
                                    ListPrice = 8
                                }
                            }
                }
            };

            lstProductsListView.DataSource = result;
            lstProductsListView.DataBind();
        }
    }

    public class ListGroup<T>
    {
        public string GroupName { get; set; }
        public int Count { get; set; }
        public List<T> Items { get; set; }
    }

    public class MyProduct
    {
        public string ProductId { get; set; }
        public string ProductName { get; set; }
        public decimal ListPrice { get; set; }
    }
}
```

### Implementation Notes

1. The outer ListView (`lstProductsListView`) handles the groups, while the inner ListView (`lstProducts`) displays the items within each group.

2. The `ListGroup<T>` class provides a flexible way to structure grouped data:
   - `GroupName`: The name of the group
   - `Count`: Number of items in the group
   - `Items`: List of items in the group

3. The ASPX page uses nested templates:
   - The outer ListView's ItemTemplate contains the group header and the inner ListView
   - The inner ListView's ItemTemplate defines how individual items are displayed

4. Data binding is handled in the code-behind:
   - Create a list of `ListGroup<MyProduct>`
   - Populate each group with its items
   - Bind the data to the outer ListView

This approach provides a clean and maintainable way to implement grouped data display in ASP.NET WebForms. The separation of concerns between the presentation layer (ASPX) and the data layer (code-behind) makes the code easy to understand and modify.

Note: This post was salvaged from my old blog at [netawakening.azurewebsites.net](https://web.archive.org/web/20161002115118/http://netawakening.azurewebsites.net/) via the Wayback Machine. 