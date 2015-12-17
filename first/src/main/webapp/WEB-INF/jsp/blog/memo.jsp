<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="/WEB-INF/include/include-header.jsp" %>
</head>  
<script type="text/javascript">

	function makeRequest() {
		var httpRequest;
		if (window.XMLHttpRequest) { // Mozilla, Safari, ...
			httpRequest = new XMLHttpRequest();
		} else if (window.ActiveXObject) { // IEspring security ajax
			try {
				httpRequest = new ActiveXObject("Msxml2.XMLHTTP");
			} catch (e) {
				try {
					httpRequest = new ActiveXObject("Microsoft.XMLHTTP");
				} catch (e) {
				}
			}
		}
	
		if (!httpRequest) {
			alert('Giving up :( Cannot create an XMLHTTP instance');
			return false;
		}
		return httpRequest;
	}

	function viewMemo() {
		var httpRequest = makeRequest();
		httpRequest.onreadystatechange = function() {
			weatherResponse(httpRequest);
		};
		httpRequest.open('GET', "<c:url value='/blog/selectMemo.do'/>");
		httpRequest.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
		httpRequest.send(null);

	}
</script>
<body>
	<%@ include file="/WEB-INF/include/include-body.jsp" %>	
		<div class="container-fluid-full">
		<div class="row-fluid">
				
			<!-- start: Main Menu -->
			<div id="sidebar-left" class="span2">
				<div class="nav-collapse sidebar-nav">
					<ul class="nav nav-tabs nav-stacked main-menu">
						<li><a href="index.html"><i class="icon-bar-chart"></i><span class="hidden-tablet"> introduction</span></a></li>	
						<li><a href="messages.html"><i class="icon-home"></i><span class="hidden-tablet"> Home</span></a></li>
						<li><a href="<c:url value='/blog/memo.do' />"><i class="icon-pencil"></i><span class="hidden-tablet"> Memo</span></a></li>
						<li>
							<a class="dropmenu" href="#"><i class="icon-folder-close-alt"></i><span class="hidden-tablet"> Develoment</span><span class="label label-important"> 7 </span></a>
							<ul>
								<li><a class="submenu" href="submenu.html"><i class="icon-file-alt"></i><span class="hidden-tablet"> Java</span></a></li>
								<li><a class="submenu" href="submenu2.html"><i class="icon-file-alt"></i><span class="hidden-tablet"> Script</span></a></li>
								<li><a class="submenu" href="submenu3.html"><i class="icon-file-alt"></i><span class="hidden-tablet"> Jquery</span></a></li>
								<li><a class="submenu" href="submenu3.html"><i class="icon-file-alt"></i><span class="hidden-tablet"> Spring</span></a></li>
								<li><a class="submenu" href="submenu3.html"><i class="icon-file-alt"></i><span class="hidden-tablet"> Framework</span></a></li>
								<li><a class="submenu" href="submenu3.html"><i class="icon-file-alt"></i><span class="hidden-tablet"> SQL</span></a></li>
								<li><a class="submenu" href="submenu3.html"><i class="icon-file-alt"></i><span class="hidden-tablet"> ETC</span></a></li>
							</ul>	
						</li>
						<li><a href="ui.html"><i class="icon-eye-open"></i><span class="hidden-tablet"> News</span></a></li>
						<li><a href="<c:url value='/blog/gallery.do' />"><i class="icon-picture"></i><span class="hidden-tablet"> Album</span></a></li>
						<li><a href="ui.html"><i class="icon-plane"></i><span class="hidden-tablet"> Site</span></a></li>
						<li><a href="login.html"><i class="icon-lock"></i><span class="hidden-tablet"> Login</span></a></li>
					</ul>
				</div>
			</div>
			<!-- end: Main Menu -->
			
			<noscript>
				<div class="alert alert-block span10">
					<h4 class="alert-heading">Warning!</h4>
					<p>You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a> enabled to use this site.</p>
				</div>
			</noscript>
			
			<!-- start: Content -->
			<div id="content" class="span10">
			
			
			<ul class="breadcrumb">
				<li>
					<i class="icon-home"></i>
					<a href="index.html">Home</a> 
					<i class="icon-angle-right"></i>
				</li>
				<li><a href="#">Memo</a></li>
			</ul>

			<div class="row-fluid sortable">		
				<div class="box span12">
					<button class="btn btn-primary text-right"><i class="halflings-icon white white edit"></i></button>
					<div class="panel-group" id="accordion">
						<c:forEach var="row" items="${list}" varStatus="status">
							<div class="panel panel-default">
								<div class="panel-heading">
					                <h4 class="panel-title">
					                    <div class="box-header" data-original-title>
											<a data-toggle="collapse" data-parent="#accordion" href="#collapse${row.IDX }">
												<h2>${row.IDX }<span class="break"></span>${row.TITLE }</h2>
											</a>
											<div class="box-icon">
												<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
												<a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
											</div>
										</div>
					                </h4>
					            </div>
								<div class="box-content">
									<c:choose>
										<c:when test="${status.index eq 0 }">
											<div id="collapse${row.IDX }" class="panel-collapse collapse in">
								                <div class="panel-body">
								                    <p>${row.CONTENTS }</p>
								                </div>
								            </div>
										</c:when>
										<c:otherwise>
											<div id="collapse${row.IDX }" class="panel-collapse collapse">
								                <div class="panel-body">
								                    <p>${row.CONTENTS }</p>
								                </div>
								            </div>
										</c:otherwise>
									</c:choose>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			
			</div><!--/row-->

	</div><!--/.fluid-container-->
	
			<!-- end: Content -->
		</div><!--/#content.span10-->
		</div><!--/fluid-row-->
		
	<div class="modal hide fade" id="myModal">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">�</button>
			<h3>Settings</h3>
		</div>
		<div class="modal-body">
			<p>Here settings can be configured...</p>
		</div>
		<div class="modal-footer">
			<a href="#" class="btn" data-dismiss="modal">Close</a>
			<a href="#" class="btn btn-primary">Save changes</a>
		</div>
	</div>
	<div class="common-modal modal fade" id="common-Modal1" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-content">
			<ul class="list-inline item-details">
				<li><a href="http://themifycloud.com">Admin templates</a></li>
				<li><a href="http://themescloud.org">Bootstrap themes</a></li>
			</ul>
		</div>
	</div>
	<div class="clearfix"></div>
	
	<footer>

		<p>
			<span style="text-align:left;float:left">&copy; 2013 <a href="http://themifycloud.com/downloads/janux-free-responsive-admin-dashboard-template/" alt="Bootstrap_Metro_Dashboard">JANUX Responsive Dashboard</a></span>
			
		</p>

	</footer>
	
	<!-- start: JavaScript-->
	<%@ include file="/WEB-INF/include/include-js.jsp" %>
	<!-- end: JavaScript-->
	
</body>
</html>
