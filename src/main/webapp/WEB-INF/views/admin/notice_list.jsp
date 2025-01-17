<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    
    <!-- 해당 페이지에서 사용할 css파일 -->
    <link href="${pageContext.servletContext.contextPath}/resources/admin/css/dataTables.css" rel="stylesheet">
</head>
<body id="page-top">
	
	<!-- jQuery 사용을 위한 include, 항상 최상단에 위치해 있어야 함 -->
	<jsp:include page="common/jQuery.jsp"/>
	<!-- servletPath가 만약 true라면 아래 진입 -->
    <!-- Page Wrapper -->
    <div id="wrapper">
		
    	<!-- 사이드 네비바 파일을 가져와서 include 시켜줌, 사이드 네비바는 무조건 div id 가 wrapper안에 있어야 함 -->
    	<jsp:include page="common/side_nav.jsp"/>
    	<c:if test="${ pageName eq 'noticePage' }">
    		<script>
	            $(document).ready(function() {
	            	$("#accordionSidebar").children(".nav-item").eq(0).removeClass("active");
	                $("#accordionSidebar").children(".nav-item").eq(2).addClass("active");
	            });
    		</script>
		</c:if>	 
        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">
            
                <!-- Top bar 부분을 가져와서 사용함, Top bar는 무조건 content안에 있어야 함-->
				<jsp:include page="common/top_bar.jsp"/>

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h4 class="m-0 font-weight-bold text-primary">공지사항</h4>
                        </div>
                        <div class="card-body" style="height:80vh">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th id="date">날짜</th>
                                            <th id="title-head">제목</th>
                                            <th id="writer">작성자</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>2022/03/14</td>
                                            <td class="title">가즈아아아아앙아ㅏㅇ아아아아아아아아아아아앙아아아아아아아아아아아아아아아아아아아아아아앙아아아아아아아아아</td>
                                            <td>이욱재</td>
                                        </tr>
                                        <tr>
                                            <td>2022/03/14</td>
                                            <td class="title">가즈아</td>
                                            <td>함종석</td>
                                        </tr>         
                                        <tr>
                                            <td>2022/03/14</td>
                                            <td class="title">가즈아</td>
                                            <td>김세환</td>
                                        </tr>
                                        <tr>
                                            <td>2022/03/14</td>
                                            <td class="title">가즈아</td>
                                            <td>채준호</td>
                                        </tr>   
                                        <tr>
                                            <td>2022/03/14</td>
                                            <td class="title">가즈아</td>
                                            <td>
											    <c:if test="${ pageName eq 'noticePage' }">
											    	호호
											    </c:if>	                                            	
                                            </td>
                                        </tr>                                                                                                                                                                                          
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer 부분 이건   content-wrapper 제일 아래에 위치시키도록 하자-->
			<jsp:include page="common/footer.jsp"/>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->
	
	<!-- 맨위로 올라가게 해주는 토글 버튼과 우측 상단로그아웃 부분. 이건 항상 body의 제일 아래부분에 있도록 위치시키자 -->
	<jsp:include page="common/logout_scroll.jsp"/>
    

    <!-- DataTables를 사용하기 위해 사용하는 플러그인 시작 -->
    <!-- css cdn -->
    <link href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap4.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css" rel="stylesheet">
    
    <!-- js cdn -->
    <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.11.5/js/dataTables.bootstrap4.min.js"></script>
    
    
	<!-- DataTable 설정에 관련된 js -->
	<script src="${pageContext.servletContext.contextPath}/resources/admin/js/datatables/datatables_set.js"></script>
	<!-- DataTables를 사용하기 위해 사용하는 플러그인 끝 -->

</body>

</html>