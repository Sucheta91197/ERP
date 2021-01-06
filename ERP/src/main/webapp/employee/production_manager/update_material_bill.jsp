<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page
	import="com.erp.entites.BillOfMaterial,com.erp.dao.BillOfMaterialDao,java.util.*,java.text.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<jsp:include page="../link.jsp"></jsp:include>

</head>
<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">
		<jsp:include page="../topMenu.jsp"></jsp:include>
		<jsp:include page="../sideMenu.jsp"></jsp:include>
		<div class="content-wrapper">
			<div class="content-header">
				<div class="container-fluid">
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
						<!-- left column -->
						<div class="col-md-8">
							<!-- general form elements -->
							<div class="card card-primary">
								<div class="card-header">
									<h3 class="card-title">Update Material Bill</h3>
								</div>
								<!-- /.card-header -->
								<!-- form start -->
								<form action="update_material_bill" method="post">

									<%
										if (request.getParameter("accessoriesId") != null) {
											int accessoriesId = Integer.parseInt(request.getParameter("accessoriesId"));
											BillOfMaterial billOfMaterial = BillOfMaterialDao.getBillOfMaterial(accessoriesId);
									%>
									<div class="card-body">
										<div class="row">
											<div class="col-sm-6">
												<div class="form-group">

													<input type="hidden" class="form-control"
														placeholder="enter accessories name"
														name="accessoriesId"
														value="<%=billOfMaterial.getAccessoriesId()%>">
													<label>Accessories Name</label> <input type="text"
														class="form-control" placeholder="enter accessories name"
														name="accessoriesName"
														value="<%=billOfMaterial.getAccessoriesName()%>">
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group">
													<label>Plant Name</label> <input type="text"
														class="form-control" placeholder="enter plant name"
														name="plantName"
														value="<%=billOfMaterial.getPlantName()%>">
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-sm-6">
												<div class="form-group">
													<label>Start Date</label> <input type="date"
														class="form-control" name="startDate"
														value="<%=billOfMaterial.getStartDate()%>">
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group">
													<label>End Date</label> <input type="date"
														class="form-control" name="endDate"
														value="<%=billOfMaterial.getEndDate()%>">
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-sm-6">
												<!-- radio -->
												<label>Accessories Availability</label>

												<c:set var="availability"
													value="<%=billOfMaterial.getAvailability()%>"></c:set>
												<div class="form-group">
													<div class="form-check">
														<input class="form-check-input" type="radio"
															name="accessoriesAvailability" value="active"
															<c:if test="${availability=='active'}">checked</c:if>>
														<label class="form-check-label">active</label>
													</div>
													<div class="form-check">
														<input class="form-check-input" type="radio"
															name="accessoriesAvailability" value="inactive"
															<c:if test="${availability=='inactive'}">checked</c:if>>
														<label class="form-check-label">inactive</label>
													</div>

												</div>
											</div>
										</div>


									</div>
									<!-- /.card-body -->
									<%
										}
									%>
									<div class="card-footer">
										<button type="submit" class="btn btn-primary">Submit</button>
									</div>

								</form>
							</div>
							<!-- /.card -->

						</div>
						<!--/.col (left) -->
					</div>
				</div>
			</section>
		</div>
		<jsp:include page="../footer.jsp"></jsp:include>
	</div>

	<jsp:include page="../script.jsp"></jsp:include>
</body>
</html>
