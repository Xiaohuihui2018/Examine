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
        $('#footer').load('footer.html #footer',function(){
            $.ajax({
                url: '../api/MySQL/city.php',
                dataType: 'json',
                success:function(data){
                    $('.city').on('mouseenter','span',function(){
                     var cityName=$(this).text();
                        for(var i=0;i<data.length;i++){
                            if(cityName==data[i].city){
                                var ps=$('.address').children();
                                ps.first().text(data[i].ad1);
                                ps.eq(1).text(data[i].ad2);
                                ps.eq(2).text(data[i].ad3);
                                ps.last().text(data[i].ad4);
                                $('.city_img img').attr('src',"../"+data[i].img);
                                return ;
                            }
                        }
                    });
                }
            });
        });
        //珠宝箱数据
        var buylist=[];
        var buy_qty=0;
        var cookies = document.cookie;
        cookies = cookies.split('; ');
        cookies.forEach(function(item){
            var arr = item.split('=');
            if(arr[0] === 'buylist'){
                buylist= JSON.parse(arr[1]);
                buylist.forEach(function(item){
                    buy_qty+=item.qty*1;
                });
                setTimeout(()=>{$('#carnumber').text(buy_qty);},1000);
            }
        });
        //由COOKIE生成页面数据
        if(buylist.length>0){
            var html=buylist.map(function(item){
            return `<div class="g1">
                        <span data-id=${item.id}><img src="${item.img}"/></span>
                        <span>${item.name}</span>
                        <span><del>${item.op}</del></span>
                        <span>${item.op-item.np}</span>
                        <span>${item.np}</span>
                        <span>${item.qty}</span>
                        <span class="del">删除</span>
                    </div>`;
            }).join('');
            $('.buy').html(html);
            $('.s1 i').text(buy_qty);
            function cal(){
                var total1=0;
                var cut=0;
                var total2=0;
                buylist.forEach(function(item){
                    total1+=item.qty*item.op;
                    total2+=item.qty*item.np;   
                });
                cut=total1-total2;
                $('.s4 i').text('￥'+total1);
                $('.s6 i').text('￥'+total2);
                $('.s5 i').text('￥'+cut);
            }
           cal(); 
           //删除单件商品  
            $('.buy').on('click','.del',function(){
                var delId=$(this).siblings().first().attr('data-id');
                buylist.forEach(function(item,idx){
                    if(item.id===delId){
                        buy_qty=buy_qty-item.qty;
                        $('#carnumber').text(buy_qty);
                        buylist.splice(idx,1);
                    }
                });
                var now=new Date();
                buylist.length==0 ?  now.setDate(now.getDate()-7) : now.setDate(now.getDate()+7);
                document.cookie = 'buylist='+JSON.stringify(buylist)+';expires='+now.toUTCString()+';path=/';
                cal();
                $(this).parent('div').remove();
            });
            //清空购物车
            $('.s2').click(function(){
                var now=new Date();
                now.setDate(now.getDate()-7);
                document.cookie = 'buylist='+JSON.stringify(buylist)+';expires='+now.toUTCString()+';path=/';
                $('.buy div').remove();
                $('#carnumber').text('0');
                $('.s1 i').text('0');
                $('.s4 i').text('￥0');
                $('.s6 i').text('￥0');
                $('.s5 i').text('￥0');
            });
        };
    });
});