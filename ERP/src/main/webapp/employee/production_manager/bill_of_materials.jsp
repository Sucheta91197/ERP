<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ page
	import="com.erp.dao.BillOfMaterialDao,com.erp.entites.BillOfMaterial,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
					<c:if test="${param.add}">
						<div class="alert alert-success alert-dismissible">
							<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
							added sucessfully !
						</div>
					</c:if>
					<c:if test="${param.update}">
						<div class="alert alert-success alert-dismissible">
							<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
							updated sucessfully !
						</div>
					</c:if>

					<c:if test="${ param.delete}">
						<div class="alert alert-success alert-dismissible">
							<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
							deleted sucessfully !
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
											<h3 class="card-title">Bill Of Material</h3>
										</div>
										<div class="col-sm-2">
											<a href="add_material_bill.jsp"><button type="button"
													class="btn btn-block btn-primary btn-sm">Add
													MaterialBill</button></a>
										</div>
									</div>
								</div>
								<!-- /.card-header -->
								<div class="card-body">
									<table id="example1" class="table table-bordered table-striped">
										<thead>
											<tr>
												<th>Accessories Name</th>
												<th>Plant Name</th>
												<th>Start Date</th>
												<th>End Date</th>
												<th>Availability</th>
												<th>Action</th>
												<th>Action</th>
											</tr>
										</thead>


										<tbody>
											<%
												List<BillOfMaterial> billOfMaterials = BillOfMaterialDao.getAllBillOfMaterial();
												for (BillOfMaterial billOfMaterial : billOfMaterials) {
											%>
											<tr>
												<td><%=billOfMaterial.getAccessoriesName()%></td>
												<td><%=billOfMaterial.getPlantName()%></td>
												<td><%=billOfMaterial.getStartDate()%></td>
												<td><%=billOfMaterial.getEndDate()%></td>
												<td><%=billOfMaterial.getAvailability()%></td>


												<td><a
													href="update_material_bill.jsp?accessoriesId=<%=billOfMaterial.getAccessoriesId()%>"><button
															type="button" class="btn btn-block btn-secondary">Update</button></a></td>
												<td><a
													href="delete_material_bill?accessoriesId=<%=billOfMaterial.getAccessoriesId()%>"><button
															type="button" class="btn btn-block btn-secondary"
															onclick="return toConfirm()">Delete</button></a></td>
											</tr>
											<%
												}
											%>

										</tbody>
										</form>
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
		<jsp:include page="../footer.jsp"></jsp:include>
	</div>

	<jsp:include page="../script.jsp"></jsp:include>


</body>
</html>
