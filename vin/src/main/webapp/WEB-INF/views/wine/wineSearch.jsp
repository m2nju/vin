<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<style>
/* Customize the label (the container) */
* {
   font-family: 'Nanum Gothic', sans-serif !important;
}

#whole_container {
   width: 88% !important;
   margin: 0 auto !important;
}

#contents_container {
   width: 10% !important;
   margin: 50px auto !important;
}

#title_section {
   position: relative !important;
   background-image:
      url('https://s3.ap-northeast-2.amazonaws.com/vin-demo-video/main_image.jpg')
      !important;
   background-size: cover !important;
   background-repeat: no-repeat !important;
   width: 65.2% !important;
   margin: 50px auto !important;
   height: 200px !important;
}

#title_section p {
   position: absolute !important;
   display: block !important;
   width: 90% !important;
   bottom: 0 !important;
   text-align: right !important;
   font-size: 2rem !important;
   color: #ccc !important;
   text-shadow: none !important;
   font-family: 'Marcellus SC', serif !important;
}
/* searchbar_section */
#search_section {
   width: 65.1% !important;
   margin: 0 auto !important;
}

#menu_section {
   display: flex;
   flex-direction: row;
   width: 67%;
   margin: 0 auto;
   justify-content: space-around;
}

.wine_type_section, .wine_country_section {
   box-shadow: #ccc 0px 0px 3px 1px;
   border-radius: 3px;
   margin: 15px;
   padding: 15px;
}

.wine_type_section {
   flex: 1 1 0 !important;
}

.wine_country_section {
   flex: 3 1 0 !important;
}

.wine-name {
   text-align: center !important;
   font-size: .7rem !important;
}

.ui-page-theme-a .ui-checkbox-on:after {
   background-color: #570317 !important;
   color: #fff !important;
}

.wine_country_section {
   display: flex !important;
   flex-direction: column !important;
}

.ui-btn, label.ui-btn {
   border-width: 0 !important;
}

.ui-checkbox-on {
   background: #570317 !important;
   color: white !important;
   text-shadow: none !important;
}

.wine_type_section #types {
   display: flex !important;
   flex-direction: column !important;
   flex-wrap: wrap !important;
   justify-content: space-between !important;
}

.wine_country_section #countries {
   display: flex !important;
   flex-direction: row !important;
   flex-wrap: wrap !important;
   justify-content: space-between !important;
}

.wine_country_section .ui-checkbox {
   width: 30% !important;
}

.menu_title {
   margin-bottom: 15px !important;
   color: #570317 !important;
   font-size: 1rem !important;
   font-weight: bold !important;
   text-align: center;
}

.ui-checkbox .ui-btn {
   text-align: right !important;
}

.wine-country {
   text-align: center !important;
   font-size: .7rem !important;
}

.wine_filter_section {
   width: 64% !important;
   margin: 10px auto !important;
   padding: 15px !important;
   box-shadow: #ccc 0px 0px 3px 1px !important;
   border-radius: 3px !important;
}

.ui-page-theme-a .ui-slider-track .ui-btn-active {
   background-color: #570317 !important;
}

.contents_section {
   width: 63% !important;
   margin: 10px auto !important;
   padding: 15px !important;
   box-shadow: #ccc 0px 0px 3px 1px !important;
   border-radius: 3px !important;
}
.btn {
  background-color: white;
  border: 1px solid @gray-light;
  //border-radius: 1rem;
  color: @gray-dark;
  padding: 0.5rem;
  text-transform: lowercase;
}

.btn--block {
  display: block;
  width: 100%;
}

.cards {
  display: flex;
  flex-wrap: wrap;
  list-style: none;
  width: 66%;
  justify-content: space-between;
  margin: 0 auto;
  padding: 0;
}

.cards__item {
  display: flex;
  padding: 1rem;
  width: 300px;
}

.card {
  width: 100%;
  background-color: white;
  border-radius: 0.25rem;
  box-shadow: 0 20px 40px -14px rgba(0,0,0,0.25);
  display: flex;
  flex-direction: column;
  overflow: hidden;
  &:hover {
    .card__image {
      filter: contrast(100%);
    }
  }
}

.card__content {
  display: flex;
  flex: 1 1 auto;
  flex-direction: column;
  padding: 1rem;
}

