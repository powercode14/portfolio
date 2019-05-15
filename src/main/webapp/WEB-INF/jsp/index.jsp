<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!Doctype html>

<html>
<head>
<title>Portfolio by KSH</title>
<script src="webjars/jquery/3.2.1/dist/jquery.min.js"></script>
<script>
var scrollValue;

$(document).ready(function() {
    $(".nav-sm > ul").hide();

    $(".nav-sm > a").on("click", function (e) {
        e.preventDefault();
        $(".nav-sm > ul").slideToggle(0, function(){
            var isVisible = $(this).is(':visible');
            var isIntroScroll = scrollValue >= $('.Intro').offset().top ? true : false;

            if(isVisible) {
                if(isIntroScroll) {
                    $(".nav-sm img").css('opacity', '0').stop().attr('src', 'image/list-close.png').animate({opacity: 0.3}, 500);
                } else {
                    $(".nav-sm img").css('opacity', '0').stop().attr('src', 'image/list-close-white.png').animate({opacity: 0.7}, 500);
                }
            } else {
                if(isIntroScroll) {
                    $(".nav-sm img").css('opacity', '0').stop().attr('src', 'image/list.png').animate({opacity: 0.3}, 500);
                } else {
                    $(".nav-sm img").css('opacity', '0').stop().attr('src', 'image/list-white.png').animate({opacity: 0.7}, 500);
                }
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

$(window).scroll(function () {
    scrollValue = $(document).scrollTop();
    var targetScrollValue = $('.Intro').offset().top;
    var isVisable = $(".nav-sm > ul").is(':visible');

    if(scrollValue >= targetScrollValue) {
        $(".nav-sm .menu-link").css({color: 'darkgrey'});
        if(isVisable) {
            $(".nav-sm img").attr("src", "image/list-close.png");
        } else {
            $(".nav-sm img").attr("src", "image/list.png");
        }
        $(".nav-sm img").css("opacity", "0.3");
    } else {
        $(".nav-sm .menu-link").css({color: 'lightgrey'});
        if(isVisable) {
            $(".nav-sm img").attr("src", "image/list-close-white.png");
        } else {
            $(".nav-sm img").attr("src", "image/list-white.png");
        }
        $(".nav-sm img").css("opacity", "0.7");
    }
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
    $("html, body").animate( { scrollTop : scmove }, 300 );
    $(this).trigger("click");
}
</script>
<style>
    @import url('https://fonts.googleapis.com/css?family=Noto+Sans+KR:100');

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
        display: flex;
        height: 100%;
    }
    .intro-desc {
        display: flex;
        flex-direction: column;
        font-family: 'Noto Sans KR', sans-serif;
        margin-bottom: 4rem;
        margin-top: 4rem;
        box-sizing: border-box;
        padding: 1rem;
        width: 100%;
    }
    .intro-desc-right p {
        margin: 1vh 1vw;
        line-height: 1.5em;
        text-align: right;
        font-size: 1em;
        font-weight: bold;
    }
    .intro-desc > h1 {
        margin: 1vh 1vw;
        font-size: 2em;
        font-weight: 900;
        text-align: right;
        font-family: 'Noto Sans KR', sans-serif;
    }
    .intro-title {
        position: relative;
        display: inline-block;
        margin-left: 2vw;
        margin-right: 15vw;
        text-align: center;
        align-self: center;
        width: 30vw;

    }
    .intro-title::after{
        position: absolute;
        content: "";
        top:100%;
        height:2px;
        width: 4.5vw;
        left: -4.5vw;
        right: 0;
        margin:0 auto;
        background:rgb(123, 124, 212);
    }
    .intro-title > p {
        font-family: monospace serif;
        font-size: 2vw;
        font-weight : bold;
        margin: 0 auto;
    }
    .Skills {
        height: 100vh;
        background-color: floralwhite;
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
}
@media (max-width: 1039px) {
    .Main > h1 {
        font-size: 5vw;
    }
    .nav-lg {
        display: none;
    }
    .Header {
        display: flex;
        flex-direction: row-reverse;
    }
    .nav-sm {
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
    .Intro {
        flex-direction: column-reverse;
    }
    .intro-title {
        width: fit-content;
        height: 100%;
        margin: 8vh auto;
    }
    .intro-title::after{
        height:2px;
        width: 15.5vw;
        left: -15vw;
    }
    .intro-title > p {
        font-family: monospace serif;
        font-size: 7vw;
        font-weight : bold;
    }
    .intro-desc {
        margin-top: 0;
    }
    .intro-desc > h1 {
        text-align: center;
        font-size: 5vw;
    }
    .intro-desc-right p {
        line-height: 1.5em;
        text-align: center;
        font-size: 3vw;
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
            <div class="intro-desc">
                <h1>풀스택 개발자</h1>
                <section class="intro-desc-right">
                    <p>심플하고 편리한 웹사이트를 지향하는 웹개발자 강세환 입니다.<br>
                        초등학교 저학년 때부터 컴퓨터를 스스로 포맷하고 게임을 하면서 컴퓨터에 관심이 많이 생겼습니다.<br>
                        개발자의 꿈을 가지게 된 시기는 대학교 3학년이라서 얼마 되지 않았지만 누구보다 빠르게 성장하고 있습니다.</p>
                    <p>저는 웹서비스를 제공하기 위한 모든 것, 즉 A부터 Z까지 아는 풀스택 개발자가 되기 위해 매일 공부하고 있으며<br>
                        어디에서나 필요로하는 개발자가 되고 싶습니다.
                    </p>
                </section>
            </div>
            <div class="intro-title">
                <p>Introduce</p>
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