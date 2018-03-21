SET NAMES UTF8;
DROP DATABASE IF EXISTS jf;
CREATE DATABASE jf CHARSET=UTF8;
USE jf;
CREATE TABLE jf_user(
	uid INT(11) PRIMARY KEY AUTO_INCREMENT,
	uname VARCHAR(128) DEFAULT NULL,
	upwd VARCHAR(32) DEFAULT NULL,      
	rname VARCHAR(128) DEFAULT NULL,
	gander TINYINT(1) DEFAULT NULL,
        portrait VARCHAR(128) DEFAULT NULL,
	location VARCHAR(256) DEFAULT NULL,
	brithday BIGINT DEFAULT NULL,
	zname VARCHAR(128) DEFAULT NULL
);
INSERT INTO jf_user VALUES(1,"13978965234",123456,"","","","","","");
INSERT INTO jf_user VALUES(2,"18779865689",123456,"","","","","","");
INSERT INTO jf_user VALUES(3,"18794648925",123456,"","","","","","");
INSERT INTO jf_user VALUES(5,"294468735@qq.com",123456,"","","","","","");
INSERT INTO jf_user VALUES(6,"29443657@qq.com",123456,"","","","","","");
INSERT INTO jf_user VALUES(7,"6353468735@qq.com",123456,"","","","","","");
CREATE TABLE jf_exercise_equipment_family(
        fid INT PRIMARY KEY AUTO_INCREMENT,
        fname VARCHAR(32)
);
INSERT INTO jf_exercise_equipment_family VALUES(1,'核心训练器材');
INSERT INTO jf_exercise_equipment_family VALUES(2,'力量训练器材');
INSERT INTO jf_exercise_equipment_family VALUES(3,'平衡稳定器材');
INSERT INTO jf_exercise_equipment_family VALUES(4,'敏捷训练器材');
INSERT INTO jf_exercise_equipment_family VALUES(5,'柔韧放松器材');
INSERT INTO jf_exercise_equipment_family VALUES(6,'负重装备器材');
INSERT INTO jf_exercise_equipment_family VALUES(7,'抗阻力性器材');
INSERT INTO jf_exercise_equipment_family VALUES(8,'辅助训练器材');
INSERT INTO jf_exercise_equipment_family VALUES(9,'配套器材');
CREATE TABLE jf_exercise_equipment(
        lid INT PRIMARY KEY AUTO_INCREMENT,		#商品编号
	fid INT DEFAULT NULL,				#商品类型
	title VARCHAR(128) DEFAULT NULL,		#商品名称
	product_code VARCHAR(64) DEFAULT NULL,		#商品货号
        price decimal(10,2) default NULL,		#商品价格
	evaluate INT DEFAULT NULL,                      #累计评论
	sales  INT DEFAULT NULL,                        #累计销量
        norms1 VARCHAR(32) default NULL,                #商品规格1
	norms2 VARCHAR(32) default NULL,                #商品规格2
	norms3 VARCHAR(32) default NULL,                #商品规格3
	norms4 VARCHAR(32) default NULL,                #商品规格4
	count INT DEFAULT NULL,                         #库存
	is_onsale TINYINT(1) DEFAULT NULL               #是否特价
);
INSERT INTO jf_exercise_equipment VALUES(1,1,'JOINFIT振动棒 飞力仕棒 飞棒','JC001A-JC001D','205','125','124','绿色','','','',63,1);
INSERT INTO jf_exercise_equipment VALUES(2,1,'JOINFIT振动片','JC015A/JC015B','389','125','125','红色','','','',85,1);
INSERT INTO jf_exercise_equipment VALUES(3,1,'JOINFIT双用核心能量双轮','JC002A','418','142','45','黄色','','','',98,1);
INSERT INTO jf_exercise_equipment VALUES(4,1,'JOINFIT 核心单轮','JC017','359','121','11','黑色','','','',112,0);
INSERT INTO jf_exercise_equipment VALUES(5,1,'JOINFIT 专利设计 阻力摩擦系统 FRICTION 互搏带','JC026','540','124','68','黑色','','','',121,0);
INSERT INTO jf_exercise_equipment VALUES(6,1,'JOINFIT 悬吊拉力器套装 Hangflex','JC027','678.6','121','88','黑色','','','',122,0);
INSERT INTO jf_exercise_equipment VALUES(7,1,'JOINFIT（专业款）悬吊带','JC003G','403','185','114','黑色','','','',112,1);
INSERT INTO jf_exercise_equipment VALUES(8,1,'JOINFIT 迷彩版悬吊带','JC003B-2','286','135','86','黑色','','','',121,1);
INSERT INTO jf_exercise_equipment VALUES(9,1,'JOINFIT新款滑轮高难度悬挂带','JC003F-1','345','251','112','黑色','','','',100,1);
INSERT INTO jf_exercise_equipment VALUES(10,1,'JOINFIT 核心战车','JC031','444','215','168','黑色','','','',41,1);
INSERT INTO jf_exercise_equipment VALUES(11,1,'JOINFIT多级别阻力训练棒','JC004B','307','254','97','黑色','','','',97,0);
INSERT INTO jf_exercise_equipment VALUES(12,1,'JOINFIT悬挂固定器 固定扣','JC012','46','125','121','黑色','','','',87,1);
INSERT INTO jf_exercise_equipment VALUES(13,1,'JOINFIT 滑行盘','JC030A-JC030B','144','125','124','粉色','','','',96,0);
INSERT INTO jf_exercise_equipment VALUES(14,1,'JOINFIT瑞士训练球，健身球 瑜伽球（防爆磨砂面）','JC006A-JC006E','81','122','99','粉色','','','',272,0);
INSERT INTO jf_exercise_equipment VALUES(15,1,'JOINFIT专业款加厚瑞士训练球，健身球 瑜伽球（防爆光面）','JC014A-JC014C','144','187','171','橘色','','','',89,1);
INSERT INTO jf_exercise_equipment VALUES(16,1,'JOINFIT 台湾进口药球 高弹性药球 2磅-20磅','JC029A-JC029I','277','224','197','2LB','','','',460,1);
INSERT INTO jf_exercise_equipment VALUES(17,2,'JOINFIT（专业款）悬吊带','JC003G','403','196','126','黑色','','','',112,1);
INSERT INTO jf_exercise_equipment VALUES(18,2,'JOINFIT 健身房计时器','PG021A-PG021C','845','145','77','1.8英寸6位显示计时器','','','',30,1);
INSERT INTO jf_exercise_equipment VALUES(19,2,'JOINFIT药球弹床','JM015B','2499','19','85','52','','','',99,1);
INSERT INTO jf_exercise_equipment VALUES(20,2,'JOINFIT 黑色木质跳箱','JC003G','1000','125','15','黑色','','','',13,1);
INSERT INTO jf_exercise_equipment VALUES(21,2,'JOINFIT 跳箱套装','JA028A','4450','96','55','黑色','','','',10,1);
INSERT INTO jf_exercise_equipment VALUES(22,2,'JOINFIT 四合一跳箱','JA028','8459','251','135','黑色','','','',15,1);
INSERT INTO jf_exercise_equipment VALUES(23,2,'JOINFIT 可调节训练凳','JA020B','3769','371','198','黑色','','','',15,1);
INSERT INTO jf_exercise_equipment VALUES(24,2,'JOINFIT 哑铃平板凳','JM049B','2016','266','79','黑色','','','',23,1);
INSERT INTO jf_exercise_equipment VALUES(25,2,'JOINFIT 龙门架','JM051','469','258','178','黑色','','','',12,1);
INSERT INTO jf_exercise_equipment VALUES(26,2,'JOINFIT 深蹲架','JM047B','3599','152','45','黑色','','','',14,1);
INSERT INTO jf_exercise_equipment VALUES(27,2,'JOINFIT横向移动跳跃台','JS010','2340','152','15','黑色','','','',100,0);
INSERT INTO jf_exercise_equipment VALUES(28,2,'JOINFIT 三角训练雪撬','JS002C','1999','152','34','黑色','','','',12,1);
INSERT INTO jf_exercise_equipment VALUES(29,2,'JOINFIT爆发力训练粗绳（专业级大力量训练）配外层护套','JS005A1-JS005L','547','152','152','黑色','','','',207,1);
INSERT INTO jf_exercise_equipment VALUES(30,2,'JOINFIT攀爬绳','JS023A-JS023','261','152','34','黑色','','','',24,1);
INSERT INTO jf_exercise_equipment VALUES(31,2,'JOINFIT 款可调节大力量不稳定轮胎','JS050','4336','123','251','黑色','','','',25,1);
INSERT INTO jf_exercise_equipment VALUES(32,2,'JOINFIT 功能训练水柱（SWT）','JS013A-JS013C','649','127','35','黑色','','','',36,0);
INSERT INTO jf_exercise_equipment VALUES(33,3,'JOINFIT专业版半圆平衡球 进口半球','JB002B-1/JB002B-2','921','178','87','黑色','','','',223,1);
INSERT INTO jf_exercise_equipment VALUES(34,3,'美国原装进口半球 BOSU','JB011A-JB011B','324','152','78','黑色','','','',52,1);
INSERT INTO jf_exercise_equipment VALUES(35,3,'JOINFIT 船形平衡板','JB016','889','154','92','黑色','','','',32,1);
INSERT INTO jf_exercise_equipment VALUES(36,3,'JOINFIT大型平衡垫','JB003A','345','528','347','黑色','','','',100,0);
INSERT INTO jf_exercise_equipment VALUES(37,3,'JOINFIT半圆平衡柱 浮点半圆轴','JB008A/JB008B','87','158','58','黑色','','','',85,1);
INSERT INTO jf_exercise_equipment VALUES(38,4,'JOINFIT 六边形敏捷圈','JA022','560','','','黑色','','','',52,1);
INSERT INTO jf_exercise_equipment VALUES(39,4,'JOINFIT 12只套装 敏捷圈 纵横多向步伐灵敏训练必备','JA001C','199','963','131','黑色','','','',112,1);
INSERT INTO jf_exercise_equipment VALUES(40,4,'JOINFIT 专业款敏捷绳梯','JA024A-JA024VD','154','178','153','黑色','','','',152,1);
INSERT INTO jf_exercise_equipment VALUES(41,4,'JOINFIT  进口 敏捷训练 标志线','JA006','178','684','258','黑色','','','',45,1);
INSERT INTO jf_exercise_equipment VALUES(42,4,'JOINFIT小跨栏架  敏捷栏架','JA012H-JA012N','299','258','46','黑色','','','',112,0);
INSERT INTO jf_exercise_equipment VALUES(43,4,'JOINFIT 40只套装  软式标志碟 敏捷训练标示 竞技训练器材 ','JA008V','154','82','79','黑色','','','',154,1);
INSERT INTO jf_exercise_equipment VALUES(44,4,'JOINFIT Dome Cone Set软式半圆标志碗','JA015','599','785','48','黑色','','','',112,1);
INSERT INTO jf_exercise_equipment VALUES(45,5,'JOINFIT 鹅卵石垫','JAT036A/JAT036B','199','358','97','黑色','','','',112,1);
INSERT INTO jf_exercise_equipment VALUES(46,5,'JOINFIT 专业按摩球','JF001-1/JF001-2','599','287','8','黑色','','','',112,0);
INSERT INTO jf_exercise_equipment VALUES(47,5,'JOINFIT EPP 花生按摩球  黑红色','JF046','599','287','78','黑色','','','',112,0);
INSERT INTO jf_exercise_equipment VALUES(48,5,'OINFIT 台湾进口二合一按摩球','JF039','964','852','778','黑色','','','',112,1);
INSERT INTO jf_exercise_equipment VALUES(49,5,'JOINFIT扳机点硬质按摩球 8字按摩球','JF030A','569','195','85','黑色','','','',112,1);
INSERT INTO jf_exercise_equipment VALUES(50,5,'JOINFIT  进口 肌肉按摩球 颈椎按摩球 三合一专业按摩训练球套装','JF026A','599','285','82','黑色','','','',112,1);
INSERT INTO jf_exercise_equipment VALUES(51,5,'JOINFIT 手持按摩器','JF050A-JF050C','965','78','82','黑色','','','',34,1);
INSERT INTO jf_exercise_equipment VALUES(52,6,'JOINFIT软胶负重衣','JW002A-JW002D','256','25','17','黑色','','','',58,1);
INSERT INTO jf_exercise_equipment VALUES(53,6,'JOINFIT 三杠沙袋','JW008A-JW008B','198','15','28','黑色','','','',48,1);
INSERT INTO jf_exercise_equipment VALUES(54,6,'JOINFIT 软胶护腕','JW011A','756','856','58','黑色','','','',35,1);
INSERT INTO jf_exercise_equipment VALUES(55,6,'JOINFIT  软胶负重腰带','JW013A','420','782','525','黑色','','','',87,1);
INSERT INTO jf_exercise_equipment VALUES(56,6,'JOINFIT 软胶沙袋 ','JW004A-JW004D','568','11','5','黑色','','','',56,1);
INSERT INTO jf_exercise_equipment VALUES(57,7,'JOINFIT健身棒','JR001V4/JR001V5/JR001V5','324','151','5','黑色','','','',32,1);
INSERT INTO jf_exercise_equipment VALUES(58,7,'JOINFIT TPE防滑弹力带','JR025','754','458','22','黑色','','','',112,1);
INSERT INTO jf_exercise_equipment VALUES(59,7,'JOINFIT 15米成卷弹力带','JR004A-JR004E','235','125','21','黑色','','','',356,1);
INSERT INTO jf_exercise_equipment VALUES(60,7,'JOINFIT 5米弹力带','JR046B5-JR046B25','432','82','20','黑色','','','',134,1);
INSERT INTO jf_exercise_equipment VALUES(61,7,'JOINFIT 乳胶圈 迷你训练带','JR007A-JR007I','146','152','25','黑色','','','',234,1);

