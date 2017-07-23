SET NAMES UTF8;
DROP DATABASE IF EXISTS product;
CREATE DATABASE product CHARSET=UTF8;
USE product;

/*用户表，产品表，购物车表，购物车详情表*/
/*用户表*/
CREATE TABLE te_user(
    uid INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(32),/*用户名*/
    upwd VARCHAR(32),/*密码*/
    email VARCHAR(32)/*电话*/
);
INSERT INTO te_user VALUES
(1,'admin@126.com','123456','13555555555'),
(2,'test@qq.com','112233','13612345678');


/*产品表*/
CREATE TABLE te_product(
    pid INT PRIMARY KEY AUTO_INCREMENT,
    pname VARCHAR(64),/*产品名*/
    pic VARCHAR(64),/*主图片*/
    type INT,/*类型，1-汽车，2-充电站*/
    model VARCHAR(64),/*型号*/
    func VARCHAR(64),/*功能*/
    price FLOAT(10,2),/*价格*/
    detail VARCHAR(2048)/*详情*/
);
INSERT INTO te_product VALUES
(NULL,'MODEL S','../img/background.jpg','1','ModelS','自适应大灯、HEPA空气过滤、电动全轮驱动、触摸屏','723,500.00','<p>其安全性能主要得益于独特的电子传动系统。该系统位于车辆铝制乘员舱底部，并封装于单独壳体内。这一独特的布置，用可以吸收冲击力的硼钢轨取代了笨重的发动机缸体，降低了汽车重心，从而提高操控性能，最大程度的降低翻车风险。当遭遇侧面碰撞时，经钢轨加固的铝柱可有效减少侵入，从而保护乘员舱和电池组，同时提高车顶强度。发生事故时，六个安全气囊会保护前排和后排乘员，电池系统会自动切断主电源。自动辅助转向系统每小时最大速限提升至 150 公里、自动变道、召唤(测试版) 以及自动紧急制动。</p>'),
(NULL,'MODELX','../img/background.jpg','1','ModelX','主动安全防护、HEPA空气过滤、低风阻、开阔的视野','873,850.00','<p>电池组位于车辆底部，这使 Model X 的重心比同类 SUV 更低， 可减少 50% 的侧翻风险。独特的电池结构有助于 Model X 抵御侧面碰撞时的变形侵入。由于没有燃油发动机，前备箱可在正面碰撞时充当缓冲区，有效吸收撞击能量。拥有全景式挡风玻璃，整块玻璃从前舱盖根部一直延伸至车顶。置身驾驶舱内，天空和星辰一览无余。优化的防晒隔热玻璃膜，零阻碍的视野，为驾驶者及乘客带来无限开阔的视觉体验。</p>'),
(NULL,'MODEL3','../img/background.jpg','1','Model3','可持续能源、超级充电、5个座椅','600,000.00','<p>结合了实用电池续航、动力性能、安全配置，以及宽敞空间的高级轿车。作为特斯拉家族中价格最亲民的车型，Model 3 单次充电能够行驶 345 公里以上，而起售价仅为 35,000 美元（美国地区）。我们还致力于将 Model 3 打造为一款在所有安全测试类别中均能获得最高评级的车型。</p>'),
(NULL,'超级充电站','../img/background.jpg','2','M8088A','免费超级充电额度、超级充电技术、超级充电网络','1599.00','<p>为您的长途驾驶提供充电保障。在超级充电站，Model S 和 Model X 可快速充电，充满仅需几十分钟。 充电站的选址通常位于餐厅、购物中心、WiFi 热点等附近，方便您停车休息。每个超级充电站均建有多个充电桩，车辆快速补充电量后便可继续您的旅程。</p>'),
(NULL,'ENERGY','../img/background.jpg','2','M8088A','太阳能瓦片、运营效率高、洁净、更富弹性','合格级','1599.00','<p>结合太阳能使用，不仅可以存储丰富的太阳能，还能减轻对化石燃料的依赖。太阳能瓦片，装饰你的屋顶。 该产品将于2017 年年中开始投产。</p>'),
(NULL,'LW2家用除甲醛静音M-8088A','LW2带“大脑”的空气净化器','product-imgs/lw-yl5334e.jpg','2','M8088A','定时、除甲醛、杀菌','19-60dB','690m³/小时','商用、家用','41㎡-60㎡','合格级','1599.00','<p>家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。</p><img src="product-imgs/m8088a/01.jpg" alt=""/><img src="product-imgs/m8088a/02.jpg" alt=""/><img src="product-imgs/m8088a/03.jpg" alt=""/><img src="product-imgs/m8088a/04.jpg" alt=""/><img src="product-imgs/m8088a/05.jpg" alt=""/><img src="product-imgs/m8088a/06.jpg" alt=""/>'),
(NULL,'5家用除甲醛静音M-8088A','5带“大脑”的空气净化器','product-imgs/jhq-m8088a.jpg','1','M8088A','定时、除甲醛、杀菌','19-60dB','690m³/小时','商用、家用','41㎡-60㎡','合格级','1599.00','<p>家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。</p><img src="product-imgs/m8088a/01.jpg" alt=""/><img src="product-imgs/m8088a/02.jpg" alt=""/><img src="product-imgs/m8088a/03.jpg" alt=""/><img src="product-imgs/m8088a/04.jpg" alt=""/><img src="product-imgs/m8088a/05.jpg" alt=""/><img src="product-imgs/m8088a/06.jpg" alt=""/>'),
(NULL,'6家用除甲醛静音M-8088A','6带“大脑”的空气净化器','product-imgs/jhq-sy101.jpg','1','M8088A','定时、除甲醛、杀菌','19-60dB','690m³/小时','商用、家用','41㎡-60㎡','合格级','1599.00','<p>家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。</p><img src="product-imgs/m8088a/01.jpg" alt=""/><img src="product-imgs/m8088a/02.jpg" alt=""/><img src="product-imgs/m8088a/03.jpg" alt=""/><img src="product-imgs/m8088a/04.jpg" alt=""/><img src="product-imgs/m8088a/05.jpg" alt=""/><img src="product-imgs/m8088a/06.jpg" alt=""/>'),
(NULL,'LW3家用除甲醛静音M-8088A','LW3带“大脑”的空气净化器','product-imgs/lw-yl6334e.jpg','2','M8088A','定时、除甲醛、杀菌','19-60dB','690m³/小时','商用、家用','41㎡-60㎡','合格级','1599.00','<p>家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。</p><img src="product-imgs/m8088a/01.jpg" alt=""/><img src="product-imgs/m8088a/02.jpg" alt=""/><img src="product-imgs/m8088a/03.jpg" alt=""/><img src="product-imgs/m8088a/04.jpg" alt=""/><img src="product-imgs/m8088a/05.jpg" alt=""/><img src="product-imgs/m8088a/06.jpg" alt=""/>'),
(NULL,'7家用除甲醛静音M-8088A','7带“大脑”的空气净化器','product-imgs/jhq-yl121.jpg','1','M8088A','定时、除甲醛、杀菌','19-60dB','690m³/小时','商用、家用','41㎡-60㎡','合格级','1599.00','<p>家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。</p><img src="product-imgs/m8088a/01.jpg" alt=""/><img src="product-imgs/m8088a/02.jpg" alt=""/><img src="product-imgs/m8088a/03.jpg" alt=""/><img src="product-imgs/m8088a/04.jpg" alt=""/><img src="product-imgs/m8088a/05.jpg" alt=""/><img src="product-imgs/m8088a/06.jpg" alt=""/>'),
(NULL,'8家用除甲醛静音M-8088A','8带“大脑”的空气净化器','product-imgs/jhq-yl5334e.jpg','1','M8088A','定时、除甲醛、杀菌','19-60dB','690m³/小时','商用、家用','41㎡-60㎡','合格级','1599.00','<p>家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。</p><img src="product-imgs/m8088a/01.jpg" alt=""/><img src="product-imgs/m8088a/02.jpg" alt=""/><img src="product-imgs/m8088a/03.jpg" alt=""/><img src="product-imgs/m8088a/04.jpg" alt=""/><img src="product-imgs/m8088a/05.jpg" alt=""/><img src="product-imgs/m8088a/06.jpg" alt=""/>'),
(NULL,'LW4家用除甲醛静音M-8088A','LW4带“大脑”的空气净化器','product-imgs/lw-yl121.jpg','2','M8088A','定时、除甲醛、杀菌','19-60dB','690m³/小时','商用、家用','41㎡-60㎡','合格级','1599.00','<p>家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。</p><img src="product-imgs/m8088a/01.jpg" alt=""/><img src="product-imgs/m8088a/02.jpg" alt=""/><img src="product-imgs/m8088a/03.jpg" alt=""/><img src="product-imgs/m8088a/04.jpg" alt=""/><img src="product-imgs/m8088a/05.jpg" alt=""/><img src="product-imgs/m8088a/06.jpg" alt=""/>'),
(NULL,'9家用除甲醛静音M-8088A','9带“大脑”的空气净化器','product-imgs/jhq-yl6334e.jpg','1','M8088A','定时、除甲醛、杀菌','19-60dB','690m³/小时','商用、家用','41㎡-60㎡','合格级','1599.00','<p>家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。</p><img src="product-imgs/m8088a/01.jpg" alt=""/><img src="product-imgs/m8088a/02.jpg" alt=""/><img src="product-imgs/m8088a/03.jpg" alt=""/><img src="product-imgs/m8088a/04.jpg" alt=""/><img src="product-imgs/m8088a/05.jpg" alt=""/><img src="product-imgs/m8088a/06.jpg" alt=""/>'),
(NULL,'10家用除甲醛静音M-8088A','10带“大脑”的空气净化器','product-imgs/jhq-yl7099h.jpg','1','M8088A','定时、除甲醛、杀菌','19-60dB','690m³/小时','商用、家用','41㎡-60㎡','合格级','1599.00','<p>家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。</p><img src="product-imgs/m8088a/01.jpg" alt=""/><img src="product-imgs/m8088a/02.jpg" alt=""/><img src="product-imgs/m8088a/03.jpg" alt=""/><img src="product-imgs/m8088a/04.jpg" alt=""/><img src="product-imgs/m8088a/05.jpg" alt=""/><img src="product-imgs/m8088a/06.jpg" alt=""/>'),
(NULL,'LW5家用除甲醛静音M-8088A','LW5带“大脑”的空气净化器','product-imgs/lw-yl7099h.jpg','2','M8088A','定时、除甲醛、杀菌','19-60dB','690m³/小时','商用、家用','41㎡-60㎡','合格级','1599.00','<p>家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。</p><img src="product-imgs/m8088a/01.jpg" alt=""/><img src="product-imgs/m8088a/02.jpg" alt=""/><img src="product-imgs/m8088a/03.jpg" alt=""/><img src="product-imgs/m8088a/04.jpg" alt=""/><img src="product-imgs/m8088a/05.jpg" alt=""/><img src="product-imgs/m8088a/06.jpg" alt=""/>'),
(NULL,'11家用除甲醛静音M-8088A','11带“大脑”的空气净化器','product-imgs/lw-h6.jpg','1','M8088A','定时、除甲醛、杀菌','19-60dB','690m³/小时','商用、家用','41㎡-60㎡','合格级','1599.00','<p>家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。</p><img src="product-imgs/m8088a/01.jpg" alt=""/><img src="product-imgs/m8088a/02.jpg" alt=""/><img src="product-imgs/m8088a/03.jpg" alt=""/><img src="product-imgs/m8088a/04.jpg" alt=""/><img src="product-imgs/m8088a/05.jpg" alt=""/><img src="product-imgs/m8088a/06.jpg" alt=""/>'),
(NULL,'12家用除甲醛静音M-8088A','12带“大脑”的空气净化器','product-imgs/lw-m8088a.jpg','1','M8088A','定时、除甲醛、杀菌','19-60dB','690m³/小时','商用、家用','41㎡-60㎡','合格级','1599.00','<p>家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。</p><img src="product-imgs/m8088a/01.jpg" alt=""/><img src="product-imgs/m8088a/02.jpg" alt=""/><img src="product-imgs/m8088a/03.jpg" alt=""/><img src="product-imgs/m8088a/04.jpg" alt=""/><img src="product-imgs/m8088a/05.jpg" alt=""/><img src="product-imgs/m8088a/06.jpg" alt=""/>'),
(NULL,'LW6家用除甲醛静音M-8088A','LW6带“大脑”的空气净化器','product-imgs/lw-yl121.jpg','2','M8088A','定时、除甲醛、杀菌','19-60dB','690m³/小时','商用、家用','41㎡-60㎡','合格级','1599.00','<p>家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。</p><img src="product-imgs/m8088a/01.jpg" alt=""/><img src="product-imgs/m8088a/02.jpg" alt=""/><img src="product-imgs/m8088a/03.jpg" alt=""/><img src="product-imgs/m8088a/04.jpg" alt=""/><img src="product-imgs/m8088a/05.jpg" alt=""/><img src="product-imgs/m8088a/06.jpg" alt=""/>'),
(NULL,'13家用除甲醛静音M-8088A','13带“大脑”的空气净化器','product-imgs/jhq-at50.jpg','1','M8088A','定时、除甲醛、杀菌','19-60dB','690m³/小时','商用、家用','41㎡-60㎡','合格级','1599.00','<p>家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。</p><img src="product-imgs/m8088a/01.jpg" alt=""/><img src="product-imgs/m8088a/02.jpg" alt=""/><img src="product-imgs/m8088a/03.jpg" alt=""/><img src="product-imgs/m8088a/04.jpg" alt=""/><img src="product-imgs/m8088a/05.jpg" alt=""/><img src="product-imgs/m8088a/06.jpg" alt=""/>'),
(NULL,'14家用除甲醛静音M-8088A','14带“大脑”的空气净化器','product-imgs/jhq-at88f.jpg','1','M8088A','定时、除甲醛、杀菌','19-60dB','690m³/小时','商用、家用','41㎡-60㎡','合格级','1599.00','<p>家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。</p><img src="product-imgs/m8088a/01.jpg" alt=""/><img src="product-imgs/m8088a/02.jpg" alt=""/><img src="product-imgs/m8088a/03.jpg" alt=""/><img src="product-imgs/m8088a/04.jpg" alt=""/><img src="product-imgs/m8088a/05.jpg" alt=""/><img src="product-imgs/m8088a/06.jpg" alt=""/>'),
(NULL,'LW7家用除甲醛静音M-8088A','LW7带“大脑”的空气净化器','product-imgs/lw-yl5334e.jpg','2','M8088A','定时、除甲醛、杀菌','19-60dB','690m³/小时','商用、家用','41㎡-60㎡','合格级','1599.00','<p>家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。</p><img src="product-imgs/m8088a/01.jpg" alt=""/><img src="product-imgs/m8088a/02.jpg" alt=""/><img src="product-imgs/m8088a/03.jpg" alt=""/><img src="product-imgs/m8088a/04.jpg" alt=""/><img src="product-imgs/m8088a/05.jpg" alt=""/><img src="product-imgs/m8088a/06.jpg" alt=""/>'),
(NULL,'15家用除甲醛静音M-8088A','15带“大脑”的空气净化器','product-imgs/jhq-fa50.jpg','1','M8088A','定时、除甲醛、杀菌','19-60dB','690m³/小时','商用、家用','41㎡-60㎡','合格级','1599.00','<p>家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。</p><img src="product-imgs/m8088a/01.jpg" alt=""/><img src="product-imgs/m8088a/02.jpg" alt=""/><img src="product-imgs/m8088a/03.jpg" alt=""/><img src="product-imgs/m8088a/04.jpg" alt=""/><img src="product-imgs/m8088a/05.jpg" alt=""/><img src="product-imgs/m8088a/06.jpg" alt=""/>'),
(NULL,'16家用除甲醛静音M-8088A','16带“大脑”的空气净化器','product-imgs/jhq-h6.jpg','1','M8088A','定时、除甲醛、杀菌','19-60dB','690m³/小时','商用、家用','41㎡-60㎡','合格级','1599.00','<p>家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。</p><img src="product-imgs/m8088a/01.jpg" alt=""/><img src="product-imgs/m8088a/02.jpg" alt=""/><img src="product-imgs/m8088a/03.jpg" alt=""/><img src="product-imgs/m8088a/04.jpg" alt=""/><img src="product-imgs/m8088a/05.jpg" alt=""/><img src="product-imgs/m8088a/06.jpg" alt=""/>'),
(NULL,'LW8家用除甲醛静音M-8088A','LW8带“大脑”的空气净化器','product-imgs/lw-yl6334e.jpg','2','M8088A','定时、除甲醛、杀菌','19-60dB','690m³/小时','商用、家用','41㎡-60㎡','合格级','1599.00','<p>家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。家用除甲醛静音M-8088A，带大脑的空气净化器。</p><img src="product-imgs/m8088a/01.jpg" alt=""/><img src="product-imgs/m8088a/02.jpg" alt=""/><img src="product-imgs/m8088a/03.jpg" alt=""/><img src="product-imgs/m8088a/04.jpg" alt=""/><img src="product-imgs/m8088a/05.jpg" alt=""/><img src="product-imgs/m8088a/06.jpg" alt=""/>');


/*购物车表*/
CREATE TABLE te_cart(
    cid INT PRIMARY KEY AUTO_INCREMENT,
    userId INT /*用户id*/
);
INSERT INTO te_cart VALUES
(101,1),
(102,2);

/*购物车详情表*/
CREATE TABLE te_cart_detail(
    did INT PRIMARY KEY AUTO_INCREMENT,
    cartId INT,/*购物车id*/
    productId INT,/*产品id*/
    count INT /*数量*/
);
INSERT INTO te_cart_detail VALUES
(NULL,101,1,2);
