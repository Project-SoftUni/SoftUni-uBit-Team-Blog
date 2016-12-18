<%@ Page language="C#" %>
<%@ Register Tagprefix="Search" Namespace="SiteSearchASP.NET.Interface" assembly="SiteSearchASP.NET" %>
<%@ Import namespace="SiteSearchASP.NET.Interface" %>
    <%--<link rel="stylesheet" type="text/css" href="searchCss.css" />--%>
<html>

<head>
    <script src="Scripts/bootstrap.js" type="text/javascript"></script>
    <script src="Scripts/bootstrap.min.js" type="text/javascript"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />
 <style type="text/css">
 <!--
  body { margin-left: 200px
  }
  td { font-size: 20px;}
 -->
 </style>

</head>
<body bgcolor="#c6efff" text="#000000">


<form id="Form1" runat="server">

<div style="width:800"> 

    <p style="margin-left: 40px">
    </p>

  </div>
    <div style="width:800"> 

        <p style="margin-left: 40px">
            &nbsp;</p>
        <p style="margin-left: 40px">
            <span style="color:#CB8623;font-size:25px; margin-left: 160px;"><b>Search Blog Pages:</b></span><br><br>

        </p>

   <table border="0" cellpadding="2" cellspacing="2">
    <tr>
     <td><input type="text" id="SearchTerm" runat="server" size="30" ></td>
     <td>
      <select id="SearchType" runat="server"> 
       <option value="all">All words</option>
       <option value="exact">Exact Phrase</option>
       <option value="any">Any words</option>
      </select>
      <select id="SearchArea" runat="server"> 
       <option value="">All Areas</option>
      </select>
     </td>
     <td><input type="submit" value="Search"></td>
    </tr>
   </table> <br><br>
     

  <Search:InformationWhenSearchNotRan runat="server">

    Please enter search term above.<br><br>

        </Search:InformationWhenSearchNotRan>

  
  <Search:InformationWhenSearchRan runat="server">

    Searching for '<%#Search.Render(Page, "SearchTerm")%>' found <%#Search.Render(Container, "PageCount")%> pages.<br><br>

        </Search:InformationWhenSearchRan>


  <ASP:DataGrid 
   id="ResultsDataGrid" Runat="Server"
   PagerStyle-Mode="NumericPages" 
   PagerStyle-HorizontalAlign="Right"
   PageSize="10" 

   CellPadding = 10
   BorderWidth = 0
   CellSpacing = 3
   ShowHeader = true
   AllowPaging = true
   AutoGenerateColumns = false   
  >
   <Columns>
    <ASP:TemplateColumn>
     <ItemTemplate>

		<a href='<%# Search.Render(Container,"PageUrl") %>'><b><%#Search.Render(Container, "PageTitle")%></b></a> 	

		<%#Search.Render(Container, "PagecontentSummary")%><br>
		

     </ItemTemplate>
    </ASP:TemplateColumn>
   </Columns>
  </ASP:DataGrid>

  <br><br>

  <Search:Settings
   
	runat="server"

	ResultsControl    ="ResultsDataGrid"
	SearchAreaControl ="SearchArea"
	SearchTermControl ="SearchTerm"
	SearchTypeControl ="SearchType"
	
	LicenseCode=""
	
	Debug="false" 
	
	HighlightFoundTermPrefix="<span style='background-color:#FFCC33'>"
	HighlightFoundTermSuffix="</span>"
	
  />

  </div>

 </form>

</body>
</html>