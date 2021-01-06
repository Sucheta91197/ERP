<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
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
									<h3 class="card-title">Add Material Bill</h3>
								</div>
								<!-- /.card-header -->
								<!-- form start -->
								<form action="add_material_bill" method="post">

									<div class="card-body">
										<div class="row">
											<div class="col-sm-6">
												<div class="form-group">


													<label>Accessories Name</label> <input type="text"
														class="form-control" placeholder="enter accessories name"
														name="accessoriesName">
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group">
													<label>Plant Name</label> <input type="text"
														class="form-control" placeholder="enter plant name"
														name="plantName">
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-sm-6">
												<div class="form-group">
													<label>Start Date</label> <input type="date"
														class="form-control" name="startDate">
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group">
													<label>End Date</label> <input type="date"
														class="form-control" name="endDate">
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-sm-6">
												<!-- radio -->
												<label>Accessories Availability</label>

												<div class="form-group">
													<div class="form-check">
														<input class="form-check-input" type="radio" name="accessoriesAvailability" value="active"
														> <label
															class="form-check-label">active</label>
													</div>
													<div class="form-check">
														<input class="form-check-input" type="radio" name="accessoriesAvailability" value="inactive"
															> <label
															class="form-check-label">inactive</label>
													</div>

												</div>
											</div>
										</div>


									</div>
									<!-- /.card-body -->

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
