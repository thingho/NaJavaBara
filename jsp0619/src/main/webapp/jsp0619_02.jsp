<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!  //전역변수로 선언했기 떄문에 !를 넣어줌
	Context context = null;
	DataSource dataSource = null;
	Connection conn = null; 
	PreparedStatement pstmt;
	ResultSet rs;  
	
	int empno;
	String ename;
	String job;
	int mgr;
	String hiredate;
	double sal;
	double comm;
	int deptno;
	
	String query;
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>employee list</title>
		<style>
			table,th,td{border:1px solid black; border-collapse: collaspe;}
		</style>
	</head>
	<body>
		<h2>직원 리스트</h2>
		<table>
		  <tr>
		  	<th>직원번호</th>
		  	<th>이름</th>
		  	<th>직급</th>
		  	<th>관리자</th>
		  	<th>입사일</th>
		  	<th>월급</th>
		  	<th>인센티브</th>
		  	<th>부서번호</th>
		  </tr>
		<%
			try{
				//중요함
				context = new InitialContext();
		    	dataSource = (DataSource) context.lookup("java:comp/env/jdbc/Oracle11g");
		    	conn = dataSource.getConnection();
				query = "select * from emp order by empno desc";				
				pstmt = conn.prepareStatement(query);
				
				rs = pstmt.executeQuery();
				
				while(rs.next()){ //5명의 데이터가 존재
					empno = rs.getInt("empno");
					ename = rs.getString("ename");
					job = rs.getString("job");
					mgr = rs.getInt("mgr");
					hiredate = rs.getString("hiredate");
					sal = rs.getDouble("sal");
					comm = rs.getDouble("comm");
					deptno = rs.getInt("deptno");
					
					//out.println("empno : "+empno+", ename : "+ename+", job : "+job+", mgr : "+mgr+", hiredate : "+hiredate+", sal : "+sal+", comm : "+comm+", deptno : "+deptno+"<br>");
					%>
					<!--html 태그-->
					<tr>
					  <td><%=empno %></td>
					  <td><%=ename %></td>
					  <td><%=job %></td>
					  <td><%=mgr %></td>
					  <td><%=hiredate %></td>
					  <td><%=sal %></td>
					  <td><%=comm %></td>
					  <td><%=deptno %></td>
					</tr>
					
				<%
				}//while
				
				
			}catch(Exception e){
				e.printStackTrace();
			}finally{
				try{
					if(rs!=null) rs.close();
					if(pstmt!=null) pstmt.close();
					if(conn!=null) conn.close();
				
				}catch(Exception e2){
					e2.printStackTrace();
				}
			}
			
		%>
		</table>
	</body>
</html>