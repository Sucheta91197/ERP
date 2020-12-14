<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
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
									<h3 class="card-title">Update AccountPayable</h3>
								</div>
								<!-- /.card-header -->
								<!-- form start -->
								<form action="updateaccountpayable" method="post">

									<div class="card-body">
										<div class="row">
											<div class="col-sm-6">
												<div class="form-group">
												   
												   
													<label>Client Name</label> <input type="text"
														class="form-control" placeholder="enter client name" name="clientName"
														>
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group">
													<label>Amount Paid</label> <input type="number"
														class="form-control" placeholder="enter amount paid"
														 name="amountPaid">
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-sm-6">
												<div class="form-group">
													<label>Due Payment</label> <input type="number"
														class="form-control" placeholder=" enter due payment" name="duePayment"
														>
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group">
													<label>Total Amount</label> <input type="number"
														class="form-control" placeholder="enter total amount" name="totalAmount"
														>
												</div>
											</div>
										</div>

										<div class="row">
											<div class="col-sm-6">
												<!-- radio -->
												<label>Mode Of Payment</label>

												<div class="form-group">
													<div class="form-check">
														<input class="form-check-input" type="radio" name="modeOfpayment" value="online"
														> <label
															class="form-check-label">online</label>
													</div>
													<div class="form-check">
														<input class="form-check-input" type="radio" name="modeOfpayment" value="offline"
															> <label
															class="form-check-label">offline</label>
													</div>

												</div>
											</div>
											 <div class="col-sm-6">
												<!-- radio -->
												<label>Status</label>
												
												<div class="form-group">
													<div class="form-check">
														<input class="form-check-input" type="radio" name="status" value="paid" >
														<label class="form-check-label">paid</label>
													</div>
													<div class="form-check">
														<input class="form-check-input" type="radio" name="status" value="unpaid" > <label class="form-check-label">unpaid
														</label>
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
