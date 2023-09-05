<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">


<title>${title }</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style type="text/css">
body {
	margin-top: 20px;
	background: #B9E9FC;
}

.text-uppercase-bold-sm {
	text-transform: uppercase !important;
	font-weight: 500 !important;
	letter-spacing: 2px !important;
	font-size: .85rem !important;
}

.justify-content-center {
	justify-content: center !important;
}

.card {
	position: relative;
	display: flex;
	flex-direction: column;
	min-width: 0;
	word-wrap: break-word;
	background-color: #fff;
	background-clip: border-box;
	border: 1px solid rgba(30, 46, 80, .09);
	border-radius: 0.25rem;
	box-shadow: 0 20px 27px 0 rgb(0 0 0/ 5%);
}

.p-5 {
	padding: 3rem !important;
}

.card-body {
	flex: 1 1 auto;
	padding: 1.5rem 1.5rem;
}

.px-0 {
	padding-right: 0 !important;
	padding-left: 0 !important;
}

.table thead th, tbody td, tbody th {
	vertical-align: middle;
}

tbody, td, tfoot, th, thead, tr {
	border-color: inherit;
	border-style: solid;
	border-width: 0;
}

.mt-5 {
	margin-top: 3rem !important;
}
<%@include file="/views/common/allCSS.html"%>	
</style>
</head>
<body>
	<%-- <%@include file="/views/admin/admin_navbar.html"%> --%>
	<div class="container mt-6 mb-7">
		<div class="row justify-content-center">
			<div class="col-lg-12 col-xl-7">
				<div class="card">
					<div class="card-body p-5">
						<h2>Hi,</h2>
						<p class="fs-sm">
							Thanks for riding, we hope you enjoyed your ride. Please pay <strong>&#8377 ${totalFair}</strong>
							to the driver.
						</p>
						<div class="border-top border-gray-200 pt-4 mt-4">
							<div class="row">
								<div class="col-md-6">
									<div class="text-muted mb-2">Payment No.</div>
									<strong>#88305</strong>
								</div>
								<div class="col-md-6 text-md-end">
									<div class="text-muted mb-2">Payment Date</div>
									<strong>Feb/09/20</strong>
								</div>
							</div>
						</div>
						<div class="border-top border-gray-200 mt-4 py-4">
							<div class="row">
								<div class="col-md-6">
									<div class="text-muted mb-2">Client</div>
									<strong> Client Name </strong>
									<p class="fs-sm">
										Client Address <br>
									</p>
								</div>
								<div class="col-md-6 text-md-end">
									<div class="text-muted mb-2">Payment To</div>
									<strong> Transportation Buddy </strong>
									<p class="fs-sm">
										Lucknow, U.P. , India <br>
									</p>
								</div>
							</div>
						</div>
						<div class="border-top border-gray-200 py-4 mt-5">
							<div class="d-flex justify-content-end">
								<p class="text-muted me-3">Distance travelled:</p>
								<span>${dtravel}</span>
							</div>
							<div class="d-flex justify-content-end">
								<p class="text-muted me-3">Fair/km:</p>
								<span>&#8377 ${fair}</span>
							</div>
							<div class="d-flex justify-content-end mt-3">
								<h5 class="me-3">Total:</h5>
								<h5 class="text-success">${totalFair}</h5>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script data-cfasync="false"
		src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
	<script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript">
		
	</script>
	<%@include file="/views/common/allJS.html"%>
</body>
</html>