#创建图片表
CREATE TABLE jf_pic(
     pid  INT PRIMARY KEY AUTO_INCREMENT,
     lid1  INT DEFAULT NULL,
     pic1  VARCHAR(128) DEFAULT NULL,
     pic2  VARCHAR(128) DEFAULT NULL,
     pic3  VARCHAR(128) DEFAULT NULL
);
INSERT INTO  jf_pic VALUES(1,1,'img/478_thumb_P_1476636000437.jpg','img/478_thumb_P_1476924542287.jpg','img/478_thumb_P_1476924529298.jpg');
INSERT INTO  jf_pic VALUES(2,2,'img/493_thumb_P_1476636001630.jpg','img/493_thumb_P_1476925033462.jpg','');
INSERT INTO  jf_pic VALUES(3,3,'img/479_thumb_P_1476636000161.jpg','img/479_thumb_P_1478902483339.jpg','img/479_thumb_P_1478902482284.jpg');
INSERT INTO  jf_pic VALUES(4,4,'img/805_thumb_P_1478911928264.jpg','','');
INSERT INTO  jf_pic VALUES(5,5,'img/470_thumb_P_1476636000743.jpg','img/470_thumb_P_1478912186616.jpg','img/470_thumb_P_1478912185428.jpg');
INSERT INTO  jf_pic VALUES(6,6,'img/475_thumb_P_1476636000304.jpg','','');
INSERT INTO  jf_pic VALUES(7,7,'img/481_thumb_P_1479257341418.jpg','img/481_thumb_P_1479257342525.jpg','img/481_thumb_P_1479257341752.jpg');
INSERT INTO  jf_pic VALUES(8,8,'img/889_thumb_P_1480009046044.jpg','','');
INSERT INTO  jf_pic VALUES(9,9,'img/482_thumb_P_1476636000367.jpg','','');
INSERT INTO  jf_pic VALUES(10,10,'img/900_thumb_P_1500252640864.jpg','','');
INSERT INTO  jf_pic VALUES(11,11,'img/483_thumb_P_1476636000293.jpg','img/483_thumb_P_1479258786142.jpg','img/483_thumb_P_1479258787288.jpg');
INSERT INTO  jf_pic VALUES(12,12,'img/490_thumb_P_1476636001323.jpg','img/490_thumb_P_1479259136318.jpg','img/490_thumb_P_1479259136160.jpg');
INSERT INTO  jf_pic VALUES(13,13,'img/890_thumb_P_1480010669868.jpg','img/890_thumb_P_1480009377097.jpg','');
INSERT INTO  jf_pic VALUES(14,14,'img/485_thumb_P_1476636000924.jpg','img/485_thumb_P_1479259641208.jpg','img/485_thumb_P_1479259641340.jpg');
INSERT INTO  jf_pic VALUES(15,15,'img/492_thumb_P_1479259983340.jpg','img/492_thumb_P_1479259984626.jpg','img/492_thumb_P_1479259984742.jpg');
INSERT INTO  jf_pic VALUES(16,16,'img/804_thumb_P_1476818637818.jpg','img/804_thumb_P_1476818638609.jpg','img/804_thumb_P_1476818638446.jpg');
INSERT INTO  jf_pic VALUES(17,17,'img/552_thumb_P_1479607503393.jpg','','');
INSERT INTO  jf_pic VALUES(18,18,'img/808_thumb_P_1479434537736.jpg','','');
INSERT INTO  jf_pic VALUES(19,19,'img/536_thumb_P_1479434998254.jpg','img/536_thumb_P_1479435003420.jpg','');
INSERT INTO  jf_pic VALUES(20,20,'img/811_thumb_P_1479498235183.jpg','','');
INSERT INTO  jf_pic VALUES(21,21,'img/904_thumb_P_1500415080262.jpg','','');
INSERT INTO  jf_pic VALUES(22,22,'img/812_thumb_P_1479499317219.jpg','','');
INSERT INTO  jf_pic VALUES(23,23,'img/906_thumb_P_1500326030474.jpg','','');
INSERT INTO  jf_pic VALUES(24,24,'img/905_thumb_P_1500325912685.jpg','','');
INSERT INTO  jf_pic VALUES(25,25,'img/891_thumb_P_1480009533988.jpg','','');
INSERT INTO  jf_pic VALUES(26,26,'img/749_thumb_P_1476636006535.jpg','','');
INSERT INTO  jf_pic VALUES(27,27,'img/524_thumb_P_1479500826557.jpg','img/524_thumb_P_1479500826004.jpg','img/524_thumb_P_1479500827192.jpg');
INSERT INTO  jf_pic VALUES(28,28,'img/780_thumb_P_1476636007291.jpg','img/780_thumb_P_1476919209380.jpg','img/780_thumb_P_1476919209208.jpg');
INSERT INTO  jf_pic VALUES(29,29,'img/543_thumb_P_1479502591733.jpg','img/543_thumb_P_1479502591962.jpg','img/543_thumb_P_1479502592431.jpg');
INSERT INTO  jf_pic VALUES(30,30,'img/519_thumb_P_1479503044564.jpg','img/519_thumb_P_1479503045982.jpg','img/519_thumb_P_1479503045237.jpg');
INSERT INTO  jf_pic VALUES(31,31,'img/816_thumb_P_1479504376897.jpg','','');
INSERT INTO  jf_pic VALUES(32,32,'img/468_thumb_P_1476636000886.jpg','img/468_thumb_P_1479504657204.jpg','img/468_thumb_P_1479504662155.jpg');
INSERT INTO  jf_pic VALUES(33,33,'img/561_thumb_P_1476636001312.jpg','','');
INSERT INTO  jf_pic VALUES(34,34,'img/838_thumb_P_1479611071447.jpg','','');
INSERT INTO  jf_pic VALUES(35,35,'img/894_thumb_P_1480010929753.jpg','','');
INSERT INTO  jf_pic VALUES(36,36,'img/562_thumb_P_1476636002600.jpg','','');
INSERT INTO  jf_pic VALUES(37,37,'img/572_thumb_P_1476636002915.jpg','','');
INSERT INTO  jf_pic VALUES(38,38,'img/592_thumb_p_1476636002797.jpg','img/592_thumb_p_1479674318897.jpg','img/592_thumb_p_1479674318897.jpg');
INSERT INTO  jf_pic VALUES(39,39,'img/577_thumb_p_1476636002306.jpg','','');
INSERT INTO  jf_pic VALUES(40,40,'img/579_thumb_p_1479674545620.jpg','img/579_thumb_p_1476636002488.jpg','');
INSERT INTO  jf_pic VALUES(41,41,'img/908_thumb_p_1502652970153.jpg','','');
INSERT INTO  jf_pic VALUES(42,42,'img/587_thumb_p_1479680628517.jpg','img/587_thumb_p_1476636002509.jpg','img/587_thumb_p_1479680628740.jpg');
INSERT INTO  jf_pic VALUES(43,43,'img/578_thumb_p_1479678415978.jpg','img/578_thumb_p_1479678416502.jpg','img/578_thumb_p_1479678416502.jpg');
INSERT INTO  jf_pic VALUES(44,44,'img/590_thumb_p_1476636002111.jpg','img/590_thumb_p_1479678597459.jpg','img/590_thumb_p_1479678597065.jpg');
INSERT INTO  jf_pic VALUES(45,45,'img/572_thumb_P_1476636002915.jpg','','');
INSERT INTO  jf_pic VALUES(46,46,'img/842_thumb_p_1479681982173.jpg','','');
INSERT INTO  jf_pic VALUES(47,47,'img/843_thumb_p_1479682527903.jpg','','');
INSERT INTO  jf_pic VALUES(48,48,'img/793_thumb_p_1476636007363.jpg','img/793_thumb_p_1476905428307.jpg','img/793_thumb_p_1476905429867.jpg');
INSERT INTO  jf_pic VALUES(49,49,'img/785_thumb_p_1476636007285.jpg','img/785_thumb_p_1476917218252.jpg','img/785_thumb_p_1476917219970.jpg');
INSERT INTO  jf_pic VALUES(50,50,'img/597_thumb_p_1476636002064.jpg','img/597_thumb_p_1479682744363.jpg','img/597_thumb_p_1479682744363.jpg');
INSERT INTO  jf_pic VALUES(51,51,'img/785_thumb_p_1476636007285.jpg','img/596_thumb_p_1476636002938.jpg','img/596_thumb_p_1479682924936.jpg');
INSERT INTO  jf_pic VALUES(52,52,'img/632_thumb_p_1479766961547.jpg','img/632_thumb_p_1479766992247.jpg','img/632_thumb_p_1479766981338.jpg');
INSERT INTO  jf_pic VALUES(53,53,'img/634_thumb_p_1476636003611.jpg','img/634_thumb_p_1479769997496.jpg','');
INSERT INTO  jf_pic VALUES(54,54,'img/639_thumb_p_1479773853989.jpg','img/639_thumb_p_1479773853976.jpg','img/639_thumb_p_1479773853976.jpg');
INSERT INTO  jf_pic VALUES(55,55,'img/640_thumb_p_1479767895422.jpg','img/640_thumb_p_1479767877733.jpg','');
INSERT INTO  jf_pic VALUES(56,56,'img/518_thumb_p_1506619909791.jpg','img/518_thumb_p_1506619891198.jpg','img/518_thumb_p_1506619891850.jpg');
INSERT INTO  jf_pic VALUES(57,57,'img/642_thumb_p_1476636003538.jpg','img/642_thumb_p_1479776525234.jpg','');
INSERT INTO  jf_pic VALUES(58,58,'img/872_thumb_p_1479835119030.jpg','','');
INSERT INTO  jf_pic VALUES(59,59,'img/873_thumb_p_1479835471008.jpg','','');
INSERT INTO  jf_pic VALUES(60,60,'img/873_thumb_p_1479835471008.jpg','','');
INSERT INTO  jf_pic VALUES(61,61,'img/874_thumb_p_1479835728263.jpg','','');
INSERT INTO  jf_pic VALUES(62,62,'img/878_thumb_p_1479837610896.jpg','','');
INSERT INTO  jf_pic VALUES(63,63,'img/843_thumb_p_1479682527903.jpg','','');
INSERT INTO  jf_pic VALUES(64,64,'img/843_thumb_p_1479682527903.jpg','','');
INSERT INTO  jf_pic VALUES(65,65,'img/843_thumb_p_1479682527903.jpg','','');
INSERT INTO  jf_pic VALUES(66,66,'img/843_thumb_p_1479682527903.jpg','','');
INSERT INTO  jf_pic VALUES(67,67,'img/843_thumb_p_1479682527903.jpg','','');
#创建图片表
CREATE TABLE jf_detail_pic(
     pid  INT PRIMARY KEY AUTO_INCREMENT,
     lid1  INT DEFAULT NULL,
     pic1  VARCHAR(128) DEFAULT NULL,
     pic2  VARCHAR(128) DEFAULT NULL,
     pic3  VARCHAR(128) DEFAULT NULL
);
#创建购物车
CREATE TABLE jf_shopping_item(
     sid  INT(11) PRIMARY KEY AUTO_INCREMENT,
     uid  INT(11) DEFAULT NULL,
     lid  INT(11) DEFAULT NULL,
     counts INT(11) DEFAULT NULL,
     is_checked TINYINT(1) DEFAULT NULL
);
INSERT INTO  jf_shopping_item VALUES(1,1,2,12,0);
INSERT INTO  jf_shopping_item VALUES(2,5,3,11,0);
INSERT INTO  jf_shopping_item VALUES(3,8,6,13,1);
INSERT INTO  jf_shopping_item VALUES(4,6,2,2,0);
INSERT INTO  jf_shopping_item VALUES(5,7,9,1,1);
INSERT INTO  jf_shopping_item VALUES(6,2,12,1,0);
INSERT INTO  jf_shopping_item VALUES(7,3,62,4,0);
INSERT INTO  jf_shopping_item VALUES(8,4,12,3,1);
INSERT INTO  jf_shopping_item VALUES(9,5,14,6,0);
INSERT INTO  jf_shopping_item VALUES(10,6,2,4,1);
INSERT INTO  jf_shopping_item VALUES(11,2,9,2,0);
INSERT INTO  jf_shopping_item VALUES(13,3,1,3,1);
#创建收藏表
CREATE TABLE jf_collect(
     cid  INT(11) PRIMARY KEY AUTO_INCREMENT,
     uid  INT(11) DEFAULT NULL,
     lid  INT(11) DEFAULT NULL
);
INSERT INTO  jf_collect VALUES(1,1,2);
INSERT INTO  jf_collect VALUES(2,3,4);
INSERT INTO  jf_collect VALUES(3,4,6);
INSERT INTO  jf_collect VALUES(4,5,7);
INSERT INTO  jf_collect VALUES(5,8,1);
INSERT INTO  jf_collect VALUES(6,3,3);



