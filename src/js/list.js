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
        //封装请求函数
        var maxNum=8;
        function ajax(){
            $.ajax({
                url: '../api/MySQL/list.php',
                dataType: 'json',
                data: {pageNo:page_no,num:num},
                success:function(data){
                    var html=data.res.map(function(item){
                        return `<li data-id=${item.id}>
                                    <img src="${item.img1}"/>
                                    <p><span class="op">市场价:<del>￥<i>${item.op}</i></del></span><span   class="np">商城价:<i>￥${item.np}</i></span></p>
                                </li>`;
                    }).join('');
                    maxNum=Math.ceil(data.total/num)
                    $('.pageT').text(maxNum);
                    $('.goods ul').html(html).on('click','li',function(){
                        location.href='details.html?id='+$(this).attr('data-id')+'&from=list';
                    });
                }
            });
        };
        //请求列表页商品数据
        var page_no=1;var num=12;
        ajax();
        //普通页码点击
        $('.page').on('click','.pn',function(){
            page_no=$(this).text();
            var actnum=$(this).attr('data-id'); 
            $('.P2 .pn').eq(actnum).addClass('active').siblings().removeClass('active');
            $('.P1 .pn').eq(actnum).addClass('active').siblings().removeClass('active');
            ajax();
        });
        //下一页点击
        $('.next').click(function(){
            if($('.P1 .pn').eq(6).text()<maxNum-1){
                $.each($('.pn').not('.pageT'),function(idx,item){
                    var no=$(item).text();
                    $(item).text(++no);
                });
                $.each($('.P1 .pn'),function(idx,item){
                    if($(item).hasClass('active')){
                        page_no=$(item).text();
                    }
                });
                ajax();
            }
        });
    });
});