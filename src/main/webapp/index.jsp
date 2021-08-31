<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" import="java.util.ArrayList" %>
<%
	String msg=request.getParameter("msg");
%>
<!DOCTYPE html>
<html>
<head>
	<link href="/FoodBox/resources/css/home.css" rel="stylesheet">
	<title>Home</title>
	<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1" >
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@900&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/da37389ee8.js" crossorigin="anonymous"></script>
<style>
	h1
	{
		text-align:center;
		padding:50px;
	}
	#movietable
	{
		height:100%;
		padding:20px 50px;
	}
	table
	{
		width:100%;
	}

</style>
</head>
<body>
	<h1>Movie Table</h1>
	<div id="movietable" >
		<table class="table table-dark">
			<thead>
				<th>Id</th>
				<th>Movie Name</th>
				<th>Actor</th>
				<th>Actress</th>
				<th>Release Date</th>
				<th>Director</th>
			</thead>
			<tbody>
				
				<%
					Class.forName("com.mysql.jdbc.Driver");
					Connection con=DriverManager.getConnection("jdbc:mysql://awsdb.cg2a3l4mwr3i.ap-south-1.rds.amazonaws.com:3306/demoproject","root","rootraja");
					Statement st=con.createStatement();
					ResultSet rs=st.executeQuery("select * from movie_table");
					while(rs.next())
					{
				%>
				<tr>
					<td><%=rs.getString("Id") %></td>
					<td><%=rs.getString("MovieName") %></td>
					<td><%=rs.getString("Actor") %></td>
					<td><%=rs.getString("Actress") %></td>
					<td><%=rs.getString("YearOfRelease") %></td>
					<td><%=rs.getString("Director") %></td>
					<%} %>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>