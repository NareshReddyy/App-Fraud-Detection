<%
					  String cname=(String)session.getAttribute("cname");
					  if(cname ==null)
					  {
							response.sendRedirect("index.jsp?id=exp");
					  }

%>