require(['config'],function(){
    require(['jquery','zoom'],function($){
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
            //用户名
            if(/\?/.test(location.href)){
                var url_b=location.href.indexOf('?');
                var url_e=location.href.indexOf('#');
                var phrase=location.href.slice(url_b+1,url_e);
                phrase.split('&').forEach(function(item,idx){
                    var arr=item.split('=');
                    if(arr[0]==='UserName'){
                        $('#phoneName').html('尊敬的<i>'+arr[1]+'</i>用户').addClass('pN');
                    }
                })
            }
        })
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
        // 拿到URL的参数信息
        if(/\?/.test(location.href)){
            var goods_obj={};
            var url_b=location.href.indexOf('?');
            var url_e=location.href.indexOf('#');
            if(url_e==-1){
               var phrase=location.href.slice(url_b+1); 
            }else{
               var phrase=location.href.slice(url_b+1,url_e); 
            }      
            phrase.split('&').forEach(function(item,idx){
                var arr=item.split('=');
                goods_obj[arr[0]]=arr[1];
            })
        }
        var data;
        //根据参数请求商品数据
        if(goods_obj.from=='list'){
            var dataAsk={id:goods_obj.id}
        }else{
            var dataAsk={gN:goods_obj.gN,model:goods_obj.model};
        }
        $.ajax({
            url: '../api/MySQL/details.php',
            dataType: 'json',
            data: dataAsk,
            success:function(res){
                data=res;
                $('.p1 .name').text(res[0].name);
                $('.p2 .op').html('<del>'+res[0].op+'</del>');
                $('.p3 .np').text(res[0].np);
                var html=`<div class="gi">
                            <img src="${res[0].img1}"/>
                            <img src="${res[0].img2}"/>
                            <img src="${res[0].img3}"/>
                            <img src="${res[0].img4}"/>
                            <img src="${res[0].img5}"/>
                            <img src="${res[0].img6}"/>
                          </div>`;
                $('.goodsimg').html(html).on('click','img',function(){
                    $('.bimg img').attr('src',$(this).attr('src'));
                });
                $('.bimg img').attr('src',res[0].img1);
            }
        });
        //商品小图选择
        $('.prev').click(function(){
            $('.gi').stop().animate({left:0},800);
        });
        $('.next').click(function(){
            $('.gi').stop().animate({left:-186},800);
        })
        //放大镜
        $('.bimg').myZoom({'width':420,'height':420});
        //首饰材质选择
        $('.p7').on('click','span',function(){
            $(this).addClass('active').siblings('').removeClass('active');
        })
        //收藏
        $('.collect').click(function(){
            if(!goods_obj.UserName){
                location.href='register.html';
            }else{
                $(this).toggleClass('a2');
            }
        });
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
                
            }
        });
        setTimeout(()=>{$('#carnumber').text(buy_qty);},1000);
        $('.incar').click(function(){
            //加入购物车效果
            $img=$('.bimg img');
            var $copyImg = $img.clone();
                $copyImg.css({
                    position:'absolute',
                    left:$img.offset().left,
                    top:$img.offset().top,
                    width:$img.outerWidth()
                });
            $('body').append($copyImg);
            $copyImg.animate({left:$('.cart').offset().left,top:$('.cart').offset().top,width:30},1000,function(){$copyImg.remove();});
            //购买商品存入cookie
            for(var i=0;i<buylist.length;i++){
                if(buylist[i].id === data[0].id){
                    buylist[i].qty++;
                    break;
                }
            }
            if(i===buylist.length){
                var buy={   
                    id:data[0].id,
                    name:data[0].name,
                    op:data[0].op,
                    np:data[0].np,
                    qty:1,
                    img:data[0].img1
                };
                buylist.push(buy);
            }
            var now=new Date();
            now.setDate(now.getDate()+7);
            document.cookie = 'buylist='+JSON.stringify(buylist)+';expires='+now.toUTCString()+';path=/';
            $('#carnumber').text(++buy_qty);
        });
        
    });
});