.card__image {
  background-position: center center;
  background-repeat: no-repeat;
  background-size: cover;
  border-top-left-radius: 0.25rem;
  border-top-right-radius: 0.25rem;
  filter: contrast(70%);
  //filter: saturate(180%);
  overflow: hidden;
  position: relative;
  transition: filter 0.5s cubic-bezier(.43,.41,.22,.91);;
  &::before {
    content: "";
	  display: block;
    padding-top: 56.25%; // 16:9 aspect ratio
  }
  @media(min-width: 40rem) {
    &::before {
      padding-top: 66.6%; // 3:2 aspect ratio
    }
  }
}

.card__title {
  color: @gray-dark;
  font-size: .8rem;
  font-weight: 300;
  letter-spacing: 2px;
  text-align: center;
  text-transform: uppercase;
}

.card__text {
  text-align: center;
  flex: 1 1 0;
  font-size: 0.8rem;
}
.result_show{
  margin-top: 5vh;
  margin-bottom: 3vh;
  text-align: center;
  font-size: 1.4rem;
}
/* tackgoo end */
/* .container {
  width: 100%;
   display: block;
   position: relative;
   margin-bottom: 12px;
   cursor: pointer;
   font-size: 22px;
   -webkit-user-select: none;
   -moz-user-select: none;
   -ms-user-select: none;
   user-select: none;
} */

/* Hide the browser's default checkbox */
/* .container input {
   opacity: 0;
   cursor: pointer;
   height: 0;
   width: 0;
} */

/* Create a custom checkbox */

/* On mouse-over, add a grey background color */
/* .container:hover input ~ .checkmark {
   background-color: #ccc;
}
.ui-checkbox input, .ui-radio input{
  display: none;
} */
/* When the checkbox is checked, add a blue background */
/* .container input:checked ~ .checkmark {
   background-color: #2196F3;
} */

/* Create the checkmark/indicator (hidden when not checked) */
/* .checkmark:after {
   content: "";
   position: absolute;
   display: none;
} */

/* Show the checkmark when checked */
.container input:checked ~ .checkmark:after {
   display: block !important;
}
/* Style the checkmark/indicator */
/* .container .checkmark:after {
   left: 9px;
   top: 5px;
   width: 5px;
   height: 10px;
   border: solid white;
   border-width: 0 3px 3px 0;
   -webkit-transform: rotate(45deg);
   -ms-transform: rotate(45deg);
   transform: rotate(45deg);
} */
</style>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>와인 검색 화면</title>
<link rel="stylesheet"
   href="https://demos.jquerymobile.com/1.4.2/css/themes/default/jquery.mobile-1.4.2.min.css">
<!-- <link rel="stylesheet" href="/css/style.css">  -->
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:700"
   rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Marcellus+SC"
   rel="stylesheet">
</head>

