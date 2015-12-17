<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="/WEB-INF/include/include-header.jsp" %>
</head>  

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
				<li><a href="#">Gallery</a></li>
			</ul>

			<div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon white picture"></i><span class="break"></span> Gallery</h2>
						<div class="box-icon">
							<a href="#" id="toggle-fullscreen" class="hidden-phone hidden-tablet"><i class="halflings-icon white fullscreen"></i></a>
							<a href="#" class="btn-setting"><i class="halflings-icon white wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="halflings-icon white chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon white remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<div class="masonry-gallery">
							<div id="image-1" class="masonry-thumb">
								<a style="background:url(/first/img/gallery/photo1.jpg)" title="Sample Image 1" href="<c:url value='/img/gallery/photo1.jpg' />" src="<c:url value='/img/gallery/photo1.jpg' />" alt="Sample Image 1"></a>
							</div>
							<div id="image-2" class="masonry-thumb">
								<a style="background:url(img/gallery/photo2.jpg)" title="Sample Image 2" href="img/gallery/photo2.jpg"><img class="grayscale" src="img/gallery/photo2.jpg" alt="Sample Image 2"></a>
							</div>
														<div id="image-3" class="masonry-thumb">
								<a style="background:url(img/gallery/photo3.jpg)" title="Sample Image 3" href="img/gallery/photo3.jpg"><img class="grayscale" src="img/gallery/photo3.jpg" alt="Sample Image 3"></a>
							</div>
														<div id="image-4" class="masonry-thumb">
								<a style="background:url(img/gallery/photo4.jpg)" title="Sample Image 4" href="img/gallery/photo4.jpg"><img class="grayscale" src="img/gallery/photo4.jpg" alt="Sample Image 4"></a>
							</div>
														<div id="image-5" class="masonry-thumb">
								<a style="background:url(/first/img/gallery/photo5.jpg)" title="Sample Image 5" href="img/gallery/photo5.jpg"><img class="grayscale" src="img/gallery/photo5.jpg" alt="Sample Image 5"></a>
							</div>
														<div id="image-6" class="masonry-thumb">
								<a style="background:url(img/gallery/photo6.jpg)" title="Sample Image 6" href="img/gallery/photo6.jpg"><img class="grayscale" src="img/gallery/photo6.jpg" alt="Sample Image 6"></a>
							</div>
														<div id="image-7" class="masonry-thumb">
								<a style="background:url(img/gallery/photo7.jpg)" title="Sample Image 7" href="img/gallery/photo7.jpg"><img class="grayscale" src="img/gallery/photo7.jpg" alt="Sample Image 7"></a>
							</div>
														<div id="image-8" class="masonry-thumb">
								<a style="background:url(img/gallery/photo8.jpg)" title="Sample Image 8" href="img/gallery/photo8.jpg"><img class="grayscale" src="img/gallery/photo8.jpg" alt="Sample Image 8"></a>
							</div>
														<div id="image-9" class="masonry-thumb">
								<a style="background:url(img/gallery/photo9.jpg)" title="Sample Image 9" href="img/gallery/photo9.jpg"><img class="grayscale" src="img/gallery/photo9.jpg" alt="Sample Image 9"></a>
							</div>
														<div id="image-10" class="masonry-thumb">
								<a style="background:url(img/gallery/photo10.jpg)" title="Sample Image 10" href="img/gallery/photo10.jpg"><img class="grayscale" src="img/gallery/photo10.jpg" alt="Sample Image 10"></a>
							</div>
														<div id="image-11" class="masonry-thumb">
								<a style="background:url(img/gallery/photo11.jpg)" title="Sample Image 11" href="img/gallery/photo11.jpg"><img class="grayscale" src="img/gallery/photo11.jpg" alt="Sample Image 11"></a>
							</div>
														<div id="image-12" class="masonry-thumb">
								<a style="background:url(img/gallery/photo12.jpg)" title="Sample Image 12" href="img/gallery/photo12.jpg"><img class="grayscale" src="img/gallery/photo12.jpg" alt="Sample Image 12"></a>
							</div>
														<div id="image-13" class="masonry-thumb">
								<a style="background:url(img/gallery/photo13.jpg)" title="Sample Image 13" href="img/gallery/photo13.jpg"><img class="grayscale" src="img/gallery/photo13.jpg" alt="Sample Image 13"></a>
							</div>
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
				</div><!--/span-->
			
			</div><!--/row-->

	</div><!--/.fluid-container-->
	
			<!-- end: Content -->
		</div><!--/#content.span10-->
		</div><!--/fluid-row-->
		
	<div class="modal hide fade" id="myModal">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">×</button>
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
