<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!doctype html>

<html>
<head>
<title>Portfolio by KSH</title>
<script src="webjars/jquery/3.2.1/dist/jquery.min.js"></script>
<script>
$(document).ready(function() {
    $(".nav-sm > ul").hide();

    $(".nav-sm > a").on("click", function () {
        $(".nav-sm > ul").slideToggle(0, function(){
            var isVisible = $(this).is(':visible');
            if(isVisible) {
                $(".nav-sm img").css('opacity', '0').stop().attr('src', 'image/list-close.png').animate({opacity: 0.7}, 500);
            } else {
                $(".nav-sm img").css('opacity', '0').stop().attr('src', 'image/list-white.png').animate({opacity: 0.7}, 500);
            }
        });
    });

    $(".menu-link").each(function(i){
        $(this).click(function(e){
            e.preventDefault();
            pageMove($(this));
        });
    });

    type();
});

function type(){
    var txt = "Welcome to KSH's portfolio";
    var i = 0;

    typing();

    function typing(){
        if(i <= txt.length){
            $(".Main > h1").text(txt.substring(0, i));
            i++;
            setTimeout(typing, 200);
        }
    }
}

function pageMove($t){
    var className = $t.text();
    var target = $('.' + className);
    var scmove = target.offset().top;
    $('html, body').animate( { scrollTop : scmove }, 400 );
}
</script>
<style>
    body {
        margin: 0;
    }
    .All {

    }
    .Home {
        height: 100%;
    }
    .Header {
        position: fixed;
        width: 95vw;
    }
    .Main {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        background-image: url("image/home.jpg");
        background-attachment: fixed;
        background-repeat: no-repeat;
        background-size: cover;
        color: #fff;
    }
    .Main > h1 {
        border-right: .1em solid #fff;
        white-space: pre;
        animation: blink 1s step-end infinite;
    }
    .Intro {
        height: 100%;
    }
    .Skills {
        height: 100vh;
    }
    .Project {
        height: 100vh;
    }
    .Contact {
        height: 100vh;
    }
@media (min-width: 1040px) {
    .Main > h1 {
        font-size: 4vw;
    }
    .nav-sm {
        display: none;
    }
    .nav-lg {
        display: block;
        width: 90vw;
        height: 7vh;
        margin-left: auto;
        margin-right: auto;
        text-align: right;
    }
    .nav-lg ul {
        display: inline-block;
        padding: 0;
        margin: 0;
    }
    .nav-lg ul li { /* topMenu의 ID를 가진 태그 안에 <ul> 태그 안에 <li> 태그의 스타일을 지정 */
        list-style: none; /* <li> 태그는 위의 이미지처럼 목록을 나타내는 점을 없앤다 */
        color: white; /* 글씨 색을 흰색으로 설정 */
        background-color: rgba(45, 45, 45, 0.7);
        float: left; /* <li>태그들이 왼쪽에 흐르게 설정(그러면 아래있는 내용은 오른쪽으로 옴) */
        line-height: 5vh; /* 글씨가 가운데로 오도록 설정하기 위해 한줄의 높이를 30px로 설정 */
        vertical-align: middle; /* 세로 정렬을 가운데로 설정(위의 line-height와 같이 설정 필요함) */
        text-align: center; /* 글씨 정렬을 가운데로 설정 */
    }
    .nav-lg ul li:first-child {
        border-radius: 0% 0% 0% 15%/50%;
    }
    .nav-lg ul li:last-child {
        border-radius: 0% 0% 15%/50% 0%;
    }
    .nav-lg .menu-link { /* menu-link 클래스 태그들의 스타일 설정 */
        text-decoration: none; /* 링크(<a> 태그)가 가지는 기본 꾸밈 효과(밑줄 등)을 없앰 */
        color: lightgrey; /* 폰트색을 흰색으로 설정 */
        display: block; /* 링크를 글씨가 있는 부분 뿐만아니라 전체 영역을 클릭해도 링크가 걸리게 설정 */
        width: 10vw; /* 메뉴링크의 넓이 설정 */
        font-size: 2.5vh; /* 폰트 사이즈 12px로 설정 */
        font-weight: bold; /* 폰트를 굵게 */
        font-family: "Trebuchet MS", Dotum, Arial; /* 기본 폰트 적용, 시스템 폰트를 종류별로 순서대로 */
    }
    .nav-lg .menu-link:hover { /* topMenu 아이디를 가진 태그 안에 menu-link클래스를 가진 태그에 마우스가 over되면 스타일 설정 */
        color: rgb(135, 206, 250); /* 글씨 색을 붉은색으로 설정 */
    }
    .Intro {
        display: flex;
    }
    .intro-title {
        display: flex;
        justify-content: center;
        background-color: black;
        width: 25vw;
    }
    .intro-title > h1 {
        color: white;
        margin-top: 10vh;
        margin-bottom: 10vh;
    }
    .intro-desc {
        display: flex;
        justify-content: flex-start;
        background-color: lightyellow;
        width: 75vw;
    }
}
@media (max-width: 1039px) {
    .Main > h1 {
        font-size: 5vw;
    }
    .nav-lg {
        display: none;
    }
    .nav-sm {
        display: block;
        width: 90vw;
        margin-top: 1.5vh;
        text-align: right;
    }
    .nav-sm li{
        list-style: none;
        color: white;
        line-height: 7vh;
        vertical-align: middle;
    }
    .nav-sm > a{
        line-height: 5vh;
    }
    .nav-sm img{
        height: 5vh;
        vertical-align: middle;
        opacity: 0.7;
    }
    .nav-sm .menu-link {
        text-decoration: none;
        font-size: 3vh;
        font-weight: bold;
        color: lightgrey;
        opacity: 0.7%;
    }
    .nav-sm .menu-link:hover {
        color: rgb(135, 206, 250);
    }
    .intro-title {
        display: flex;
        justify-content: center;
        background-color: black;
    }
    .intro-title > h1 {
        color: white;
        margin-top: 10vh;
        margin-bottom: 10vh;
    }
}

@keyframes blink {
    0%, 100% {
        border-color: transparent;
    }
    50% {
        border-color: #fff;
    }
}
</style>
</head>
<body>
<div class="All">
    <div class="Home">
        <div class="Header">
            <div class="nav-lg">
                <ul>
                    <li><a href="#" class="menu-link">Home</a></li>
                    <li><a href="#" class="menu-link">Intro</a></li>
                    <li><a href="#" class="menu-link">Skills</a></li>
                    <li><a href="#" class="menu-link">Project</a></li>
                    <li><a href="#" class="menu-link">Contact</a></li>
                </ul>
            </div>
            <div class="nav-sm">
                <a href="#" class="menu"><img src="image/list-white.png" /></a>
                <ul>
                    <li><a href="#" class="menu-link">Home</a></li>
                    <li><a href="#" class="menu-link">Intro</a></li>
                    <li><a href="#" class="menu-link">Skills</a></li>
                    <li><a href="#" class="menu-link">Project</a></li>
                    <li><a href="#" class="menu-link">Contact</a></li>
                </ul>
            </div>
        </div>
        <div class="Main">
            <h1></h1>
        </div>
        <div class="Intro">
            <div class="intro-title">
                <h1>Introduce</h1>
            </div>
            <div class="intro-desc">
                <p>hello</p>
            </div>
        </div>
        <div class="Skills">
        </div>
        <div class="Project">
        </div>
        <div class="Contact">
        </div>
    </div>
</div>
</body>
</html>