<body>
   <div id="searchMenu whole_container" class="navbar-nav">
      <div id="title_section">
         <p>VIN</p>
      </div>
      <div id="search_section">
         <form id="keyword" action="javascript:searchKeyword();" accept-charset="utf-8" method="GET">
            <input type="text" placeholder="검색어 입력" name="keywordInput" id="keywordInput">
            <input type="submit" value="검색" />
         </form>
      </div>
      <div id="menu_section">
         <div class="wine_type_section">
            <div class="menu_title">와인의 종류를 선택해주세요.</div>
            <form id="types">
               <label class="container">
                  <span class="wine-name">레드</span>
                  <input type="checkbox" checked="checked" onclick="typesChanged(this.form)" name="red" value="red">
                  <span class="checkmark"></span>
               </label>
               <label class="container">
                  <span class="wine-name">화이트</span>
                  <input type="checkbox" checked="checked" onclick="typesChanged(this.form)" name="white" value="white">
                  <span class="checkmark"></span>
               </label>
               <label class="container">
                  <span class="wine-name">스파클링</span>
                  <input type="checkbox" checked="checked" onclick="typesChanged(this.form)" name="sparkling" value="sparkling">
                  <span class="checkmark"></span>
               </label>
               <label class="container">
                  <span class="wine-name">로제</span>
                  <input type="checkbox" checked="checked" onclick="typesChanged(this.form)" name="rose" value="rose">
                  <span class="checkmark"></span>
               </label>
               <label class="container">
                  <span class="wine-name">기타</span>
                  <input type="checkbox" checked="checked" onclick="typesChanged(this.form)" name="etc" value="etc">
                  <span class="checkmark"></span>
               </label>
            </form>
         </div>
         <div class="wine_country_section">
            <div class="menu_title">와인의 원산지를 선택해주세요.</div>
            <form id="countries">
               <label class="container"> <span class="wine-country">남아프리카</span>
                  <input type="checkbox" checked="checked" onclick="countriesChanged(this.form)" name="ZA" value="ZA">
                  <span class="checkmark"></span>
               </label> <label class="container"> <span class="wine-country">뉴질랜드</span>
                  <input type="checkbox" checked="checked" onclick="countriesChanged(this.form)" name="NZ" value="NZ">
                  <span class="checkmark"></span>
               </label> <label class="container"> <span class="wine-country">독일</span>
                  <input type="checkbox" checked="checked" onclick="countriesChanged(this.form)" name="DE" value="DE">
                  <span class="checkmark"></span>
               </label> <label class="container"> <span class="wine-country">미국</span>
                  <input type="checkbox" checked="checked" onclick="countriesChanged(this.form)" name="US" value="US">
                  <span class="checkmark"></span>
               </label> <label class="container"> <span class="wine-country">스페인</span>
                  <input type="checkbox" checked="checked" onclick="countriesChanged(this.form)" name="ES" value="ES">
                  <span class="checkmark"></span>
               </label> <label class="container"> <span class="wine-country">아르헨티나</span>
                  <input type="checkbox" checked="checked" onclick="countriesChanged(this.form)" name="AR" value="AR">
                  <span class="checkmark"></span>
               </label> <label class="container"> <span class="wine-country">오스트리아</span>
                  <input type="checkbox" checked="checked" onclick="countriesChanged(this.form)" name="AT" value="AT">
                  <span class="checkmark"></span>
               </label> <label class="container"> <span class="wine-country">이탈리아</span>
                  <input type="checkbox" checked="checked" onclick="countriesChanged(this.form)" name="IT" value="IT">
                  <span class="checkmark"></span>
               </label> <label class="container"> <span class="wine-country">일본</span>
                  <input type="checkbox" checked="checked" onclick="countriesChanged(this.form)" name="JP" value="JP">
                  <span class="checkmark"></span>
               </label> <label class="container"> <span class="wine-country">칠레</span>
                  <input type="checkbox" checked="checked" onclick="countriesChanged(this.form)" name="CL" value="CL">
                  <span class="checkmark"></span>
               </label> <label class="container"> <span class="wine-country">캐나다</span>
                  <input type="checkbox" checked="checked" onclick="countriesChanged(this.form)" name="CA" value="CA">
                  <span class="checkmark"></span>
               </label> <label class="container"> <span class="wine-country">포루투갈</span>
                  <input type="checkbox" checked="checked" onclick="countriesChanged(this.form)" name="PT" value="PT">
                  <span class="checkmark"></span>
               </label> <label class="container"> <span class="wine-country">프랑스</span>
                  <input type="checkbox" checked="checked" onclick="countriesChanged(this.form)" name="FR" value="FR">
                  <span class="checkmark"></span>
               </label> <label class="container"> <span class="wine-country">헝가리</span>
                  <input type="checkbox" checked="checked" onclick="countriesChanged(this.form)" name="HU" value="HU">
                  <span class="checkmark"></span>
               </label> <label class="container"> <span class="wine-country">호주</span>
                  <input type="checkbox" checked="checked" onclick="countriesChanged(this.form)" name="AU" value="AU">
                  <span class="checkmark"></span>
               </label>
            </form>
         </div>
      </div>
      <div class="wine_filter_section">
         <form id="alcohol">
            <div data-role="rangeslider">
               <label for="minAlcohol">알콜도수:</label> <input type="range"
                  name="minAlcohol" id="minAlcohol" min="0" max="25" value="10"
                  data-popup-enabled="true" data-show-value="true"
                  onchange=alcoholValueChanged()> <label for="maxAlcohol">알콜도수:</label>
               <input type="range" name="maxAlcohol" id="maxAlcohol" min="0"
                  max="25" value="18" data-popup-enabled="true"
                  data-show-value="true" onchange=alcoholValueChanged()>
            </div>
         </form>
         <form id="sweetness">
            <div data-role="rangeslider">
               <label for="minSweetness">당도:</label> <input type="range"
                  name="minSweetness" id="minSweetness" min="0" max="5" value="1"
                  data-popup-enabled="true" data-show-value="true"
                  onchange="sweetnessValueChanged()"> <label for="maxPrice">당도:</label>
               <input type="range" name="maxSweetness" id="maxSweetness" min="0"
                  max="5" value="4" data-popup-enabled="true" data-show-value="true"
                  onchange=sweetnessValueChanged()>
            </div>
         </form>
         <form id="acidity">
            <div data-role="rangeslider">
               <label for="minAcidity">산미:</label> <input type="range"
                  name="minAcidity" id="minAcidity" min="0" max="5" value="1"
                  data-popup-enabled="true" data-show-value="true"
                  onchange="acidityValueChanged()"> <label for="maxPrice">산미:</label>
               <input type="range" name="maxAcidity" id="maxAcidity" min="0"
                  max="5" value="4" data-popup-enabled="true" data-show-value="true"
                  onchange="acidityValueChanged()">
            </div>
         </form>
         <form id="body">
            <div data-role="rangeslider">
               <label for="minBody">바디:</label> <input type="range" name="minBody"
                  id="minBody" min="0" max="5" value="1" data-popup-enabled="true"
                  data-show-value="true" onchange="bodyValueChanged()"> <label
                  for="maxBody">바디:</label> <input type="range" name="maxBody"
                  id="maxBody" min="0" max="5" value="4" data-popup-enabled="true"
                  data-show-value="true" onchange="bodyValueChanged()">
            </div>
         </form>
         <form id="tanin">
            <div data-role="rangeslider">
               <label for="minTanin">타닌:</label> <input type="range"
                  name="minTanin" id="minTanin" min="0" max="5" value="1"
                  data-popup-enabled="true" data-show-value="true"
                  onchange="taninValueChanged()"> <label for="maxTanin">타닌:</label>
               <input type="range" name="maxAcidity" id="maxTanin" min="0" max="5"
                  value="4" data-popup-enabled="true" data-show-value="true"
                  onchange=taninValueChanged()>
            </div>
         </form>
         <form id="price">
            <div data-role="rangeslider">
               <label for="minPrice">가격:</label> <input type="range"
                  name="minPrice" id="minPrice" min="0" max="1000000" value="10000"
                  data-popup-enabled="true" data-show-value="true"
                  onchange="priceValueChanged()"> <label for="maxPrice">가격:</label>
               <input type="range" name="maxPrice" id="maxPrice" min="0"
                  max="1000000" value="200000" data-popup-enabled="true"
                  data-show-value="true" onchange="priceValueChanged()">
            </div>
         </form>
      </div>
      <div id="contents_section">
          <div class="result_show">RESULT</div>
         <div id="divResults"></div>
         <div class="add-botton">
            <a href="javascript:moreList();" class="btn btn-primary">더보기</a>
         </div>
      </div>
   </div>

