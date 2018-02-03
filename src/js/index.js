require(['config'],function(){
    require(['jquery','carousel'],function($){
        //二级导航
        var timer_nav;
        $('h1').mouseenter(function() {
            clearTimeout(timer_nav);
            $('.categor').slideDown(300);
        }).mouseleave(function() {
            timer_nav=setTimeout(function(){$('.categor').slideUp(300)},500);
        });
        // 轮播图
        $('#banner').carousel_ZSH({
            width:1280,
            change:true,
            height:480,
            imgs:['img/banner1.jpg','img/banner2.jpg','img/banner3.jpg','img/banner4.jpg','img/banner6.jpg'],
            page:true,
            type:'horizontal'
        });
        
    });
});