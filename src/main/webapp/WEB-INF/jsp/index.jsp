<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
    <title>Portfolio by KSH</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
    <link rel="stylesheet" href="./css/index.css">

    <script>
        $(function() {
            $(".Header").animate({'opacity': '1'}, 1500);

            $(".menu-link").each(function(i){
                $(this).click(function(e){
                    e.preventDefault();
                    pageMove($(this));
                });
            });

            type();

            $(window).scroll(function () {
                $('.hide').each(function (i) {

                    var bottom_of_object = $(this).position().top + $(this).outerHeight();
                    var bottom_of_window = $(window).scrollTop() + $(window).height();

                    if (bottom_of_window > bottom_of_object) {
                        $(this).animate({'opacity': '1'}, 1000);
                    }

                });
            });

            $("#toggle").on('click', function(e){
                e.preventDefault();
                if(!$(this).hasClass('on')){
                   $(this).addClass('on');
                } else {
                   $(this).removeClass('on');
                }
            });
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
</head>
<body>
<div class="All">
    <div class="Home">
        <div class="Header hide">
            <div class="nav-lg">
                <ul>
                    <li><a href="#" class="menu-link">Home</a></li>
                    <li><a href="#" class="menu-link">About</a></li>
                    <li><a href="#" class="menu-link">Skills</a></li>
                    <li><a href="#" class="menu-link">Project</a></li>
                    <li><a href="#" class="menu-link">Contact</a></li>
                </ul>
            </div>
            <div class="nav-sm hidden">
                <a href="#" class="menu" id="toggle"><span></span></a>
                <div id="menu">
                    <ul>
                        <li><a href="#" class="menu-link">Home</a></li>
                        <li><a href="#" class="menu-link">About</a></li>
                        <li><a href="#" class="menu-link">Skills</a></li>
                        <li><a href="#" class="menu-link">Project</a></li>
                        <li><a href="#" class="menu-link">Contact</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="Main">
            <h1></h1>
        </div>
        <div class="About">
            <div class="desc hide">
                <h1>풀스택 개발자</h1>
                <section class="desc-right">
                    <p>심플하고 편리한 웹사이트를 지향하는 웹개발자 강세환 입니다.<br>
                        저는 어릴 때부터 컴퓨터를 스스로 포맷하고 운영체제를 설치하고 파티션을 나누는 등 컴퓨터를 잘 다뤘습니다.<br>
                        개발자의 꿈을 가지게 된 시기는 대학교 3학년이라 얼마 되지 않았지만 누구보다 빠르게 성장하고 있습니다.</p>
                    <p>제 목표는 웹서비스를 제공하기 위한 모든 것, A부터 Z까지 아는 풀스택 개발자가 되기 위해 매일 공부하고 있으며<br>
                        어디에서나 필요로하는 개발자가 되고 싶습니다.
                    </p>
                </section>
            </div>
            <div class="title hide">
                <p>About</p>
            </div>
        </div>
        <div class="Skills">
            <div class="title hide">
                <p>Skills</p>
            </div>
            <div class="desc">
                <div class="panel hide">
                    <div class="panel-heading">
                        <p>Language</p>
                    </div>
                    <div class="panel-body">
                        <div class="item" style='background-image: url("./image/icon-java.png")'>
                        </div>
                        <div class="item" style='background-image: url("./image/icon-c.png")'>
                        </div>
                        <div class="item" style='background-image: url("./image/icon-cpp.png")'>
                        </div>
                    </div>
                </div>
                <div class="panel hide">
                    <div class="panel-heading">
                        <p>Front-End</p>
                    </div>
                    <div class="panel-body">
                        <div class="item" style='background-image: url("./image/icon-html.png")'>
                        </div>
                        <div class="item" style='background-image: url("./image/icon-css.png")'>
                        </div>
                        <div class="item" style='background-image: url("./image/icon-js.png")'>
                        </div>
                        <div class="item" style='background-image: url("./image/icon-jquery.png")'>
                        </div>
                        <div class="item" style='background-image: url("./image/icon-jsp.png")'>
                        </div>
                    </div>
                </div>
                <div class="panel-group">
                    <div class="panel hide">
                        <div class="panel-heading">
                            <p>DB</p>
                        </div>
                        <div class="panel-body">
                            <div class="item" style='background-image: url("./image/icon-oracle.png")'>
                            </div>
                        </div>
                    </div>
                    <div class="panel hide">
                        <div class="panel-heading">
                            <p>OS</p>
                        </div>
                        <div class="panel-body">
                            <div class="item" style='background-image: url("./image/icon-windows.png")'>
                            </div>
                            <div class="item" style='background-image: url("./image/icon-linux.png")'>
                            </div>
                        </div>
                    </div>
                    <div class="panel hide">
                        <div class="panel-heading">
                            <p>Version Control</p>
                        </div>
                        <div class="panel-body">
                            <div class="item" style='background-image: url("./image/icon-git.png")'>
                            </div>
                            <div class="item" style='background-image: url("./image/icon-svn.png")'>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="Project">
            <div class="title hide">
                <p>Project</p>
            </div>
            <div class="desc">
                <div class="box">
                    <div class="image hide" style='background-image: url("./image/cafetale.png")'>
                    </div>
                    <div class="content hide">
                        <h1>Café tale</h1>
                        <h3>키워드로 카페검색 및 게시판을 이용할 수 있는 웹서비스.</h3>
                        <h4>프로젝트 기간 : 2016.12 ~ 2017.02</h4>
                        <h4>사용기술 : jsp, jQuery, Spring, Oracle, mybatis</h4>
                        <a href="https://github.com/powercode14/cafetale" target="_blank">소스보기</a>
                    </div>
                </div>
                <div class="box">
                    <div class="image hide" style='background-image: url("./image/no-image.png")'>
                    </div>
                    <div class="content hide">
                        <h1>현대파워텍 유해물질 관리시스템 구축</h1>
                        <h4>프로젝트 기간 : 2018.04 ~ 2018.08</h4>
                        <h3>담당업무 : 솔루션 기능 추가 개발, 고객사 ERP 시스템 연동, 보안 취약점 조치 등</h3>
                        <h4>사용기술 : Egov 3.7(Spring), jsp, jQuery, Polymer, Oracle</h4>
                        <a class="del" href="javascript:void(0);">소스공개 불가</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="Contact">
        </div>
    </div>
</div>
</body>
</html>