</body>
<script src="https://demos.jquerymobile.com/1.4.2/js/jquery.js"></script>

<!-- 슬라이더의 최소값 최대값을 받아 처리 -->
<script>
var html = "";

var pageNum = 1;   // 기본 페이지는 1
var keywordInput = "";
var typesInput = "";
var countriesInput = "";
var alcoholInput = "";
var sweetnessInput = "";
var acidityInput = "";
var bodyInput = "";
var taninInput = "";
var priceInput = "";


var div = document.querySelector('#divResults');

function searchRefresh(){
   $.ajax({
      type: "GET",
      //url : "/vin/api/wine/search",      // 로컬 WAS에서 돌릴 때
      url : "http://viniswine.tk/api/wine/search",         // 원격에서 돌릴 때
      data: {
         page: pageNum,
         keyword: keywordInput,
         types: typesInput,
         countries: countriesInput,
         alcohol: alcoholInput,
         sweetness: sweetnessInput,
         acidity: acidityInput,
         body: bodyInput,
         tanin: taninInput,
         price: priceInput,
         },
      dataType : "json",

      success : function(obj) {
         showWineTable(obj);
       },
       complete : function(xhr,status) {

       },
       error : function(xhr, status, error) {
           console.log(error);
       }
   })
 }
// <ul class="cards">
//   <li class="cards__item">
//     <div class="card">
//       <div class="card__image card__image--fence"></div>
//       <div class="card__content">
//         <div class="card__title">Flex</div>
//         <p class="card__text">This is the shorthand for flex-grow, flex-shrink and flex-basis combined. The second and third parameters (flex-shrink and flex-basis) are optional. Default is 0 1 auto. </p>
//         <button class="btn btn--block card__btn">Button</button>
//       </div>
//     </div>
//   </li>
// </ul>

