<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<style>
     .updated_news_title{
    flex: 0.1;
  
    color:steelblue;
    font-family: 'PT Sans', sans-serif;
  
    border-bottom: 2px solid silver;
    margin-right: 20px;
    margin-left: 20px;
  }
  .updated_news_contents{
    display: flex;
    flex: 0.3;
  
    margin-right: 20px;
    margin-left:  20px;
    margin-top: 5px;
    margin-bottom: 20px;
  
    font-family: 'Nanum Gothic', sans-serif;
  }
  .updated_news_left{
    display: flex;
    flex-direction: column;
    flex: 1;
  }
  .updated_news_left1, .updated_news_left2, .updated_news_left3, .updated_news_left4{
    flex: 1;
    font-size: 13px;
    color: black;
  }
  .updated_news_red{
    color: whitesmoke;
    background-color:coral;
  
    font-size: 14px;
    border-radius: 3px;
  }
  .updated_news_blue{
    color: whitesmoke;
    background-color:#4F92CD;
  
    font-size: 14px;
    border-radius: 3px;
  }
  .updated_news_right{
    display: flex;
    flex-direction: column;
    flex: 1;
  }
  .updated_news_right1, .updated_news_right2{
    flex: 0.3;
    
    color: black;
    font-size: 12px;
    line-height: 20px;
  
    border-bottom: 1px solid silver;
    border-bottom-style: dashed;
  }
  .updated_news_right3{
    flex: 1;
  }
  .updated_news_right_number{
    color:navy;
    font-size: 10px;
  }
  .miniroom_title{
    flex: 0.1;
  
    color: steelblue;
    font-family: 'PT Sans', sans-serif;
  
    border-bottom: 2px solid silver;
    margin-right: 20px;
    margin-left: 20px;
  }
  .miniroom_contents{
    flex: 1;
  }
  .miniroom_gif{
    width: 500px;
    height: 200px;

    margin-top: 15px;
    margin-left: 25px;

    border-radius: 5px;
  }
  body {
    background-color: #a3a3a3;
    background-image: url("../static/images/pattern.png");
    background-size: 100px;
  
    position: fixed;
    left: 0;
    top: 0;
    right: 0;
    bottom: 0;
  }
  
  .bookcover {
    background-color:gray;
    border-radius: 9px;
    border: 1px solid #738186;
  
    width: 960px;
    height: 660px;
  
    margin: 100px auto;
  
    position: relative;
  }
  
  .bookdot{
      position: absolute;
      top: 10px;
      bottom: 10px;
      left: 10px;
      right: 10px;
  
      border-style: dashed;
      color:whitesmoke;
  }
  
  .page{
      display: flex;
  
      position: absolute;
      top: 10px;
      bottom: 10px;
      left: 10px;
      right: 10px;
  
      background-color:whitesmoke;
      border-radius: 9px;
  }
  
  .home{
    display: flex;
    flex-direction: column;
    flex: 1;
  }
  
  .upside{
    flex:0.1;
    color: black;
  
    font-size: 13px;
  }
  
  .title{
    font-family: 'Stylish', sans-serif;
    font-size: 25px;
  }

  .home_main{
    display: flex;
    flex:1;
  }

  .home_contents{
    position: relative;
    display: flex;
    flex-direction: column;
    flex: 1;
  
    margin-left: 30px;
    margin-bottom: 15px;
  
    border: 1px solid silver;
    border-radius: 9px;
  
    background-color: white;
  }
  
  
  .profile{
    display: flex;
    flex-direction: column;
    flex: 0.4;
  
    margin-left: 15px;
    margin-bottom: 15px;
  
    border: 1px solid silver;
    border-radius: 9px;
  
    background-color: white;
  
    font-family: 'Nanum Gothic', sans-serif;
  }
  
  .profile_1{
    flex: 0.6;
  }
  .profile_image{
    width: 180px;
    height: 180px;
  
    margin: 20px;
    border-radius: 5px;
  }
  .profile_2{
    flex: 1;
  
    color: black;
    font-size: 13px;
  
    margin-right: 20px;
    margin-left: 20px;
  }
  .profile_3{
    flex:0.1;
  
    color: black;
    font-size: 12px;
  
    margin: 20px;
    margin-bottom: 30px;
  }
    /*프로필 드랍다운*/
    .profile-dropdown {
      flex: 0;
      border: 1px solid #c9d4da;
      padding: 5px;
      margin-top: 10px;
      font-size: 0.8rem;
      position: relative;
    }
    
    .triangle-down {
      width: 0;
      height: 0;
      border-left: 4.5px solid transparent;
      border-right: 4.5px solid transparent;
      border-top: 5px solid #838383;
    }
    
    .dropdown-btn {
      display: flex;
      justify-content: space-between;
      align-items: center;
    }
    
    .dropdown-content {
      display: none;
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
    }
    
    .profile-dropdown:hover > .dropdown-content {
      display: block;
    }
    
    .dropdown-content > a {
      display: block;
      background-color: #f9f9f9;
      box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
      width: 100%;
      padding: 6px;
      color: black;
      text-decoration: none;
    }
    
    .dropdown-content > a:hover {
      background-color: #f1f1f1;
    }
  /*오른쪽 메뉴버튼*/
  .menu_bar{
    display: flex;
    flex-direction: column;
    flex: 0.09;
  
    margin-top: 70px;
    margin-bottom: 360px;
    margin-right: 15px;

    font-family: 'Nanum Gothic', sans-serif;
  }

  .menu_bar > a{
    flex: 1;

    background-color: #a3a3a3ee;
    color: whitesmoke;
    text-align: left;
    line-height: 30px;

    margin-top: 6px;
    margin-bottom: 6px;

    border-top: 1px solid silver;
    border-bottom: 1px solid silver;
    border-right: 1px solid silver;
    border-top-right-radius: 5px;
    border-bottom-right-radius: 5px;

    text-decoration: none;
    font-size: 13px;
  }
  .menu_bar > a:hover{
    background-color:#4F92CD;
  }
  
	.div_page ul {
	display: flex;
	justify-content: center;
	list-style: none;
	}
	
	a {
	text-decoration: none;
	color: black;
	}
	
	 .paginate_button:hover {
	   text-decoration: underline;
	   color: #508FED;
	 }
	 
	 .paginate_button{
	 	width:15px; 
	 	height:30px;
	 }
	 
    /*달력*/
