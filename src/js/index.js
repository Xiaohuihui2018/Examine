require(['config'],function(){
    require(['jquery','carousel'],function($){
        if(/\?/.test(location.href)){
            var num=location.href.indexOf('?');
            var phoneN=location.href.substr(num+10,11);
            $('#phoneName').html('尊敬的<i>'+phoneN+'</i>用户').addClass('pN');
        }
        //二级导航
        var timer_nav;
        $('h1').mouseenter(function() {
            clearTimeout(timer_nav);
            $('.categor').slideDown(300);
        }).mouseleave(function() {
            timer_nav=setTimeout(function(){$('.categor').slideUp(300)},500);
        }).on('click','a',function(){
            location.href='html/list.html'
        });
        // 轮播图
        $('#banner').carousel_ZSH({
            width:1263,
            change:true,
            height:480,
            imgs:['img/banner1.jpg','img/banner2.jpg','img/banner3.jpg','img/banner4.jpg','img/banner6.jpg'],
            page:true,
            type:'horizontal'
        });
    //主要数据Ajax请求
    $.ajax({
            url: '../api/MySQL/index.php',
            dataType:'json',
            success:function(res) {
               //模块1
                var html1=`<div class="container clearfix">
                <div class="kind">
                    <div class="more"><a href="html/list.html"><img src="${res[0].more}"/></a></div>
                    <div class="name_kind">
                        <span>女戒</span>
                        <span>男戒</span>
                        <span>对戒</span>
                    </div>
                    <div class="price_kind">
                        <span>1000元以下</span>
                        <span>1000-1999元</span>
                        <span>2000-2999元</span>
                        <span>3000元以上</span>
                    </div>
                </div>
                <div class="show_img">
                    <a href="html/list.html"><img src="${res[0].show_img}"/></a>
                </div>
                <div class="goods_show clearfix">
                    <div class="g1"><img src="${res[0].g1}"/></div>
                    <div class="g2"><img src="${res[0].g2}"/></div>
                    <div class="g3"><img src="${res[0].g3}"/></div>
                    <div class="g4"><img src="${res[0].g4}"/></div>
                    <div class="g5"><img src="${res[0].g5}"/></div>
                </div>
                </div>`;
                    $('#main1').html(html1);

               //模块2
                    var html2=`<div class="container clearfix">
                    <div class="kind">
                        <div class="more"><a href="html/list.html"><img src="${res[1].more}"/></a></div>
                        <div class="name_kind">
                            <span>18K</span>
                            <span>钻石</span>   
                        </div>
                        <div class="price_kind">
                            <span>3000-5000元</span>
                            <span>5000元以上</span>
                        </div>
                    </div>
                    <div class="goods_show clearfix">
                        <div class="g1"><img src="${res[1].g1}"/></div>
                        <div class="g2"><img src="${res[1].g2}"/></div>
                        <div class="g3"><img src="${res[1].g3}"/></div>
                        <div class="g4"><img src="${res[1].g4}"/></div>
                        <div class="g5"><img src="${res[1].g5}"/></div>
                    </div>
                    <div class="show_img">
                        <a href="html/list.html"><img src="${res[1].show_img}"/></a>
                    </div>
                    </div>`;
                    $('#main2').html(html2);    
              //模块3
                var html3=`<div class="container clearfix">
                <div class="kind">
                    <div class="more"><a href="html/list.html"><img src="${res[2].more}"/></a></div>
                    <div class="name_kind">
                        <span>碧玺</span>
                        <span>红宝石</span>
                        <span>蓝宝石</span>
                        <span>芙蓉石</span>
                    </div>
                    <div class="price_kind">
                        <span>1000-2000</span>
                        <span>2000-3000元</span>
                        <span>3000-5000</span>
                        <span>5000元以上</span>
                    </div>
                </div>
                <div class="show_img">
                    <a href="html/list.html"><img src="${res[2].show_img}"/></a>
                </div>
                <div class="goods_show clearfix">
                    <div class="g1"><img src="${res[2].g1}"/></div>
                    <div class="g2"><img src="${res[2].g2}"/></div>
                    <div class="g3"><img src="${res[2].g3}"/></div>
                    <div class="g4"><img src="${res[2].g4}"/></div>
                    <div class="g5"><img src="${res[2].g5}"/></div>
                </div>
                </div>`;
                $('#main3').html(html3); 
            //模块4
                var html4=`<div class="container clearfix">
                <div class="kind">
                    <div class="more"><a href="html/list.html"><img src="${res[3].more}"/></a></div>
                    <div class="name_kind">
                        <span>珍珠吊坠</span>
                        <span>珍珠耳饰</span>
                    </div>
                    <div class="price_kind">
                        <span>1000-2000</span>
                        <span>2000-3000元</span>
                        <span>3000-5000</span>
                        <span>5000元以上</span>
                    </div>
                </div>
                <div class="goods_show clearfix">
                    <div class="g1"><img src="${res[3].g1}"/></div>
                    <div class="g2"><img src="${res[3].g2}"/></div>
                    <div class="g3"><img src="${res[3].g3}"/></div>
                    <div class="g4"><img src="${res[3].g4}"/></div>
                    <div class="g5"><img src="${res[3].g5}"/></div>
                </div>
                <div class="show_img">
                    <a href="html/list.html"><img src="${res[3].show_img}"/></a>
                </div>
                </div>`;
                $('#main4').html(html4);

            //模块5
                var html5=`<div class="container clearfix">
                <div class="kind">
                    <div class="more"><a href="html/list.html"><img src="${res[4].more}"/></a></div>
                    <div class="name_kind">
                        <span>投资金条</span>
                        <span>黄金饰品</span>
                    </div>
                    <div class="price_kind">
                        <span>1000元以下</span>
                        <span>1000-1999元</span>
                        <span>2000-2999元</span>
                        <span>3000元以上</span>
                    </div>
                </div>
                <div class="goods_show clearfix">
                    <div class="g1"><img src="${res[4].g1}"/></div>
                    <div class="g2"><img src="${res[4].g2}"/></div>
                    <div class="g3"><img src="${res[4].g3}"/></div>
                    <div class="g4"><img src="${res[4].g4}"/></div>
                    <div class="g5"><img src="${res[4].g5}"/></div>
                </div>
                <div class="show_img">
                    <a href="html/list.html"><img src="${res[4].show_img}"/></a>
                </div>
               </div>`; 
               $('#main5').html(html5);
            }
    });    
    //商品点击跳转详情页
        $('.main').on('click','.g1,.g2,.g3,.g4,.g5',function(){
            var phrase='gN='+this.className+'&model='+$(this).parents('.main').get(0).id+'&from=index';
            if(/\?/.test(location.href)){
                var num=location.href.indexOf('?');
                var phoneN=location.href.substr(num+10,11);
                var url_='html/details.html?UserName='+phoneN+'&';           
            }else{
                var url_='html/details.html?';
            }
            location.href=url_+phrase;         
        });   
        //门店信息（数量较少，故不用Ajax请求）
         $.ajax({
                url: '/api/MySQL/city.php',
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
});