function showWineTable(obj) {      // api에 요청한 결과를 받아와 테이블로 만들어줌
    console.log(obj);
    html = '<ul class="cards">';
    for (var i = 0; i < obj.length; i++) {
       html += '<li class="cards__item"><div class="card">'
              + '<div class="card__image card__image--fence">' + '<img src="https://s3.ap-northeast-2.amazonaws.com/vin-image/' + obj[i].wine21Code + '.jpg" width="100%">'
                + '</div><div class="card__content"><div class="card__title">' + obj[i].koreanName
                + '<p>' + obj[i].englishName
                + '</p></div><p class="card__text">' + obj[i].winary
                + '</p><p class="card__text">' + obj[i].country
                + '</p><p class="card__text">' + obj[i].vintage
                + '</p><p class="card__text">' + obj[i].type;
                if (obj[i].price != 0){
                	html += '</p><p class="card__text">' + obj[i].price.toLocaleString() + "\\";
                }
                html += '</p><a href = "http://viniswine.tk/wine/details/' + obj[i].wine21Code + '"><button class="btn btn--block card__btn">' + '자세히보기'+ '</button></a>' + '</div></div></li>';
    }
    html += '</ul>';
    div.innerHTML = html;
}


function searchKeyword(){      // 카테고리 조건이 변경되면 화면을 새로 갱신
    console.log("searchKeyword");
   pageNum = 1;
   searchRefresh();
};


function refreshSearchListByCondition(){      // 카테고리 조건이 변경되면 화면을 새로 갱신
   console.log("리프레시 컨디션");
   //console.log(typesInput);
   pageNum = 1;
   keywordInput = $('#keywordInput').val();
   searchRefresh();
};


function moreList(){   // 이 경우는 화면을 새로고침 하는 게 아니라 추가 로드된 데이터를 아래에 붙이는 작업
   pageNum = pageNum + 1;
   keywordInput = $('#keywordInput').val();
   $.ajax({
      //url : "/vin/api/wine/search",   // 로컬에서 돌릴 때
      url : "http://viniswine.tk/api/wine/search",         // 원격에서 돌릴 때
      type : "GET",
      cache : false,
      dataType: 'json',
      data: {
         page: pageNum,
         keyword: keywordInput,
         types: typesInput,
         countries: countriesInput,
         alcohol: alcoholInput,
         sweetness: sweetnessInput,
         acidity: acidityInput,
         body: bodyInput,
         tanin: taninInput,
         price: priceInput,
      },
      success : function(obj){
         $('#addbtn').remove();//remove btn
         var content="";
         console.log("obj를 테이블 폼에 맞게 변형 후 출력");
         content = '<ul class="cards">';
         for (var i = 0; i < obj.length; i++) {
        	 content += '<li class="cards__item"><div class="card">'
                   + '<div class="card__image card__image--fence">' + '<img src="https://s3.ap-northeast-2.amazonaws.com/vin-image/' + obj[i].wine21Code + '.jpg" width="100%">'
                     + '</div><div class="card__content"><div class="card__title">' + obj[i].koreanName
                     + '<p>' + obj[i].englishName
                     + '</p></div><p class="card__text">' + obj[i].winary
                     + '</p><p class="card__text">' + obj[i].country
                     + '</p><p class="card__text">' + obj[i].vintage
                     + '</p><p class="card__text">' + obj[i].type;
                     if (obj[i].price != 0){
                    	 content += '</p><p class="card__text">' + obj[i].price.toLocaleString() + "\\";
                     }
                     content += '</p><a href = "http://viniswine.tk/wine/details/' + obj[i].wine21Code + '"><button class="btn btn--block card__btn">' + '자세히보기'+ '</button></a>' + '</div></div></li>';
         }
         content += '</ul>';
         $('#addbtn').remove();//remove btn
         $(content).appendTo("#divResults");
      }, error:function(request,status,error){
         alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
      }
   });
};

