require(['config'],function(){
    require(['jquery'],function($){
        $('#header').load('header_footer.html #header',function(){
            //二级导航
            var timer_nav;
            $('h1').mouseenter(function() {
                clearTimeout(timer_nav);
                $('.categor').slideDown(300);
            }).mouseleave(function() {
                timer_nav=setTimeout(function(){$('.categor').slideUp(300)},500);
            });
        });
        $('#footer').load('header_footer.html #footer');
        
    });
});