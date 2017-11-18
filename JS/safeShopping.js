//美丽方案
$(function(){
    $("ul.case-box").on("mouseenter","li",function(){
        $(this).toggleClass("active");

    }).on("mouseleave","li",function(){
        $(this).toggleClass("active");

    });

    $(".item-list").on("mouseenter","li",function(){
        $(this).addClass("active").find(".son").stop(true).animate({marginLeft:0},1000);
    }).on("mouseleave","li",function(){
        $(this).removeClass("active").find(".son").stop(true).animate({marginLeft:30},1000);
    });


})