<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<c:import url="/common/mainLogout.jsp" />
<link href="<c:url value="/css/mypage_user.css"/>" rel="stylesheet" type="text/css">
<link href="<c:url value="/css/footer.css"/>" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link href="<c:url value="/css/footer.css"/>" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.2.1/css/bulma.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.js"
            integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
            crossorigin="anonymous"></script>
<style>
html {
	background-color: white;
}

.tabs a {
	-ms-flex-align: center;
	align-items: center;
	color: #ffffff;
}

.tabs a:hover {
	color: #ffffff;
	border-bottom-color: #ffffff;
	text-decoration: none;
}

.tabs li.is-active a {
	color: rgb(242, 177, 52);
	font-weight: bold;
	border-bottom: 1px solid #ffffff;
}

.tabs a {
	border-bottom: 1px solid #ffffff;
}

.btn {
	display: inline-block;
	padding: 6px 37px;
	margin-bottom: 0;
	font-size: 12px;
	font-weight: 400;
	line-height: 1.428571;
	text-align: center;
	white-space: nowrap;
	vertical-align: middle;
	-ms-touch-action: manipulation;
	touch-action: manipulation;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	background-image: none;
	border: 1px solid transparent;
	border-radius: 4px;
}

.btn-info {
	background-color: rgb(79, 185, 159);
	color: white;
}

.btn-info:hover {
	background-color: rgb(6, 133, 135);
	color: rgb(242, 177, 52);
}

.following {
	margin-top: 25px;
	font-weight: bold;
}
/*스크랩 한 공고*/
.myscrab {
	border-collapse: collapse;
	margin-top: 11%;
	margin-left: 0%;
	border-spacing: 0;
	width: 100%;
}

.myscrab tr {
	border: 2px solid rgb(79, 185, 159);
	text-align: center;
	font-size: 15px;
	height: 40px;
}

.myscrab td {
	border: 1px solid rgba(255, 255, 255, 0.4);
	text-align: center;
	vertical-align: middle;
}

.myscrab th {
	border: 2px solid rgb(6, 133, 135);
	background-color: rgb(6, 133, 135);
	color: white;
	text-align: center;
	vertical-align: middle;
}

.myscrab img {
	height: 30px;
	vertical-align: middle;
}

