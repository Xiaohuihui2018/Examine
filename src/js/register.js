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
        //生成随机验证码
        var Vcode;
        function creatVcode(){
            Vcode='';
            var str='abcdefghijklmnopqrstuvwxyzABCTEFGHIJKLMNOPQRSTUVWXYZ0123456789';
             for(var i=0;i<4;i++){
                var code=str.charAt(parseInt(Math.random()*str.length));
                Vcode+=code;
            }
            $('#vcode').text(Vcode);
        }
        creatVcode();
        $('#vcode').click(function(){
            creatVcode();
        });
        $('#chC').click(function(){
            creatVcode();
        });
        //手机验证
        // $('.m1 input').blur(function(){
        //     var phone=$(this).val().trim();
        //     // $.ajax({
        //     //     url: '../api/data/register.php',
        //     //     type: 'POST',
        //     //     data: {phone:phone},
        //     //     success:function(res) {
        //     //     console.log(res);}
        //     // });
        // });
        //验证码校对
        $('#cv').change(function(){
            var user_V=$(this).val().trim();
            if(user_V.length !=4){
                $('.m2 .check').removeClass('right').addClass('error');
                return;
            }
            var reg=new RegExp(user_V,'i');
            if(reg.test(Vcode)){
                $('.m2 .check').removeClass('error').addClass('right');
            }else{$('.m2 .check').removeClass('right').addClass('error');}
        });
        //短信验证
        var phoneC;
        function creatPhoneCode(){
            phoneC='';
            var strNum='0123456789';
            for(var i=0;i<6;i++){
            phoneC+=strNum.charAt(parseInt(Math.random()*strNum.length));
            }
            alert('欢迎注册戴欧妮珠宝，您的手机验证码是 '+phoneC +',验证码有效期30分钟，请不要泄漏给他人。');
        }
        $('.m3 span').last().click(function(){
            $(this).addClass('active');
            creatPhoneCode();
        })
        $('#msVoce').change(function(){
            if($(this).val().trim()==phoneC){
                $('.m3 .check').removeClass('error').addClass('right');
            }else{
                $('.m3 .check').removeClass('right').addClass('error');
            }
        });
        //密码验证
        var psw1;
        $('.m4 input').change(function(){
            psw1=$(this).val().trim();
            if(/^[a-zA-Z\d]{6,20}$/.test(psw1)){
                $('.m4 .check').removeClass('error').addClass('right');
            }else{
                $('.m4 .check').removeClass('right').addClass('error');
            }
        });
        $('.m5 input').change(function(){
            var psw2=$(this).val().trim();
            psw1===psw2 ? $('.m5 .check').removeClass('error').addClass('right') : $('.m5 .check').removeClass('right').addClass('error');
        });
        //同意协议
        $('.m6 input').click(function() {
            if($(this).prop('checked')==true){
                $('.m6 input').removeClass('error').addClass('right');
            }else{
                $('.m6 input').removeClass('right').addClass('error');
            }
        });
        //同意注册判断
        $('#submit').click(function(){
            console.log($('.register_in .right').length)
            if($('.register_in .right').length==5){
                console.log('符合')
            }else{
                console.log('不符合');
            }

        });
    });
});