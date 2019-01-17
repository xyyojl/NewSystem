// header js
//导航栏鼠标移动
$("nav > ul > li").click(function(){
    $(this).addClass("active").siblings().removeClass("active");
});

$('#search_news_form').submit(function(e){
    alert("这个功能尚未实现，敬请期待！！！");
});