.calendar{
    display: flex;

    position: absolute;
    top: 15px;
    bottom: 477px;
    left: 40px;
    right: 40px;

    border: 1px solid silver;
    border-radius: 5px;

    font-family: 'Nanum Gothic', sans-serif;
    
    height: 50px;
}
.today{
    flex: 0.25;

    text-align: center;
    line-height: 22px;
    font-size: 16px;
    
    color: steelblue;
}
.day_list{
    flex: 1;

    margin-left: 10px;
    margin-top: 2px;
    line-height: 20px;
    font-size: 13px;

    color: black;
}
/*다이어리*/
.diary{
    top: 80px;
    bottom: 15px;
    left: 5px;
    right: 5px;

    overflow: auto;
    
    height: 460px;
    width: 550px;
}
.diary_contents{
    margin: 10px;
    border: 1px solid silver;
}
.diary_date {
    color: steelblue;

    margin-left: 20px;
    margin-top: 10px;

    font-size: 13px;
     font-family: 'Nanum Gothic', sans-serif; 
}
.diary_text{
    color: black;

    text-align: center;
    line-height: 25px;
    font-size: 18px;

    margin-top: 20px;
    margin-bottom: 20px;
}
#button{
    margin-left: 170px;
    margin-top: 5px;
    margin-bottom: 10px;

    border: 0;

    font-size: 19px;
    color: white;
    background-color: white;
    font-family: 'Gamja Flower', cursive;
}
#button:hover{
    color:black;
    background-color: whitesmoke;

    border: 1px solid silver;
    border-radius: 3px;
}
#hidden{
    display: none;
}

.diaryComment_contents{
	color: black;
	border: 1px solid silver;
	width: 96%;
    margin: 0 auto;
    margin-top: -10px;
}

</style>
</head>
<body>
<div class="bookcover">
      <div class="bookdot">
        <div class="page">
          <div class="home">
            <div class="upside">
              <br>
             <div style="display: inline-flex; min-width: 260px; max-width: 260px;"><strong>&emsp;&emsp;&emsp;TODAY <span style="color:coral;">${today}</span> | TOTAL
                                    ${total}</strong> &emsp;&emsp;&emsp; &emsp;</div>
<!-- 		              	제목 수정 -->
              	<span class="title" id="titleText">${mainDto.mainTitle}</span> 
