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
            }).on('click','a',function(){
                location.href='list.html'
            });
        });
        $('#footer').load('header_footer.html #footer');
        //cookie登录
        var cookies=document.cookie;
        cookies=cookies.split('; ');
        cookies.forEach(function(item,idx){
            var arr=item.split('=');
            if(arr[0]==='UserName'){
                autoLogIn(arr[1])
            }
        });
        function autoLogIn(UserName){
                location.href='../index.html?UserName='+UserName;
        }
        var phone;
        //手机号是否存在
        $('.m1 input').change(function(){
            phone=$(this).val().trim();
            if(/^1[\d]{10}$/.test(phone)){
                $.ajax({
                    url: '../api/MySQL/log_in.php',
                    data: {UserName:phone},
                    success:function(res) {
                        if(res=='yes'){
                            $('.m1 .check').removeClass('error').addClass('right');
                        }else{
                            $('.m1 .check').removeClass('right').addClass('error');
                        }
                    }
                })
            }else{
                $('.m1 .check').removeClass('right').addClass('error');
            }
        });
        // 提交
        $('#submit').on('click',function(){
            var psw=$('.m2 input').val().trim();
            if($('.register_in .right').length==1){
                $.ajax({
                    url: '../api/MySQL/log_in.php',
                    data: {
                        UserName:phone,
                        PassWord:psw,
                        submit:'yes'
                    },
                    success:function(res){
                        if(res==='success'){
                             if($('.m3 input').prop('checked')){
                                var now=new Date();
                                now.setDate(now.getDate()+7);
                                document.cookie='UserName='+phone+';expires='+now.toUTCString()+';path=/';
                             }
                             location.href='../index.html?UserName='+phone;
                         }else if(res==='fail'){
                              $('.m2 .check').removeClass('right').addClass('error');
                         }
                    }
                });  
            }
        });
    });
});