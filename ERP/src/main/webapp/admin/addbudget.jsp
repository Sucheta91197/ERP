<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page
	import="com.erp.dao.AccountPayableDao,com.erp.entites.AccountPayable,java.util.*"%>
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
									<h3 class="card-title">Add Budget</h3>
								</div>
								<!-- /.card-header -->
								<!-- form start -->
								<form action="addbudget" method="post">



									<div class="card-body">
										<div class="row">
											<div class="col-sm-6">
												<div class="form-group">

													<label>Budget Name</label> <input type="text"
														class="form-control" placeholder="enter budget name"
														name="budgetName" />
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group">
													<label>Gross Budget</label> <input type="number"
														class="form-control" placeholder="enter gross budget"
														name="grossBudget">
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-sm-6">
												<!-- select -->
												<div class="form-group">
													<label>Select Department</label> <select
														class="form-control" name="department">
														<option value="none" selected disabled hidden>
															select department</option>
														<option>option 1</option>
														<option>option 2</option>
														<option>option 3</option>
														<option>option 4</option>
													</select>
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group">
													<label>Date Of Approval</label> <input type="date"
														class="form-control" 
														name="budgetDate">
												</div>
											</div>
										</div>

										<div class="row">
											<div class="col-sm-6 ">
												<!-- radio -->
												<label>Status</label>

												<div class="form-group">
													<div class="form-check">
														<input class="form-check-input" type="radio"
															name="status" value="planned"> <label
															class="form-check-label">planned</label>
													</div>
													<div class="form-check">
														<input class="form-check-input" type="radio"
															name="status" value="approved"> <label
															class="form-check-label">approved</label>
													</div>
													<div class="form-check">
														<input class="form-check-input" type="radio"
															name="status" value="cancelled"> <label
															class="form-check-label">cancelled</label>
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
		<jsp:include page="footer.jsp"></jsp:include>
	</div>

	<jsp:include page="script.jsp"></jsp:include>
</body>
</html>