<!--               	본인 페이지에만 수정버튼 -->
		         <c:if test="${memDto.id == mainDto.id}">
              		 <button onclick="enableTitleEdit()">수정</button>
           		 </c:if>
            </div>
            <div class="home_main">
              <div class="profile">
                <div class="profile_1">
                  <c:choose>
						<c:when test="${mainDto.id == 'yeju'}">
                  			<img class="profile_image" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjAyMDNfMTk5%2FMDAxNjQzODYxMjcwNDE5.BV_QgQeNkK-qJDVnJJ0LlgfDUd7g3Mh0JHiLZWPDq4kg.ZTAAVOl2nGWeVgM4_5rQVZVugg2rCQ14ngTI_kIBZwYg.JPEG.lhn7069%2FIMG_5843.JPG&type=sc960_832"/>
              			</c:when>
              			<c:otherwise>
			                  <img class="profile_image" src="https://item.kakaocdn.net/do/c5c470298d527ef65eb52883f0f186c4a88f7b2cbb72be0bdfff91ad65b168ab"/>
              			</c:otherwise>
              		</c:choose>
                  
                </div>
<!--                 글이 길면 자동으로 다음줄로 -->
                <div class="profile_2" style="word-wrap: break-word; word-break: break-all;">
                	<c:choose>
              			<c:when test="${mainDto.content == null}">
<!--               			내용을 설정안했을때 -->
							<span class="content" id="contentText">자기소개가 없습니다</span>
              			</c:when>
              			<c:otherwise>
<!--               			내용을 설정했을때 -->
                			<p class="content" id="contentText">${mainDto.content}</p> 
              			</c:otherwise>
              		</c:choose>
                </div>
<!--               	본인 페이지에만 수정버튼 -->
                <c:if test="${memDto.id == mainDto.id}">
              		 <div align="right"><button onclick="enableContentEdit()" style="margin-right: 20px;">수정</button></div>
           		 </c:if>
           		 
                <div class="profile_3">
                  <div class="profile-dropdown">
                    <div class="dropdown-btn">
                      <div class="dropdown-title">Related Link</div>
                      <div class="triangle-down"></div>
                    </div>
                    <div class="dropdown-content">
                      <a href="https://handsomely-click-eea.notion.site/50f33e8928d248aa903feb976d78ed35?v=29af3dde066f4186a5e18814d773b1b4&pvs=4" target="_blank">Notion</a>
                      <a href="https://github.com/AN-YEJU/yechu.git" target="_blank">Github</a>
                      <!-- <a href="" target="_blank">Instagram</a> -->
                    </div>
                  </div>
                </div>
              </div>
              <div class="home_contents">
                <div class="calendar">
                    <div class="today">08.03<br>Thu</div>
                    <div class="day_list" >1 &nbsp;2 &nbsp;3 &nbsp;4 &nbsp;5 &nbsp;<span style="color:orangered;">6</span> &nbsp;7 &nbsp;8 &nbsp;9 &nbsp;10 &nbsp;11 &nbsp;12 &nbsp;<span style="color:orangered;">13</span>&nbsp;14 &nbsp;<span style="color:royalblue;">15</span> &nbsp;16 &nbsp;17 &nbsp;18 &nbsp;19 <span style="color:orangered;">20</span> &nbsp;21 &nbsp;22 &nbsp;23 &nbsp;24 &nbsp;25 &nbsp;26 &nbsp;<span style="color:orangered;">27</span> &nbsp;28 &nbsp;29 &nbsp;30 &nbsp;31</div>
                </div>
                
                <div class="diary" style="position: relative;">
                <c:if test="${empty diary}">
						<p align="center" style="color: black;">등록된 글이 없습니다.</p>
					</c:if>
					<c:if test="${memDto.id == mainDto.id}">
						<form action = "diaryWrite" method="post">
							<input type="hidden" name="hostId" value="${mainDto.id}">
							<input type="hidden" name="guestId" value="${memDto.id}">
						</form>
			                <div align="right"><a href="diary_writeView"><input type="submit" value="글쓰기" style="margin-right: 20px;"></a></div>
					</c:if>	
                
<!--                 <div align="right"><a href="diary_writeView"><input type="submit" value="글쓰기" style="margin-right: 20px;"></a></div> -->
                
                <c:forEach var = "diary" items = "${diary}">
					<div class="diary_contents">
					    <div class="diary_date"><fmt:formatDate value="${diary.diaryDate}" pattern="yyyy-MM-dd E HH:mm"/> &nbsp;&nbsp;&nbsp;<span style="color: black;"><b>${diary.diaryTitle}</b></span></div>
					    <div class="diary_text">${diary.diaryCont}</div>
					    <c:if test="${memDto.id == mainDto.id}">
					    <div style="float: right; margin-top: -30px; margin-right: 7px;">
					    	<a href="diary_view?diaryId=${diary.diaryId}" style="margin-left:10px;"><input type="button" value="수정"></a>
					        <a href="diaryDelete?diaryId=${diary.diaryId}"><input type="button" value="삭제"></a>
					    </div>
					    </c:if>
					</div>
					