function typesChanged(form)
   {
        var typesCheckbox = [];

        if (form.red.checked)
           typesCheckbox.push(form.red.value);
        if (form.white.checked)
           typesCheckbox.push(form.white.value);
        if (form.sparkling.checked)
           typesCheckbox.push(form.sparkling.value);
        if (form.rose.checked)
           typesCheckbox.push(form.rose.value);
        if (form.etc.checked)
           typesCheckbox.push(form.etc.value);

        typesInput = typesCheckbox.toString();
        console.log(typesInput);
        refreshSearchListByCondition();
   }

function countriesChanged(form)
   {
        var countriesCheckbox = [];

        if (form.ZA.checked)
           countriesCheckbox.push(form.ZA.value);
        if (form.NZ.checked)
           countriesCheckbox.push(form.NZ.value);
        if (form.DE.checked)
           countriesCheckbox.push(form.DE.value);
        if (form.US.checked)
           countriesCheckbox.push(form.US.value);
        if (form.ES.checked)
           countriesCheckbox.push(form.ES.value);
        if (form.AR.checked)
           countriesCheckbox.push(form.AR.value);
        if (form.AT.checked)
           countriesCheckbox.push(form.AT.value);
        if (form.IT.checked)
           countriesCheckbox.push(form.IT.value);
        if (form.JP.checked)
           countriesCheckbox.push(form.JP.value);
        if (form.CL.checked)
           countriesCheckbox.push(form.CL.value);
        if (form.CA.checked)
           countriesCheckbox.push(form.CA.value);
        if (form.PT.checked)
           countriesCheckbox.push(form.PT.value);
        if (form.FR.checked)
           countriesCheckbox.push(form.FR.value);
        if (form.HU.checked)
           countriesCheckbox.push(form.HU.value);
        if (form.AU.checked)
           countriesCheckbox.push(form.AU.value);

        countriesInput = countriesCheckbox.toString();
        console.log(countriesInput);
        refreshSearchListByCondition();
   }

var minAlcohol;
var maxAlcohol;
function alcoholValueChanged() {
   var minAlcohol = $('#minAlcohol').val();
   var maxAlcohol = $('#maxAlcohol').val();
   if(maxAlcohol == 25){
      maxAlcohol = 100;
   }
   console.log(minAlcohol, maxAlcohol);
   alcoholInput = [minAlcohol, maxAlcohol].toString();
   console.log(alcoholInput);
   refreshSearchListByCondition();
};

var minSweetness;
var maxSweetness;
function sweetnessValueChanged() {
   var minSweetness = $('#minSweetness').val();
   var maxSweetness = $('#maxSweetness').val();

   console.log(minSweetness, maxSweetness);
   sweetnessInput = [minSweetness, maxSweetness].toString();
   console.log(sweetnessInput);
   refreshSearchListByCondition();
};

var minAcidity;
var maxAcidity;
function acidityValueChanged() {
   var minAcidity = $('#minAcidity').val();
   var maxAcidity = $('#maxAcidity').val();

   console.log(minAcidity, maxAcidity);
   acidityInput = [minAcidity, maxAcidity].toString();
   console.log(acidityInput);
   refreshSearchListByCondition();

};
var minBody;
var maxBody;
function bodyValueChanged() {
   var minBody = $('#minBody').val();
   var maxBody = $('#maxBody').val();

   console.log(minBody, maxBody);
   bodyInput = [minBody, maxBody].toString();
   console.log(bodyInput);
   refreshSearchListByCondition();
};

var minTanin;
var maxTanin;
function taninValueChanged() {
   var minTanin = $('#minTanin').val();
   var maxTanin = $('#maxTanin').val();

   console.log(minTanin, maxTanin);
   taninInput = [minTanin, maxTanin].toString();
   console.log(taninInput);
   refreshSearchListByCondition();
};

var minPrice;
var maxPrice;
function priceValueChanged() {
   var minPrice = $('#minPrice').val();
   var maxPrice = $('#maxPrice').val();
   if (maxPrice == 1000000){
      maxPrice = 10000000;
   }
   console.log(minPrice, maxPrice);
   priceInput = [minPrice,maxPrice].toString();
   console.log(priceInput);
   refreshSearchListByCondition();
};

var searchMenu = document.querySelector("#searchMenu");

searchMenu.addEventListener("change", function(evt) {
   refreshSearchListByCondition();
});
</script>

<script
   src="https://demos.jquerymobile.com/1.4.2/js/jquery.mobile-1.4.2.min.js"></script>
</html>