.seungjae {
	position: absolute;
	bottom: -100px;
	width: 100%;
	height: 10;
	background: #fff;
	text-align: right;
	right: -15%;
}
.title {
	position: relative;
	/* border: 1px solid black; */
	color: rgb(79, 185, 159);
	font-weight: bold;
}
</style>
</head>
<body>
    <!-- 마이페이지 탭 -->
    <div class='columns'>
        <div class='container myprofile'>
          <div class='modal' id='edit-preferences-modal'>
            <div class='modal-background'></div>
            <div class='modal-card'>
              <header class='modal-card-head'>
                <p class='modal-card-title' >Edit Preferences</p>
                <button class='delete' ></button>
              </header>
              <section class='modal-card-body'>
                <label class='label'>Name</label>
                <p class='control'>
                  <input class='input' placeholder='Text input' type='text'>
                </p>
                <label class='label'>Username</label>
                <p class='control has-icon has-icon-right'>
                  <input class='input' placeholder='Text input' type='text' value='pmillerk'>
                </p>
                <label class='label'>Email</label>
                <p class='control has-icon has-icon-right'>
                  <input class='input' placeholder='Email input' type='text' value='hello@'>
                  <i class='fa fa-warning'></i>
                  <span class='help is-danger'>This email is invalid</span>
                </p>
                <div class='control'>
                  <div class='control-label is-pulled-left'>
                    <label class='label'>Date of Birth</label>
                  </div>
                  <span>
                    <span class='select'>
                      <select>
                        <option>Month</option>
                        <option>With options</option>
                      </select>
                    </span>
                    <span class='select'>
                      <select>
                        <option>Day</option>
                        <option>With options</option>
                      </select>
                    </span>
                    <span class='select'>
                      <select>
                        <option>Year</option>
                        <option>With options</option>
                      </select>
                    </span>
                  </span>
                </div>
                <label class='label'>Description</label>
                <p class='control'>
                  <textarea class='textarea' placeholder='Describe Yourself!'></textarea>
                </p>
                <div class='content'>
                  <h1>Optional Information</h1>
                </div>
                <label class='label'>Phone Number</label>
                <p class='control has-icon has-icon-right'>
                  <input class='input' placeholder='Text input' type='text' value='+1 *** *** 0535'>
                </p>
                <label class='label'>Work</label>
                <p class='control has-icon has-icon-right'>
                  <input class='input' placeholder='Text input' type='text' value='Greater Washington Publishing'>
                </p>
                <label class='label'>School</label>
                <p class='control has-icon has-icon-right'>
                  <input class='input' placeholder='Text input' type='text' value='George Mason University'>
                </p>
              </section>
              <footer class='modal-card-foot'>
                <a class='button is-primary modal-save'>Save changes</a>
                <a class='button modal-cancel'>Cancel</a>
              </footer>
            </div>
          </div>
          
    <!-- 초록바 -->      
	<div class='section myprofile-heading'>
				<div class='columns is-mobile is-multiline'>
					<div class='column is-2'>
						<span class='header-icon user-myprofile-image'> <c:if
								test="${empty user.imgSerPath}">
								<img src="${user.imgSerName}" class='userpic' alt=""
									style="border: 2px solid rgb(6, 133, 135); border-radius: 10%">
							</c:if> <c:if test="${not empty user.imgSerPath}">
								<img src="${user.imgSerPath}/${user.imgSerName}" class='userpic'
									alt=""
									style="border: 2px solid rgb(6, 133, 135); border-radius: 10%">
							</c:if>
						</span>
					</div>
					<div class='column is-4-tablet is-10-mobile name'>
						<p style="margin-left: -52%; margin-top: 14%;">
							<span class='title is-bold' style="color: rgb(17, 47, 65);">${user.name}</span>
							<br> <a class='button is-primary is-outlined' href='#'
								id='edit-preferences'
								style="margin: 10% 0; text-decoration: none"> 내 정보 수정 </a>
						</p>
					</div>
					<div class='column is-2-tablet is-4-mobile has-text-centered'
						style="border-left: 1px solid rgb(255, 255, 255, 0); margin-left: -16%;">
						<p class='stat-val'>7</p>
						<p class='stat-key'>좋아요</p>
					</div>
					<div class='column is-2-tablet is-4-mobile has-text-centered'>
						<p class='stat-val'>3</p>
						<p class='stat-key'>싫어요</p>
					</div>
					<div class='column is-2-tablet is-4-mobile has-text-centered'>
						<p class='stat-val'>15</p>
						<p class='stat-key'>지원현황</p>
					</div>
				</div>
			</div>
			<div class='myprofile-options is-fullwidth'
				style="margin-top: -6.5%;">
				<div class='tabs is-fullwidth is-medium'>
					<ul>
						<li class='link'><a
							href="<c:url value="/user/resumeList.do"/>"> <span
								class='icon'> <i class='fa fa-thumbs-up'></i>
							</span> <span>이력서 관리</span>
						</a></li>
						<li class='link'><a
							href="<c:url value="/user/applyList.do"/>"> <span
								class='icon'> <i class='fa fa-thumbs-up'></i>
							</span> <span>입사지원 리스트</span>
						</a></li>
						<li class='link is-active'><a href="<c:url value="/user/scrab.do"/>">
								<span class='icon'> <i class='fa fa-thumbs-up'></i>
							</span> <span>스크랩한 공고</span>
						</a></li>
						<li class='link'><a
							href="<c:url value="/user/myCalendar.do"/>"> <span
								class='icon'> <i class='fa fa-search'></i>
							</span> <span>나만의 공채달력</span>
						</a></li>
					</ul>
				</div>
			</div>
	
	<!-- 각 메뉴 휘하 내용 -->
	<table class="myscrab">
        <thead>
            <tr>
                <th> </th>
                <th>기업명</th>
                <th>채용공고</th>
                <th>경력</th>
                <th>학력</th>
                <th>근무 형태</th>
                <th>지역</th>
                <th>마감일</th>
            </tr>
        </thead>
        <tbody>            
            <tr>
                <td><img src="../img/noun_Star_2044877-02.png" id="scrap1" flag-data="false" /></td>
                <td>㈜비엔케이저축은행</td>
                <td><a href="<c:url value="/company/mypage_company_detail_main.do"/>">입/경력직 채용 공고(마감일 상이)</a></td>
                <td>신입 · 경력</td>
                <td>학력무관</td>
                <td>정규직</td>
                <td>부산전체</td>
                <td>~ 11/18(일)</td>
            </tr>
            <tr>
                <td><img src="../img/noun_Star_2044877-02.png" id="scrap1" flag-data="false" /></td>
                <td>㈜비엔케이저축은행</td>
                <td>입/경력직 채용 공고(마감일 상이)</td>
                <td>신입 · 경력</td>
                <td>학력무관</td>
                <td>정규직</td>
                <td>부산전체</td>
                <td>~ 11/18(일)</td>
            </tr>
            <tr>
                <td><img src="../img/noun_Star_2044877-02.png" id="scrap1" flag-data="false" /></td>
                <td>㈜비엔케이저축은행</td>
                <td>입/경력직 채용 공고(마감일 상이)</td>
                <td>신입 · 경력</td>
                <td>학력무관</td>
                <td>정규직</td>
                <td>부산전체</td>
                <td>~ 11/18(일)</td>
            </tr>
            <tr>
                <td><img src="../img/noun_Star_2044877-02.png" id="scrap1" flag-data="false" /></td>
                <td>㈜비엔케이저축은행</td>
                <td>입/경력직 채용 공고(마감일 상이)</td>
                <td>신입 · 경력</td>
                <td>학력무관</td>
                <td>정규직</td>
                <td>부산전체</td>
                <td>~ 11/18(일)</td>
            </tr>
            <tr>
                <td><img src="../img/noun_Star_2044877-02.png" id="scrap1" flag-data="false" /></td>
                <td>㈜비엔케이저축은행</td>
                <td>입/경력직 채용 공고(마감일 상이)</td>
                <td>신입 · 경력</td>
                <td>학력무관</td>
                <td>정규직</td>
                <td>부산전체</td>
                <td>~ 11/18(일)</td>
            </tr>
            <tr>
                <td><img src="../img/noun_Star_2044877-02.png" id="scrap1" flag-data="false" /></td>
                <td>㈜비엔케이저축은행</td>
                <td>입/경력직 채용 공고(마감일 상이)</td>
                <td>신입 · 경력</td>
                <td>학력무관</td>
                <td>정규직</td>
                <td>부산전체</td>
                <td>~ 11/18(일)</td>
            </tr>
            <tr>
                <td><img src="../img/noun_Star_2044877-02.png" id="scrap1" flag-data="false" /></td>
                <td>㈜비엔케이저축은행</td>
                <td>입/경력직 채용 공고(마감일 상이)</td>
                <td>신입 · 경력</td>
                <td>학력무관</td>
                <td>정규직</td>
                <td>부산전체</td>
                <td>~ 11/18(일)</td>
            </tr>
            <tr>
                <td><img src="../img/noun_Star_2044877-02.png" id="scrap1" flag-data="false" /></td>
                <td>㈜비엔케이저축은행</td>
                <td>입/경력직 채용 공고(마감일 상이)</td>
                <td>신입 · 경력</td>
                <td>학력무관</td>
                <td>정규직</td>
                <td>부산전체</td>
                <td>~ 11/18(일)</td>
            </tr>
            <tr>
                <td><img src="../img/noun_Star_2044877-02.png" id="scrap1" flag-data="false" /></td>
                <td>㈜비엔케이저축은행</td>
                <td>입/경력직 채용 공고(마감일 상이)</td>
                <td>신입 · 경력</td>
                <td>학력무관</td>
                <td>정규직</td>
                <td>부산전체</td>
                <td>~ 11/18(일)</td>
            </tr>
            <tr>
                <td><img src="../img/noun_Star_2044877-02.png" id="scrap1" flag-data="false" /></td>
                <td>㈜비엔케이저축은행</td>
                <td>입/경력직 채용 공고(마감일 상이)</td>
                <td>신입 · 경력</td>
                <td>학력무관</td>
                <td>정규직</td>
                <td>부산전체</td>
                <td>~ 11/18(일)</td>
            </tr>

        </tbody>
    </table>
    <nav>
		<ul class="pagination">
			<li class="disabled"><a href="#" aria-label="Previous"><span
					aria-hidden="true">&laquo;</span></a></li>
			<li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
			<li><a href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span>
			</a></li>
		</ul>
	</nav>
	<footer class="seungjae">
         <p>&copy; Job Story 2018</p>
    </footer>
	
	 <script>
        $(() => {
            $('#edit-preferences').click(function(){
            $('#edit-preferences-modal').addClass('is-active');
        });
            $('.modal-card-head button.delete, .modal-save, .modal-cancel').click(function(){
                $('#edit-preferences-modal').removeClass('is-active');
            });
        });

        $(".link").click(function () {
                $(this).addClass('is-active');
                $(this).siblings().removeClass('is-active');
        })
      </script>
       <script>
        /* 스크랩 기능 */
        $(".myscrab > tbody > tr > td:nth-child(1) > img").click(function () {
            var scrapFlag = $(this).attr("flag-data");
            if(scrapFlag == "true"){
/*                 alert("취소"); */
                $(this).attr("src", "../img/noun_Star_2044877-02.png")
                       .attr("flag-data", "false");
            } else {
/*                 alert("스크랩"); */
                $(this).attr("src", "../img/noun_Star_2044877-03.png")
                       .attr("flag-data", "true");
            }
        });        
    </script>
</body>
</html>