<!-- 					댓글  -->
					<div class="collapse">
					<div>
<!-- 							댓글 목록	 -->
						<div class= "diaryComment_contents">
<!-- 									댓글이 목록이 들어가는곳 -->
							<c:forEach var = "diaryComment" items = "${diary.dcList}">
								<div style="margin-left: 20px;">
								  <span style="color: steelblue; font-size: 13px;"><fmt:formatDate value="${diaryComment.commentDate}" pattern="yyyy-MM-dd E HH:mm"/></span>
									  <form action="diaryCommentDelete" method="post" style="display: inline-block; float: right; ">
									    <input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
										<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
										<input type="hidden" name="diaryNo" value="${diaryComment.diaryNo}">
									  	<input type="submit" value="X" style="margin-right: 5px;">
									  </form>
								</div>
								 <div style="margin-left: 20px; font-size: 13px;"><strong>${diaryComment.commenter}</strong> ${diaryComment.comments}</div>
							</c:forEach>
						</div>
					<form action="diaryCommentWrite" method="post">
						<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
						<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
						<input type="hidden" name="diaryId" value="${diary.diaryId}">
<!-- 								댓글 작성 -->
						<div >
						<div >
							<input name="comments" type="text" placeholder="댓글을 입력하세요." required style="margin-left: 10px; width: 427px;">
							<button type="submit" style="margin-top: 3px;">댓글 달기</button>
						</div>
					</div>
					</form>
						</div>
					</div>
                </c:forEach>
                
                <div class="div_page" style="margin-top:10px; margin-right: 15px;">
				          <ul class="pagination">
				            <c:if test="${pageMaker.prev}">
				              <li class="paginate_button" style="margin-right: 5px;">
				                <!-- 시작페이지 - 1 하면 이전의 10개 페이지 표시 --> 
				                <!-- ex>11->10(1~10), 21->20(11~20) -->
				                <a href="${pageMaker.startPage - 1}"> [이전] </a>
				              </li>
				            </c:if>
				            <c:forEach var="num" begin="${pageMaker.startPage}"
				              end="${pageMaker.endPage}">
				              <li class="paginate_button"
				               ${pageMaker.cri.pageNum==num ? "style='font-weight: 900'" : ""}>
				                <!-- 클릭한 현재페이지 번호를 링크로 연결 --> 
				                <a href="${num}">${num}</a>
				              </li>
				            </c:forEach>
				            <c:if test="${pageMaker.next}">
				              <li class="paginate_button">
				                <!-- 끝페이지 + 1 하면 이후의 10개 페이지 표시 --> 
				                <!-- ex>10->11(11~20), 20->21(21~30) -->
				                <a href="${pageMaker.endPage + 1}"> [다음] </a>
				              </li>
				            </c:if>
				          </ul>
				        </div>
				
			        <form method="get" id="actionForm" action="#">
			          <input type="hidden" name="pageNum"
			            value="${pageMaker.cri.pageNum}"> 
			            <input type="hidden" name="amount" value="${pageMaker.cri.amount}">
			        </form>
                </div>
            </div>
            </div>
          </div>
          <div class="menu_bar">
           <a href="home2?guestId=${mainDto.id}" class="menu_button1">&nbsp;&nbsp;홈</a>
            <a href="diary" class="menu_button2">&nbsp;&nbsp;다이어리</a>
            <a href="photo" class="menu_button3">&nbsp;&nbsp;사진첩</a>
            <a href="visit" class="menu_button4">&nbsp;&nbsp;방명록</a>
          </div>
        </div>
      </div>
    </div>
