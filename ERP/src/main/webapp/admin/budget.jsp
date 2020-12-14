<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page
	import="com.erp.entites.Budget,com.erp.dao.BudgetDao,java.util.*,java.text.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<jsp:include page="link.jsp"></jsp:include>

</head>
<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">
		<jsp:include page="topMenu.jsp"></jsp:include>
		<jsp:include page="sideMenu.jsp"></jsp:include>
		<div class="content-wrapper">
			<div class="content-header">
				<div class="container-fluid">
					<c:if test="${ param.add}">
						<div class="alert alert-success alert-dismissible">
							<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
							budget added successfully !
						</div>
					</c:if>
					<c:if test="${ param.update}">
						<div class="alert alert-success alert-dismissible">
							<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
							budget updated successfully !
						</div>
					</c:if>

					<c:if test="${ param.delete}">
						<div class="alert alert-success alert-dismissible">
							<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
							budget deleted successfully !
						</div>
					</c:if>
					<c:if test="${ param.error}">
						<div class="alert alert-danger alert-dismissible">
							<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
							error occured !
						</div>
					</c:if>
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0 text-dark">Dashboard</h1>
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</div>
			<section class="content">
				<div class="container-fluid">
					<!-- content of code -->
					<div class="row">
						<div class="col-12">

							<div class="card">
								<div class="card-header">
									<div class="row">
										<div class="col-sm-10">
											<h3 class="card-title">Budget</h3>
										</div>
										<div class="col-sm-2">
											<a href="addbudget.jsp"><button type="button"
													class="btn btn-block btn-primary btn-sm">Add
													Budget</button></a>
										</div>
									</div>
								</div>
								<!-- /.card-header -->
								<div class="card-body">
									<table id="example1" class="table table-bordered table-striped">
										<thead>
											<tr>
												<th>Budget Id</th>
												<th>Budget Name</th>
												<th>Department</th>
												<th>Gross Budget</th>
												<th>Status</th>
												<th>Date Of Approval</th>
												<th>Action</th>
												<th>Action</th>
											</tr>
										</thead>


										<tbody>
											<%
												List<Budget> list = BudgetDao.getAllBudget();
												for (Budget budget : list) {
											%>
											<tr>
												<td><%=budget.getBudgetId()%></td>
												<td><%=budget.getBudgetName()%></td>
												<td><%=budget.getDepartment()%></td>
												<td><%=budget.getGrossBudget()%></td>
												<td><%=budget.getStatus()%></td>
												<td><%=budget.getDateOfapproval()%></td>
												<td><a
													href="updatebudget.jsp?budgetid=<%=budget.getBudgetId()%>"><button
															type="button" class="btn btn-block btn-secondary">Update</button></a></td>
												<td><a
													href="deletebudget?budgetid=<%=budget.getBudgetId()%>"><button
															type="button" class="btn btn-block btn-secondary">Delete</button></a></td>
											</tr>
											<%
												}
											%>

										</tbody>
									</table>
								</div>
								<!-- /.card-body -->
							</div>
							<!-- /.card -->
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->

				</div>
			</section>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>

	<jsp:include page="script.jsp"></jsp:include>

</body>
</html>
