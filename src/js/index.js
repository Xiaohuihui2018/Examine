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
                        console.log(res);
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
        $('.city').on('mouseenter','span',function(){
            var cityName=$(this).text();
            // $('.address p').text('');
            for(var i=0;i<cityData.length;i++){
                if(cityName==cityData[i].city){
                    var ps=$('.address').children();
                    ps.first().text(cityData[i].ad1);
                    ps.eq(1).text(cityData[i].ad2);
                    ps.eq(2).text(cityData[i].ad3);
                    ps.last().text(cityData[i].ad4);
                    console.log(cityData[i].img)
                    $('.city_img img').attr('src',cityData[i].img);
                    return ;
                }
            }
        });
        var cityData=[
            {   city:'北京',
                ad1:'北京·朝阳区旗舰店 体验中心',
                ad2:'北京市西城区新街口南大街61号',
                ad3:'周一至周日 9:30-20:00',
                ad4:'咨询电话：15117991700',
                img:'img/beijing.jpg'
            },{ city:'深圳',
                ad1:'广东·深圳总部',
                ad2:'广东省深圳市南山区创业路中兴工业城9栋601',
                ad3:'',
                ad4:'',
                img:'img/shenzhen.jpg'
            },{ city:'天津',
                ad1:'天津·天津分店 体验中心',
                ad2:'天津市和平区南京路诚基中心3-2-3905',
                ad3:'周一至周日 9:30-20:00',
                ad4:'咨询电话：13212055648',
                img:'img/tianjin.jpg'
            },{ city:'成都',
                ad1:'四川·成都锦江区春熙路分店 体验中心',
                ad2:'成都市锦江区春熙路小科甲巷1号第一城A座9楼12室（伊势丹和伊藤洋华堂背后',
                ad3:'周一至周日 9:30-20:00',
                ad4:'咨询电话：18081059929',
                img:'img/chengdu.jpg'
            },{ city:'温州',
                ad1:'浙江·温州市旗舰店 体验中心',
                ad2:'浙江省温州市人民中路环球大厦807室',
                ad3:'周一至周日 9:30-20:00',
                ad4:'咨询电话：13957766656',
                img:'img/zhejiang.jpg' 
            },{ city:'江苏',
                ad1:'江苏·南京南站分店 体验中心',
                ad2:'江苏省南京雨花区明发商业广场4栋404室',
                ad3:'周一至周日 9:30-20:00',
                ad4:'咨询电话：13705150120',
                img:'img/jiangsu.jpg'
            },{ city:'福建',
                ad1:'福建·福州分店 体验中心',
                ad2:'福州市仓山区金辉天鹅湾8号楼605店（乐购旁）',
                ad3:'周一至周日 9:30-20:00',
                ad4:'咨询电话：13305016641',
                img:'img/fujian.jpg' 
            },{ city:'海南',
                ad1:'海南·海口分店 体验中心',
                ad2:'海南省海口市海秀路18号鑫源温泉大酒店20层',
                ad3:'周一至周日 9:30-20:00',
                ad4:'咨询电话：13337600086',
                img:'img/hainan.jpg'  
            },{ city:'重庆',
                ad1:'重庆·沙坪坝分店 体验中心',
                ad2:'重庆市沙坪坝三峡广场王府井B座16-4（入口王府井国美旁）',
                ad3:'周一至周日 9:30-20:00',
                ad4:'咨询电话：13708393217',
                img:'img/chongqin.jpg'
            },{ city:'河北',
                ad1:'河北·秦皇岛茂业分店 体验中心',
                ad2:'河北省秦皇岛市海港区文化路139号茂业百货金都大厦15层1522室',
                ad3:'周一至周日 9:30-20:00',
                ad4:'咨询电话：13833524801',
                img:'img/hebei.jpg' 
            },{ city:'江西',
                ad1:'江西·南昌旗舰店 体验中心',
                ad2:'江西省南昌市中山路地王广场写字楼8-H（中山路洪客隆楼上）',
                ad3:'周一至周日 9:30-20:00',
                ad4:'咨询电话：18679167500',
                img:'img/jiangxi.jpg' 
            }
        ];
    });
});