</body>
</html>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script>
	//페이징
	var actionForm = $("#actionForm");
	
	$(".paginate_button a").on("click", function(e){
	//기본 동작 막음: 페이지 링크를 통해서 이동
	e.preventDefault();
	console.log("click~!!!");
	console.log("@# href ===>"+$(this).attr("href"));
	actionForm.find("input[name='pageNum']").val($(this).attr("href"));
	actionForm.attr("action", "diary");
	actionForm.submit();
	});
	
	
	function enableTitleEdit() {
		  // 현재 제목 텍스트 요소를 가져옵니다.
		  const titleText = document.getElementById('titleText');

		  // 텍스트 입력창(input) 요소를 생성합니다.
		  const inputElement = document.createElement('input');
		  inputElement.type = 'text';
		  inputElement.value = titleText.innerText;

		  // 제목 텍스트 요소를 숨깁니다.
		  titleText.style.display = 'none';

		  // 텍스트 입력창을 미니홈피 제목 영역에 추가합니다.
		  titleText.parentNode.insertBefore(inputElement, titleText);

		  // 텍스트 입력창에 포커스를 줍니다.
		  inputElement.focus();

		  // 수정이 완료되면 엔터키 또는 포커스가 사라질 때 값을 저장하고 업데이트하는 이벤트를 추가합니다.
		  inputElement.addEventListener('keyup', function (event) {
		    if (event.key === 'Enter') {
		      updateTitle(inputElement.value);
		    }
		  });
		  inputElement.addEventListener('blur', function () {
		    updateTitle(inputElement.value);
		  });
		}

		function updateTitle(newTitle) {
		  // 서버로 제목을 업데이트하는 AJAX 요청을 보냅니다.
		  const xhr = new XMLHttpRequest();
		  xhr.open('POST', '/modifyTitle', true); // 서버의 컨트롤러 URL에 맞게 경로 수정
		  xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
		  xhr.onreadystatechange = function () {
		    if (xhr.readyState === XMLHttpRequest.DONE) {
		      if (xhr.status === 200) {
		        // 서버에서 응답이 정상적으로 왔을 경우
		        const titleText = document.getElementById('titleText');
		        titleText.style.display = 'inline';
		        titleText.innerText = newTitle;
		        const inputElement = titleText.previousSibling;
		        inputElement.remove();
		      } else {
		        // 서버에서 응답이 오류로 왔을 경우
		        console.error('서버 오류 발생');
		      }
		    }
		  };

		  // 서버로 보낼 데이터 준비 (제목 수정에 필요한 파라미터 전달)
		  const params = 'mainTitle=' + encodeURIComponent(newTitle);

		  // 파라미터를 URL 인코딩하여 서버로 전송
		  xhr.send(params);
		}
		
//	 	프로필 소개-------------------------------------------------
	function enableContentEdit() {
	  // 현재 내용 텍스트 요소를 가져옵니다.
	  const contentText = document.getElementById('contentText');

	  // 텍스트 입력창(input) 요소를 생성합니다.
	  const inputElement = document.createElement('input');
	  inputElement.type = 'text';
	  inputElement.value = contentText.innerText;

	  // 내용 텍스트 요소를 숨깁니다.
	  contentText.style.display = 'none';

	  // 텍스트 입력창을 미니홈피 내용 영역에 추가합니다.
	  contentText.parentNode.insertBefore(inputElement, contentText);

	  // 텍스트 입력창에 포커스를 줍니다.
	  inputElement.focus();

	  // 수정이 완료되면 엔터키 또는 포커스가 사라질 때 값을 저장하고 업데이트하는 이벤트를 추가합니다.
	  inputElement.addEventListener('keyup', function (event) {
	    if (event.key === 'Enter') {
	      updateContent(inputElement.value);
	    }
	  });
	  inputElement.addEventListener('blur', function () {
	    updateContent(inputElement.value);
	  });
	}

	function updateContent(newContent) {
	  // 서버로 내용을 업데이트하는 AJAX 요청을 보냅니다.
	  const xhr = new XMLHttpRequest();
	  xhr.open('POST', '/modifyContent', true); // 서버의 컨트롤러 URL에 맞게 경로 수정
	  xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
	  xhr.onreadystatechange = function () {
	    if (xhr.readyState === XMLHttpRequest.DONE) {
	      if (xhr.status === 200) {
	        // 서버에서 응답이 정상적으로 왔을 경우
	        const contentText = document.getElementById('contentText');
	        contentText.style.display = 'inline';
	        contentText.innerText = newContent;
	        const inputElement = contentText.previousSibling;
	        inputElement.remove();
	      } else {
	        // 서버에서 응답이 오류로 왔을 경우
	        console.error('서버 오류 발생');
	      }
	    }
	  };

	  // 서버로 보낼 데이터 준비 (내용 수정에 필요한 파라미터 전달)
	  const params = 'content=' + encodeURIComponent(newContent);

	  // 파라미터를 URL 인코딩하여 서버로 전송
	  xhr.send(params);
	}
	
</script>