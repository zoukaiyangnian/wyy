SET NAMES UTF8;
DROP DATABASE IF EXISTS wyy;
CREATE DATABASE wyy CHARSET=UTF8;
USE wyy;
#用户信息
CREATE TABLE table_user(         
	uid INT PRIMARY KEY AUTO_INCREMENT,
	uname VARCHAR(32),
	upwd VARCHAR(32),
	email VARCHAR(64),
	phone VARCHAR(16),
	avatar VARCHAR(128),        #头像图片路径
	user_name VARCHAR(32),      #用户名，如王小明
	gender INT                  #性别  0-女  1-男
);
/**用户信息**/
INSERT INTO table_user VALUES
(1, 'dingding', '123456', 'ding@qq.com', '13501234567', 'NULL', '丁伟', '1'),
(2, 'dangdang', '123456', 'dang@qq.com', '13501234568', 'NULL', '林当', '1'),
(3, 'doudou', '123456', 'dou@qq.com', '13501234569', 'NULL', '窦志强', '1'),
(4, 'yaya', '123456', 'ya@qq.com', '13501234560', 'NULL', '秦小雅', '0');


#用户收藏
CREATE TABLE table_collect(
	cid INT PRIMARY KEY AUTO_INCREMENT, #收藏id
	uid INT NOT NULL DEFAULT 0,  #用户id
	mid INT NOT NULL DEFAULT 0,  #歌曲id
	sid INT NOT NULL DEFAULT 0,  #歌手id
	tid INT NOT NULL DEFAULT 0,  #新碟id
	v1  INT NOT NULL DEFAULT 0,  #显示
    v2  VARCHAR(255) NOT NULL DEFAULT ''  #备用
);
INSERT INTO table_collect (uid,mid,sid,tid)VALUES(1,1,1,1);
#歌手信息
CREATE TABLE table_singer(
	sid INT PRIMARY KEY AUTO_INCREMENT,
	singer_name VARCHAR(32),
	avatar VARCHAR(128),        #头像图片路径
	gender INT,                  #性别  0-女  1-男
	sort  VARCHAR(32)    #歌手类别
);
/**歌手信息**/
INSERT INTO table_singer VALUES
(1,'周杰伦','img/tx/zhoujielun.jpg',1,"华语男歌手"),
(2,'张惠妹','img/tx/zhanghuimei.jpg',0,"华语女歌手"),
(3,'孙楠','img/tx/sunnan.jpg',1,"华语男歌手"),
(4,'陈奕迅','img/tx/chenyixun.jpg',1,"华语男歌手"),
(NULL,'Fine乐团','img/tx/gs-01.jpg',1,"华语组合乐队"),
(NULL,'万晓利','img/tx/gs-02.jpg',1,"华语男歌手"),
(NULL,'赵雷','img/tx/gs-03.jpg',1,"华语男歌手"),
(NULL,'王三溥','img/tx/gs-04.jpg',1,"华语男歌手"),
(NULL,'吴莫愁','img/tx/gs-05.jpg',1,"华语女歌手"),
(NULL,'李霄云','img/tx/gs-06.jpg',1,"华语女歌手"),
(NULL,'老狼','img/tx/gs-07.jpg',1,"华语男歌手"),
(NULL,'陈楚生','img/tx/gs-08.jpg',1,"华语男歌手"),
(NULL,'胡夏','img/tx/gs-09.jpg',1,"华语男歌手"),
(NULL,'陶喆','img/tx/gs-10.jpg',1,"华语男歌手"),
(NULL,'蔡健雅','img/tx/gs-11.jpg',1,"华语男歌手"),
(NULL,'黄小琥','img/tx/gs-12.jpg',1,"华语女歌手"),
(NULL,'胡海泉','img/tx/gs-13.jpg',1,"华语组合乐队"),
(NULL,'杨宗纬','img/tx/gs-14.jpg',1,"华语男歌手"),
(NULL,'薛之谦','img/tx/gs-15.jpg',1,"华语男歌手"),
(NULL,'李荣浩','img/tx/gs-16.jpg',1,"韩国男歌手"),
(NULL,'Maroon 5','img/tx/gs-17.jpg',1,"其他组合乐队"),
(NULL,'G.E.M邓紫棋','img/tx/gs-18.jpg',1,"华语女歌手"),
(NULL,'陈粒','img/tx/gs-19.jpg',1,"华语男歌手"),
(NULL,'李志','img/tx/gs-20.jpg',1,"华语男歌手"),
(NULL,'王力宏','img/tx/gs-21.jpg',1,"华语男歌手"),
(NULL,'好妹妹乐队','img/tx/gs-22.jpg',1,"华语组合乐队"),
(NULL,'金玟岐','img/tx/gs-23.jpg',1,"华语女歌手"),
(NULL,'宋冬野','img/tx/gs-24.jpg',1,"华语男歌手"),
(NULL,'朴树','img/tx/gs-25.jpg',1,"华语男歌手"),
(NULL,'李健','img/tx/gs-26.jpg',1,"华语男歌手"),
(NULL,'许嵩','img/tx/gs-27.jpg',1,"华语男歌手"),
(NULL,'刘瑞琪','img/tx/gs-28.jpg',1,"华语女歌手"),
(NULL,'刘思涵','img/tx/gs-29.jpg',1,"华语女歌手"),
(NULL,'周传雄','img/tx/gs-30.jpg',1,"华语男歌手"),
(NULL,'逃跑计划','img/tx/gs-31.jpg',1,"其他组合乐队"),
(NULL,'Sunshine','img/tx/gs-32.jpg',1,"华语组合乐队"),
(NULL,'T-ara','img/tx/gs-33.jpg',1,"华语男歌手"),
(NULL,'张信哲','img/tx/gs-34.jpg',1,"华语男歌手"),
(NULL,'陈绮贞','img/tx/gs-35.jpg',1,"华语女歌手"),
(NULL,'方大同','img/tx/gs-36.jpg',1,"华语男歌手"),
(NULL,'谭维维','img/tx/gs-37.jpg',1,"华语女歌手"),
(NULL,'GALA','img/tx/gs-38.jpg',1,"其他男歌手"),
(NULL,'汪峰','img/tx/gs-39.jpg',1,"华语男歌手"),
(NULL,'牛奶咖啡','img/tx/gs-40.jpg',1,"其他组合乐队"),
(NULL,'石进','img/tx/gs-41.jpg',1,"华语男歌手"),
(NULL,'F.I.R','img/tx/gs-42.jpg',1,"华语男歌手"),
(NULL,'尧十三','img/tx/gs-43.jpg',1,"华语男歌手"),
(NULL,'TBBOYS','img/tx/gs-44.jpg',1,"华语组合乐队"),
(NULL,'洛天依','img/tx/gs-45.jpg',1,"华语女歌手"),
(NULL,'庄心妍','img/tx/gs-46.jpg',1,"华语女歌手"),
(NULL,'戴佩妮','img/tx/gs-47.jpg',1,"华语女歌手"),
(NULL,'花粥','img/tx/gs-48.jpg',1,"其他男歌手"),
(NULL,'王杰','img/tx/gs-49.jpg',1,"华语男歌手"),
(NULL,'周柏豪','img/tx/gs-50.jpg',1,"华语男歌手"),
(NULL,'潘玮柏','img/tx/gs-51.jpg',1,"华语男歌手"),
(NULL,'回音哥','img/tx/gs-52.jpg',1,"华语男歌手"),
(NULL,'胡彦斌','img/tx/gs-53.jpg',1,"华语男歌手"),
(NULL,'刘惜君','img/tx/gs-54.jpg',1,"华语女歌手"),
(NULL,'曹方','img/tx/gs-55.jpg',1,"华语男歌手"),
(NULL,'丢火车','img/tx/gs-56.jpg',1,"华语组合乐队"),
(NULL,'痛仰乐队','img/tx/gs-57.jpg',1,"华语组合乐队"),
(NULL,'赵照','img/tx/gs-58.jpg',1,"华语男歌手"),
(NULL,'卫兰','img/tx/gs-59.jpg',1,"华语女歌手"),
(NULL,'金志文','img/tx/gs-60.jpg',1,"华语男歌手"),
(NULL,'Lenka','img/tx/gs-61.jpg',1,"其他男歌手"),
(NULL,'孙露','img/tx/gs-62.jpg',1,"华语女歌手"),
(NULL,'齐秦','img/tx/gs-63.jpg',1,"华语男歌手"),
(NULL,'河图','img/tx/gs-64.jpg',1,"华语男歌手"),
(NULL,'银临','img/tx/gs-65.jpg',1,"华语男歌手"),
(NULL,'海龟先生','img/tx/gs-66.jpg',1,"华语男歌手"),
(NULL,'阿肆','img/tx/gs-67.jpg',1,"华语男歌手"),
(NULL,'程璧','img/tx/gs-68.jpg',1,"其他男歌手"),
(NULL,'陈鸿宇','img/tx/gs-69.jpg',1,"华语男歌手"),
(NULL,'彭佳慧','img/tx/gs-70.jpg',1,"华语女歌手"),
(NULL,'张碧晨','img/tx/gs-71.jpg',1,"华语女歌手"),
(NULL,'张赫宣','img/tx/gs-72.jpg',1,"华语女歌手"),
(NULL,'南征北战','img/tx/gs-73.jpg',1,"华语组合乐队"),
(NULL,'贰佰','img/tx/gs-74.jpg',1,"华语男歌手"),
(NULL,'徐佳莹','img/tx/gs-75.jpg',1,"华语女歌手"),
(NULL,'郑钧','img/tx/gs-76.jpg',1,"华语男歌手"),
(NULL,'HITA','img/tx/gs-77.jpg',1,"华语男歌手"),
(NULL,'戴荃','img/tx/gs-78.jpg',1,"其他男歌手"),
(NULL,'华晨宇','img/tx/gs-79.jpg',1,"华语男歌手"),
(NULL,'信乐团','img/tx/gs-80.jpg',1,"华语组合乐队"),
(NULL,'燕池','img/tx/gs-81.jpg',1,"华语男歌手"),
(NULL,'汪苏泷','img/tx/gs-82.jpg',1,"华语男歌手"),
(NULL,'凤凰传奇','img/tx/gs-83.jpg',1,"华语组合乐队"),
(NULL,'孙子涵','img/tx/gs-84.jpg',1,"华语男歌手"),
(NULL,'阿杜','img/tx/gs-85.jpg',1,"华语男歌手"),
(NULL,'音频怪物','img/tx/gs-86.jpg',1,"华语组合乐队"),
(NULL,'小曲儿','img/tx/gs-87.jpg',1,"华语男歌手"),
(NULL,'周笔畅','img/tx/gs-88.jpg',1,"华语女歌手"),
(NULL,'张震岳','img/tx/gs-89.jpg',1,"华语男歌手"),
(NULL,'旅行团','img/tx/gs-90.jpg',1,"华语男歌手"),
(NULL,'姚贝娜','img/tx/gs-91.jpg',1,"华语女歌手"),
(NULL,'蒋明','img/tx/gs-92.jpg',1,"华语男歌手"),
(NULL,'后弦','img/tx/gs-93.jpg',1,"华语女歌手"),
(NULL,'韩红','img/tx/gs-94.jpg',1,"华语女歌手"),
(NULL,'钟立风','img/tx/gs-95.jpg',1,"华语男歌手"),
(NULL,'左小祖咒','img/tx/gs-96.jpg',1,"华语组合乐队"),
(NULL,'邵夷贝','img/tx/gs-97.jpg',1,"华语男歌手"),
(NULL,'郝云','img/tx/gs-98.jpg',1,"华语男歌手"),
(NULL,'慕寒','img/tx/gs-99.jpg',1,"华语男歌手"),
(NULL,'何洁','img/tx/gs-100.jpg',1,"华语女歌手"),
(NULL,'弦子','img/tx/gs-101.jpg',1,"华语女歌手"),
(NULL,'李玟','img/tx/gs-102.jpg',1,"华语女歌手"),
(NULL,'不才','img/tx/gs-103.jpg',1,"华语男歌手"),
(NULL,'许飞','img/tx/gs-104.jpg',1,"华语男歌手"),
(NULL,'郑源','img/tx/gs-105.jpg',1,"华语男歌手"),
(NULL,'陈珊妮','img/tx/gs-106.jpg',1,"华语女歌手"),
(NULL,'李代沫','img/tx/gs-107.jpg',1,"华语男歌手"),
(NULL,'赖伟峰','img/tx/gs-108.jpg',1,"华语男歌手"),
(NULL,'杜婧荧','img/tx/gs-109.jpg',1,"华语女歌手"),
(NULL,'蔡淳佳','img/tx/gs-110.jpg',1,"华语男歌手"),
(NULL,'曾轶可','img/tx/gs-111.jpg',1,"华语女歌手"),
(NULL,'徐良','img/tx/gs-112.jpg',1,"华语男歌手"),
(NULL,'赵传','img/tx/gs-113.jpg',1,"华语男歌手"),
(NULL,'谢天笑','img/tx/gs-114.jpg',1,"华语男歌手"),
(NULL,'丽江小倩','img/tx/gs-115.jpg',1,"华语女歌手"),
(NULL,'魏晨','img/tx/gs-116.jpg',1,"华语男歌手"),
(NULL,'羽泉','img/tx/gs-117.jpg',1,"华语男歌手"),
(NULL,'尚雯婕','img/tx/gs-118.jpg',1,"华语女歌手"),
(NULL,'大乔小乔','img/tx/gs-119.jpg',1,"华语组合乐队"),
(NULL,'马条','img/tx/gs-120.jpg',1,"华语男歌手"),
(NULL,'少司命','img/tx/gs-121.jpg',1,"华语男歌手"),
(NULL,'五色石南叶','img/tx/gs-122.jpg',1,"华语男歌手"),
(NULL,'吴克群','img/tx/gs-123.jpg',1,"华语男歌手"),
(NULL,'魏新雨','img/tx/gs-124.jpg',1,"华语男歌手"),
(NULL,'叶蓓','img/tx/gs-125.jpg',1,"华语女歌手"),
(NULL,'王铮亮','img/tx/gs-126.jpg',1,"华语男歌手"),
(NULL,'韦礼安','img/tx/gs-127.jpg',1,"华语男歌手"),
(NULL,'任然','img/tx/gs-128.jpg',1,"华语男歌手"),
(NULL,'魏如萱','img/tx/gs-129.jpg',1,"华语女歌手"),
(NULL,'刘珂矣','img/tx/gs-130.jpg',1,"华语男歌手"),
(NULL,'言和','img/tx/gs-131.jpg',1,"华语男歌手"),
(NULL,'霍尊','img/tx/gs-132.jpg',1,"华语男歌手"),
(NULL,'布衣乐队','img/tx/gs-133.jpg',1,"华语组合乐队"),
(NULL,'徐誉滕','img/tx/gs-134.jpg',1,"华语男歌手"),
(NULL,'海鸣威','img/tx/gs-135.jpg',1,"华语男歌手"),
(NULL,'阿兰','img/tx/gs-136.jpg',1,"华语女歌手"),
(NULL,'杨坤','img/tx/gs-137.jpg',1,"华语男歌手"),
(NULL,'贰婶','img/tx/gs-138.jpg',1,"华语女歌手"),
(NULL,'萌萌哒天团','img/tx/gs-139.jpg',1,"华语组合乐队"),
(NULL,'周玥','img/tx/gs-140.jpg',1,"华语女歌手"),
(NULL,'二珂','img/tx/gs-141.jpg',1,"华语女歌手"),
(NULL,'孟庭苇','img/tx/gs-142.jpg',1,"华语女歌手"),
(NULL,'安来宁','img/tx/gs-143.jpg',1,"华语女歌手"),
(NULL,'艾尔肯','img/tx/gs-144.jpg',1,"华语男歌手"),
(NULL,'李行亮','img/tx/gs-145.jpg',1,"华语男歌手"),
(NULL,'VK克','img/tx/gs-146.jpg',1,"华语男歌手"),
(NULL,'樊凡','img/tx/gs-147.jpg',1,"华语男歌手"),
(NULL,'Jam','img/tx/gs-148.jpg',1,"华语男歌手"),
(NULL,'刘东明','img/tx/gs-149.jpg',1,"华语男歌手"),
(NULL,'吉克隽逸','img/tx/gs-150.jpg',1,"华语女歌手"),
(NULL,'黑豹乐队','img/tx/gs-151.jpg',1,"华语组合乐队"),
(NULL,'卡奇杜','img/tx/gs-152.jpg',1,"华语男歌手"),
(NULL,'小皮','img/tx/gs-153.jpg',1,"华语男歌手"),
(NULL,'大冰','img/tx/gs-154.jpg',1,"华语男歌手"),
(NULL,'曹轩宾','img/tx/gs-155.jpg',1,"华语男歌手"),
(NULL,'杨钰莹','img/tx/gs-156.jpg',1,"华语女歌手"),
(NULL,'伦桑','img/tx/gs-157.jpg',1,"华语男歌手"),
(NULL,'靳松','img/tx/gs-158.jpg',1,"华语男歌手"),
(NULL,'赵鹏','img/tx/gs-159.jpg',1,"华语男歌手"),
(NULL,'常石磊','img/tx/gs-160.jpg',1,"华语男歌手"),
(NULL,'小贱','img/tx/gs-161.jpg',1,"华语男歌手"),
(NULL,'梁晓雪','img/tx/gs-162.jpg',1,"华语女歌手"),
(NULL,'品冠','img/tx/gs-163.jpg',1,"华语男歌手"),
(NULL,'陈晓东','img/tx/gs-164.jpg',1,"华语男歌手"),
(NULL,'金池','img/tx/gs-165.jpg',1,"华语男歌手"),
(NULL,'伍思凯','img/tx/gs-166.jpg',1,"华语男歌手"),
(NULL,'莫西子诗','img/tx/gs-167.jpg',1,"华语男歌手"),
(NULL,'卢广仲','img/tx/gs-168.jpg',1,"华语男歌手"),
(NULL,'李玉刚','img/tx/gs-169.jpg',1,"华语男歌手"),
(NULL,'冬子','img/tx/gs-170.jpg',1,"华语男歌手"),
(NULL,'反光镜','img/tx/gs-171.jpg',1,"华语男歌手"),
(NULL,'龙梅子','img/tx/gs-172.jpg',1,"华语女歌手"),
(NULL,'萧煌奇','img/tx/gs-173.jpg',1,"华语男歌手"),
(NULL,'谢春花','img/tx/gs-174.jpg',1,"华语女歌手"),
(NULL,'李琦','img/tx/gs-175.jpg',1,"华语男歌手"),
(NULL,'小柯','img/tx/gs-176.jpg',1,"华语男歌手"),
(NULL,'梁博','img/tx/gs-177.jpg',1,"华语男歌手");

#全部新碟
CREATE TABLE table_tray(
	tid INT PRIMARY KEY AUTO_INCREMENT,
	tray_name VARCHAR(32),  #新碟名称
	singer_name VARCHAR(32),  #歌手名称
	t_avatar VARCHAR(128),        #图片路径
	t_genre VARCHAR(32),   #歌曲类别
	v1  INT NOT NULL DEFAULT 0,     #备用
    v2  VARCHAR(255) NOT NULL DEFAULT ''  #备用
);

INSERT INTO table_tray VALUES
(null,'往事流弹','王凯','img/xd/xd-1.jpg','华语',0,''),
(null,'剩下了自己','张韶涵','img/xd/xd-2.jpg','华语',0,''),
(null,'皮囊','萧敬腾','img/xd/xd-3.jpg','华语',0,''),
(null,'Full Moon','DREAMCATCHER','img/xd/xd-4.jpg','欧美',0,''),
(null,'云的南方','李维真','img/xd/xd-5.jpg','华语',0,''),
(null,'The Champion','Carrie Underwood ','img/xd/xd-6.jpg','欧美',0,''),
(null,'What Happens Next','Joe Satriani','img/xd/xd-7.jpg','欧美',0,''),
(null,'M A N I A','Fall Out Boy','img/xd/xd-8.jpg','华语',0,''),
(null,'Vale	Black Veil','Brides','img/xd/xd-9.jpg','华语',0,''),
(null,'Call Me','阿肆','img/xd/xd-10.jpg','华语',0,''),
(null,'江山梅踪','河图','img/xd/xd-11.jpg','华语',0,''),
(null,'胡巴胡巴','群星','img/xd/xd-12.jpg','华语',0,''),
(null,'对岸','孟慧圆','img/xd/xd-13.jpg','华语',0,''),
(null,'欢喜','小野リサ / 靳东','img/xd/xd-14.jpg','华语',0,''),
(null,'Nowhere','Steerner','img/xd/xd-15.jpg','欧美',0,''),
(null,'说唱大帝','VaVa / KOZAY','img/xd/xd-16.jpg','华语',0,''),
(null,'你怎么样都美','陈明','img/xd/xd-17.jpg','华语',0,''),
(null,'Cherished 割爱','蔡健雅','img/xd/xd-18.jpg','华语',0,''),
(null,'冲锋','谭维维','img/xd/xd-19.jpg','华语',0,''),
(null,'共谋江山','群星','img/xd/xd-20.jpg','华语',0,''),
(null,'To Imagine','The Neighbourhood','img/xd/xd-21.jpg','欧美',0,''),
(null,'雪影ぼうし,','和楽器バンド','img/xd/xd-22.jpg','日本',0,''),
(null,'Camila','Camila Cabello','img/xd/xd-23.jpg','欧美',0,''),
(null,'西岭雪,','天府事变CDREV','img/xd/xd-24.jpg','华语',0,''),
(null,'My My My!','Troye Sivan','img/xd/xd-25.jpg','欧美',0,''),
(null,'如果我是你','邱锋泽 / 吴心缇','img/xd/xd-26.jpg','华语',0,''),
(null,'定格','刘瑞琦','img/xd/xd-27.jpg','华语',0,''),
(null,'乡村男孩','瑞鸣唱片','img/xd/xd-28.jpg','华语',0,''),
(null,'无问西东','王菲','img/xd/xd-29.jpg','华语',0,''),
(null,'非常抱歉','左小祖咒','img/xd/xd-30.jpg','华语',0,''),
(null,'#첫사랑,','脸红的思春期','img/xd/xd-31.jpg','韩国',0,''),
(null,'로봇이 아니야 OST','V.A.','img/xd/xd-32.jpg','韩国',0,''),
(null,'SPOTLIGHT','MONSTA X','img/xd/xd-33.jpg','欧美',0,''),
(null,'没有关系','徐真真','img/xd/xd-34.jpg','华语',0,''),
(null,'坏天使2.1','江映蓉 / GALI','img/xd/xd-35.jpg','华语',0,''),
(null,'只是太在意','宁桓宇','img/xd/xd-35.jpg','华语',0,''),
(null,'|','林部智史','img/xd/xd-37.jpg','日本',0,''),
(null,'MIRAI','SOLIDEMO','img/xd/xd-38.jpg','欧美',0,''),
(null,'白日游离录','蔡青年','img/xd/xd-39.jpg','华语',0,''),
(null,'애간장 OST Part.1','Monday Kiz','img/xd/xd-40.jpg','韩国',0,''),
(null,'无期','AGA','img/xd/xd-41.jpg','欧美',0,''),
(null,'思之如狂','王三溥','img/xd/xd-42.jpg','华语',0,''),
(null,'啷个在超？','GOSH','img/xd/xd-43.jpg','华语',0,''),
(null,'顶级玩家','A.T.M.（顶级玩家）','img/xd/xd-44.jpg','韩国',0,''),
(null,'Time Like This','TIMERS','img/xd/xd-45.jpg','韩国',0,''),
(null,'FALL IN LOVE','满舒克','img/xd/xd-46.jpg','韩国',0,''),
(null,'Mixtape	Stray','Kids','img/xd/xd-47.jpg','韩国',0,''),
(null,'刺痛','鬼卞','img/xd/xd-48.jpg','韩国',0,''),
(null,'研山图','陈粒','img/xd/xd-49.jpg','韩国',0,''),
(null,'长不小的大人	','回音哥','img/xd/xd-50.jpg','韩国',0,''),
(null,'英雄故事','成龙','img/xd/xd-51.jpg','韩国',0,''),
(null,'你过得还好吗','赵传','img/xd/xd-52.jpg','欧美',0,''),
(null,'让世界听见','群星','img/xd/xd-53.jpg','欧美',0,''),
(null,'少女与海','霍尊','img/xd/xd-54.jpg','欧美',0,''),
(null,'犴达罕','陈鸿宇','img/xd/xd-55.jpg','欧美',0,''),
(null,'Stage舞台 第1季','群星','img/xd/xd-56.jpg','欧美',0,''),
(null,'20','Ty. / 王心凌','img/xd/xd-57.jpg','韩国',0,''),
(null,'贫民窟之梦','曹石','img/xd/xd-58.jpg','欧美',0,''),
(null,'密云晴','徐菲','img/xd/xd-59.jpg','韩国',0,''),
(null,'《蝶语》','MT1990','img/xd/xd-60.jpg','日本',0,''),
(null,'星夜的呼唤','谭咏麟','img/xd/xd-61.jpg','日本',0,''),
(null,'Filthy','Justin Timberlake','img/xd/xd-62.jpg','日本',0,''),
(null,'年年','徐秉龙','img/xd/xd-63.jpg','日本',0,''),
(null,'北京以南 2','曹槽','img/xd/xd-64.jpg','日本',0,''),
(null,'无常','于湉','img/xd/xd-65.jpg','日本',0,''),
(null,'伟大的渺小','林俊杰','img/xd/xd-66.jpg','日本',0,''),
(null,'英雄故事','成龙','img/xd/xd-67.jpg','日本',0,''),
(null,'你过得还好吗','赵传','img/xd/xd-68.jpg','日本',0,''),
(null,'让世界听见','群星','img/xd/xd-69.jpg','日本',0,''),
(null,'少女与海','霍尊','img/xd/xd-70.jpg','日本',0,''),
(null,'犴达罕','陈鸿宇','img/xd/xd-71.jpg','日本',0,''),
(null,'Stage舞台 第1季','群星','img/xd/xd-72.jpg','日本',0,''),
(null,'20','Ty. / 王心凌','img/xd/xd-73.jpg','日本',0,''),
(null,'贫民窟之梦','曹石','img/xd/xd-74.jpg','韩国',0,''),
(null,'密云晴','徐菲','img/xd/xd-75.jpg','欧美',0,''),
(null,'《蝶语》','MT1990','img/xd/xd-76.jpg','华语',0,''),
(null,'星夜的呼唤','谭咏麟','img/xd/xd-77.jpg','华语',0,''),
(null,'Filthy','Justin Timberlake','img/xd/xd-78.jpg','华语',0,''),
(null,'年年','徐秉龙','img/xd/xd-79.jpg','华语',0,''),
(null,'北京以南 2','曹槽','img/xd/xd-80.jpg','华语',0,''),
(null,'无常','于湉','img/xd/xd-81.jpg','华语',0,''),
(null,'伟大的渺小','林俊杰','img/xd/xd-82.jpg','华语',0,''),
(null,'往事流弹','王凯','img/xd/xd-83.jpg','华语',0,''),
(null,'剩下了自己','张韶涵','img/xd/xd-84.jpg','日本',0,''),
(null,'皮囊','萧敬腾','img/xd/xd-85.jpg','日本',0,''),
(null,'Full Moon','DREAMCATCHER','img/xd/xd-86.jpg','日本',0,''),
(null,'云的南方','李维真','img/xd/xd-87.jpg','日本',0,''),
(null,'The Champion','Carrie Underwood ','img/xd/xd-88.jpg','日本',0,''),
(null,'What Happens Next','Joe Satriani','img/xd/xd-89.jpg','日本',0,''),
(null,'M A N I A','Fall Out Boy','img/xd/xd-90.jpg','韩国',0,''),
(null,'Vale	Black Veil','Brides','img/xd/xd-91.jpg','韩国',0,''),
(null,'Call Me','阿肆','img/xd/xd-92.jpg','欧美',0,''),
(null,'江山梅踪','河图','img/xd/xd-93.jpg','欧美',0,''),
(null,'胡巴胡巴','群星','img/xd/xd-94.jpg','欧美',0,''),
(null,'对岸','孟慧圆','img/xd/xd-95.jpg','华语',0,''),
(null,'欢喜','小野リサ / 靳东','img/xd/xd-96.jpg','韩国',0,''),
(null,'Nowhere','Steerner','img/xd/xd-97.jpg','华语',0,''),
(null,'说唱大帝','VaVa / KOZAY','img/xd/xd-98.jpg','华语',0,''),
(null,'你怎么样都美','陈明','img/xd/xd-99.jpg','华语',0,''),
(null,'Cherished 割爱','蔡健雅','img/xd/xd-100.jpg','华语',0,''),
(null,'冲锋','谭维维','img/xd/xd-101.jpg','华语',0,''),
(null,'共谋江山','群星','img/xd/xd-102.jpg','华语',0,''),
(null,'To Imagine','The Neighbourhood','img/xd/xd-103.jpg','华语',0,''),
(null,'雪影ぼうし,','和楽器バンド','img/xd/xd-104.jpg','华语',0,''),
(null,'Camila','Camila Cabello','img/xd/xd-105.jpg','华语',0,''),
(null,'西岭雪,','天府事变CDREV','img/xd/xd-106.jpg','华语',0,''),
(null,'My My My!','Troye Sivan','img/xd/xd-107.jpg','华语',0,''),
(null,'如果我是你','邱锋泽 / 吴心缇','img/xd/xd-108.jpg','华语',0,''),
(null,'定格','刘瑞琦','img/xd/xd-109.jpg','华语',0,''),
(null,'乡村男孩','瑞鸣唱片','img/xd/xd-110.jpg','华语',0,''),
(null,'无问西东','王菲','img/xd/xd-111.jpg','华语',0,''),
(null,'非常抱歉','左小祖咒','img/xd/xd-112.jpg','华语',0,''),
(null,'#첫사랑,','脸红的思春期','img/xd/xd-113.jpg','华语',0,''),
(null,'로봇이 아니야 OST','V.A.','img/xd/xd-114.jpg','华语',0,''),
(null,'SPOTLIGHT','MONSTA X','img/xd/xd-115.jpg','华语',0,''),
(null,'没有关系','徐真真','img/xd/xd-116.jpg','华语',0,''),
(null,'坏天使2.1','江映蓉 / GALI','img/xd/xd-117.jpg','日本',0,''),
(null,'只是太在意','宁桓宇','img/xd/xd-118.jpg','日本',0,''),
(null,'|','林部智史','img/xd/xd-119.jpg','日本',0,''),
(null,'MIRAI','SOLIDEMO','img/xd/xd-120.jpg','日本',0,'');

#热门新碟
CREATE TABLE table_tray_hot(
	tid INT PRIMARY KEY AUTO_INCREMENT,
	tray_name VARCHAR(32),  #新碟名称
	singer_name VARCHAR(32),  #歌手名称
	t_avatar VARCHAR(128),        #图片路径
	t_genre VARCHAR(32),   #新碟类别
	v1  INT NOT NULL DEFAULT 0,     #备用
    v2  VARCHAR(255) NOT NULL DEFAULT ''  #备用
);
INSERT INTO table_tray_hot VALUES
(null,'往事流弹','王凯','img/xd/xd-1.jpg','流行',0,''),
(null,'剩下了自己','张韶涵','img/xd/xd-2.jpg','流行',0,''),
(null,'皮囊','萧敬腾','img/xd/xd-3.jpg','流行',0,''),
(null,'Full Moon','DREAMCATCHER','img/xd/xd-4.jpg','流行',0,''),
(null,'云的南方','李维真','img/xd/xd-5.jpg','流行',0,''),
(null,'The Champion','Carrie Underwood ','img/xd/xd-6.jpg','流行',0,''),
(null,'What Happens Next','Joe Satriani','img/xd/xd-7.jpg','流行',0,''),
(null,'M A N I A','Fall Out Boy','img/xd/xd-8.jpg','流行',0,''),
(null,'|','林部智史','img/xd/xd-119.jpg','流行',0,''),
(null,'MIRAI','SOLIDEMO','img/xd/xd-120.jpg','流行',0,'');

#歌单

CREATE TABLE table_music(
	mid INT PRIMARY KEY AUTO_INCREMENT,
	m_name VARCHAR(64),  #歌曲名称
	singer_name VARCHAR(32),  #歌手名称
	p_avatar VARCHAR(128),        #图片路径
	m_avatar VARCHAR(128),        #歌曲路径
	m_genre VARCHAR(32),   #歌曲类别
	v1  INT NOT NULL DEFAULT 0,     #备用
    v2  VARCHAR(255) NOT NULL DEFAULT ''  #备用
);
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("采蘑菇的小姑娘","乌兰图雅 ","img/gd/109951163049871177628a.jpg","music/乌兰图雅 - 采蘑菇的小姑娘.mp3","华语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("草原爱情海","乌兰托娅 ","img/gd/109951163049876689628a.jpg","music/乌兰托娅 - 草原爱情海.mp3","华语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("嫂子","乌兰托娅、岑雨桥 ","img/gd/109951163050000549628a.jpg","music/乌兰托娅、岑雨桥 - 嫂子.mp3","华语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("人生银行 [mqms2]","关心妍 ","img/gd/109951163050079516628a.jpg","music/关心妍 - 人生银行 [mqms2].mp3","华语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("泥沙堡垒 [mqms2]","关楚耀东山少爷 ","img/gd/109951163050092372628a.jpg","music/关楚耀东山少爷 - 泥沙堡垒 [mqms2].mp3","华语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("剑三·剑啸江湖","华语群星 ","img/gd/109951163050141309628a.jpg","music/华语群星 - 剑三·剑啸江湖 [mqms].mp3","华语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("战国杀","华语群星 ","img/gd/109951163050352449628a.jpg","music/华语群星 - 战国杀 [mqms].mp3","华语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("九张机","叶炫清 ","img/gd/109951163050432637628a.jpg","music/叶炫清 - 九张机.mp3","华语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("浓情淡如你","周深 ","img/gd/109951163050469137628a.jpg","music/周深 - 浓情淡如你.mp3","华语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("それでいいよ (这样就好)","和纱 (Kazusa) ","img/gd/109951163050568541628a.jpg","music/和纱 (Kazusa) - それでいいよ (这样就好) [mqms2].mp3","华语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("他和她","回音哥 ","img/gd/109951163050581619628a.jpg","music/回音哥 - 他和她 [mqms2].mp3","华语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("入戏太深","夏婉安 ","img/gd/109951163050634839628a.jpg","music/夏婉安 - 入戏太深.mp3","华语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("领悟","夏婉安 ","img/gd/109951163050810995628a.jpg","music/夏婉安 - 领悟.mp3","华语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("最后一首情歌？","小来哥 ","img/gd/109951163050821403628a.jpg","music/小来哥 - 最后一首情歌.mp3","华语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("再遇不到你这样的人","庄心妍、贺敬轩 ","img/gd/109951163050971271628a.jpg","music/庄心妍、贺敬轩 - 再遇不到你这样的人.mp3","华语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("Torches","张杰、X Ambassadors ","img/gd/109951163051027592628a.jpg","music/张杰、X Ambassadors - Torches.mp3","华语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("大宝","张涵予、黎明 ","img/gd/109951163051060301628a.jpg","music/张涵予、黎明 - 大宝.mp3","华语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("最初的记忆","徐佳莹 ","img/gd/109951163051078742628a.jpg","music/徐佳莹 - 最初的记忆.mp3","华语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("君临天下","李常超特曼 ","img/gd/109951163051382424628a.jpg","music/李常超特曼 - 君临天下 [mqms].mp3","华语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("他弟弟打的洞","杨小曼 ","img/gd/109951163051448435628a.jpg","music/杨小曼 - 他弟弟打的洞.mp3","华语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("我们","杨清柠、王乐乐 ","img/gd/109951163051453345628a.jpg","music/杨清柠、王乐乐 - 我们.mp3","华语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("战颜","江南诚 ","img/gd/109951163051460003628a.jpg","music/江南诚 - 战颜 [mqms2].mp3","华语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("未来告白","汪苏泷 ","img/gd/109951163051865782628a.jpg","music/汪苏泷 - 未来告白.mp3","华语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("那个男孩","汪苏泷 ","img/gd/109951163052029420628a.jpg","music/汪苏泷 - 那个男孩.mp3","华语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("守","河图 ","img/gd/109951163052326205628a.jpg","music/河图 - 守 [mqms2].mp3","华语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("在人间","王建房 ","img/gd/109951163052716076628a.jpg","music/王建房 - 在人间.mp3","华语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("空空如也","胡66 ","img/gd/109951163052780279628a.jpg","music/胡66 - 空空如也 [mqms2].mp3","华语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("病名恋ワズライ","花たん (花糖) ","img/gd/109951163052911659628a.jpg","music/花たん (花糖) - 病名恋ワズライ [mqms2].mp3","华语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("相逢何必曾相识 (粤语)","蒋志光韦绮珊 ","img/gd/109951163053005156628a.jpg","music/蒋志光韦绮珊 - 相逢何必曾相识 (粤语) [mqms2].mp3","华语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("今生我爱你","蒋钰华 ","img/gd/109951163053276482628a.jpg","music/蒋钰华 - 今生我爱你 [mqms2].mp3","华语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("我害怕","薛之谦 ","img/gd/109951163053439021628a.jpg","music/薛之谦 - 我害怕.mp3","华语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("暧昧","薛之谦 ","img/gd/109951163053506456628a.jpg","music/薛之谦 - 暧昧.mp3","华语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("王子公主 (Live)","薛之谦 ","img/gd/109951163053520741628a.jpg","music/薛之谦 - 王子公主 (Live).mp3","华语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("非酋","薛明媛、朱贺 ","img/gd/109951163053701703628a.jpg","music/薛明媛、朱贺 - 非酋.mp3","华语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("小小天涯","郁可唯 ","img/gd/109951163053905315628a.jpg","music/郁可唯 - 小小天涯.mp3","华语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("三岔口 (国语)","郭富城 ","img/gd/109951163053910878628a.jpg","music/郭富城 - 三岔口 (国语) [mqms2].mp3","华语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("凤桥亭","雨宗林、贺敬轩 ","img/gd/109951163054737181628a.jpg","music/雨宗林、贺敬轩 - 凤桥亭.mp3","华语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("之子于归 (独唱版)","霍尊 ","img/gd/109951163054750868628a.jpg","music/霍尊 - 之子于归 (独唱版) [mqms2].mp3","华语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("分裂时差","鞠婧祎 ","img/gd/109951163054808409628a.jpg","music/鞠婧祎 - 分裂时差 [mqms2].mp3","华语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("绒花 (Film Version)","韩红 ","img/gd/109951163055121102628a.jpg","music/韩红 - 绒花 (Film Version) [mqms2].mp3","华语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("远方","黄中原李悦君 ","img/gd/109951163055135548628a.jpg","music/黄中原李悦君 - 远方 [mqms].mp3","华语");



INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("Tell It Like It Is","Aaron Neville ","img/gd/109951163043579848628a.jpg","music/Aaron Neville - Tell It Like It Is [mqms].mp3","
欧美");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("日暮归途","Aki阿杰橙翼 ","img/gd/109951163043888712628a.jpg","music/Aki阿杰橙翼 - 日暮归途 [mqms].mp3","欧美");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("Let's Stay Together","Al Green ","img/gd/109951163043956278628a.jpg","music/Al Green - Let's Stay Together [mqms2].mp3","欧美");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("Clean Up Woman ","Betty WrightSteve Alaimo ","img/gd/109951163044513628628a.jpg","music/BettyWrightSteve Alaimo - Clean Up Woman [mqms2].mp3","欧美");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("不再犹豫","BEYOND ","img/gd/109951163044669036628a.jpg","music/BEYOND - 不再犹豫 [mqms2].mp3","欧美");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("光辉岁月 (Live)","BEYOND ","img/gd/109951163044728884628a.jpg","music/BEYOND - 光辉岁月 (Live) [mqms2].mp3","欧美");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("再见理想","BEYOND ","img/gd/109951163044734870628a.jpg","music/BEYOND - 再见理想 (Live)
[mqms2].mp3","欧美");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("情人 (Live)","BEYOND ","img/gd/109951163044801528628a.jpg","music/BEYOND - 情人 (Live) [mqms2].mp3","欧美");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("灰色轨迹","BEYOND ","img/gd/109951163044887239628a.jpg","music/BEYOND - 灰色轨迹 [mqms2].mp3","欧美
");

INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("Ain’t No Sunshine","Bill Withers ","img/gd/109951163045077408628a.jpg","music/Bill Withers - Ain’t No Sunshine
[mqms2].mp3","欧美");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("Me And Mrs. Jones (AlbumVersion)","Billy Paul ","img/gd/109951163045242737628a.jpg","music/Billy Paul - Me And Mrs. Jones (AlbumVersion) [mqms2].mp3","欧美");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("Rainy Night In Georgia","Brook Benton ","img/gd/109951163045438784628a.jpg","music/Brook Benton - Rainy Night In Georgia [mqms2].mp3","欧美");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("As Time Goes By","Bryan Ferry ","img/gd/109951163046086754628a.jpg","music/Bryan Ferry - As Time Goes By [mqms2].mp3","欧美");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("Run With The Boys","Carl Barat ","img/gd/109951163046779988628a.jpg","music/Carl Barat - Run With The Boys [mqms].mp3","欧美");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("Little Traveler","clear ","img/gd/109951163047510483628a.jpg","music/clear - Little Traveler [mqms2].mp3","欧美");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES(" Freddie's Dead","Curtis Mayfield ","img/gd/109951163047726312628a.jpg","music/Curtis Mayfield - Freddie's Dead [mqms2].mp3","欧美");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("Under Pressure","David
BowieQueen ","img/gd/109951163048577412628a.jpg","music/David BowieQueen - Under Pressure [mqms2].mp3","欧美");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("恋するletter (情书)","Duca (デュッカ) ","img/gd/109951163048671919628a.jpg","music/Duca (デュッカ) - 恋するletter (情书) [mqms2].mp3","欧美");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("Can You Feel The Love Tonight","Elton John ","img/gd/109951163048875345628a.jpg","music/Elton John - Can You Feel The Love Tonight [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("桃花诺","G.E.M. 邓紫棋 ","img/gd/109951163049058529628a.jpg","music/G.E.M. 邓紫棋 - 桃花诺 [mqms2].mp3","日语");

INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("House Of The Rising Sun","Geordie ","img/gd/109951163049261046628a.jpg","music/Geordie - House Of The Rising Sun
[mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("Hands Of Time","Groove Armada","img/gd/109951163049268072628a.jpg","music/Groove Armada - Hands Of Time [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("眉间雪","HITA ","img/gd/109951163049570802628a.jpg","music/HITA - 眉间雪 [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("丹青客","HITA小曲儿","img/gd/109951163049752219628a.jpg","music/HITA小曲儿 - 丹青客 [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("梦回还","HITA老虎欧巴 ","img/gd/109951163050941605628a.jpg","music/HITA老虎欧巴 - 梦回还 [mqms2].mp3","日
语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("イジワルな出会い (讨厌的邂逅)","HoneyWorks (ハニーワークス) ","img/gd/109951163052982754628a.jpg","music/HoneyWorks (ハニーワークス) -イジワルな出会い (讨厌的邂逅) [mqms].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("日曜日の秘密 (星期日的秘密)","HoneyWorks (ハニーワークス)CHiCO with HoneyWorks鎖那 (さな)","img/gd/109951163055385749628a.jpg","music/HoneyWorks (ハニーワークス)CHiCO with HoneyWorks鎖那 (さな) - 日曜日の秘密 (星期日的秘密) [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("告白予行練習","HoneyWorks (ハニーワークス)戸松遥 (とまつ はるか) ","img/gd/109951163057807420628a.jpg","music/HoneyWorks (ハニーワークス)戸松遥 (とまつ はるか) - 告白予行練習 [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("River Deep, MountainHigh","IkeTina Turner ","img/gd/109951163057922357628a.jpg","music/IkeTina Turner - River Deep, MountainHigh [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("Say It Loud (I’m Black And I’m Pr","James Brown ","img/gd/109951163057937003628a.jpg","music/James Brown - Say It Loud (I’m Black And I’m Pr [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("Dope","Jewelz & Sparks ","img/gd/109951163057963440628a.jpg","music/Jewelz & Sparks - Dope [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("Groove Me","King Floyd ","img/gd/109951163057981277628a.jpg","music/King Floyd - Groove Me [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("See See Rider","LaVern Baker ","img/gd/109951163058134140628a.jpg","music/LaVern Baker - See See Rider[mqms].mp3","日语");

INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("Satellite Of Love","Lou Reed ","img/gd/109951163058935480628a.jpg","music/Lou Reed - Satellite Of Love [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("(If Loving YouIs Wrong) I Don't Want to Be Right","Luther Ingram ","img/gd/109951163059169539628a.jpg","music/Luther Ingram - (If Loving YouIs Wrong) I Don't Want to Be Right [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("Ballrooms Of Mars","Marc Bolan & T Rex ","img/gd/109951163059300200628a.jpg","music/Marc Bolan & T Rex - Ballrooms Of Mars [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("I Heard It Through The Grapevine","Marvin Gaye ","img/gd/109951163060346388628a.jpg","music/Marvin Gaye - I Heard It Through The Grapevine [mqms].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("Relax, Take It Easy","Mika ","img/gd/109951163060919678628a.jpg","music/Mika - Relax, Take It Easy[mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("All the Young Dudes (Single Version)","Mott The Hoople ","img/gd/109951163060924836628a.jpg","music/Mott The Hoople - All the Young Dudes (Single Version)[mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("All The Young Dudes","Mott The Hoople ","img/gd/109951163061334970628a.jpg","music/Mott The Hoople - All The Young Dudes[mqms].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("上弦の月 (上弦之月)","nero project ","img/gd/109951163061413810628a.jpg","music/nero project - 上弦の月 (上弦之月) (Bonus Track) [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("Tramp","Otis ReddingCarla Thomas ","img/gd/109951163061880534628a.jpg","music/Otis ReddingCarla Thomas - Tramp [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("Common People","Pulp ","img/gd/109951163062452652628a.jpg","music/Pulp - Common People [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("Jealous Guy (Edit) (2000 DigitalRemaster)","Roxy Music ","img/gd/109951163063047599628a.jpg","music/Roxy Music - Jealous Guy (Edit) (2000 DigitalRemaster) [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("","RSP (Real Street Performance) ","img/gd/109951163063170255628a.jpg","music/RSP (Real StreetPerformance) - 恋哀歌 ～あの日に帰りたい～ [mqms].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("","SILENT SIREN (サイレント?サイレン) ","img/gd/109951163063305748628a.jpg","music/SILENT SIREN (サイレント?サイレン) - LOVEのしるし [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("Sad Movie","Soulman & Minos ","img/gd/109951163063606709628a.jpg","music/Soulman & Minos - Sad Movie [mqms].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("I Was Made to Love Her","Stevie Wonder ","img/gd/109951163063855788628a.jpg","music/Stevie Wonder - I Was Made to Love Her [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("Stumblin' In","Suzi Quatro ","img/gd/109951163063869058628a.jpg","music/Suzi Quatro - Stumblin' In [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("Co-Co","Sweet ","img/gd/109951163063880482628a.jpg","music/Sweet - Co-Co [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("Ride A White Swan","T. Rex","img/gd/109951163064108793628a.jpg","music/T. Rex - Ride A White Swan [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("Oh Girl","The Chi","img/gd/109951163064175801628a.jpg","music/The Chi-Lites - Oh Girl [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("On Broadway (Original Artist Re-recording)","The Drifters ","img/gd/109951163064698079628a.jpg","music/The Drifters - On Broadway (Original Artist Re-recording) [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("People Get Ready","The Impressions ","img/gd/109951163064868010628a.jpg","music/The Impressions - People Get Ready [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("Tranquilize","The Killers ","img/gd/109951163065248938628a.jpg","music/The Killers - Tranquilize[mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("I Can’t Get Next To You","The Temptations","img/gd/109951163065489628628a.jpg","music/The Temptations - I Can’t Get Next To You [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("Christian Says","Tones On Tail ","img/gd/109951163065537054628a.jpg","music/Tones On Tail - Christian Says [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("Twist","Tones On Tail","img/gd/109951163065542645628a.jpg","music/Tones On Tail - Twist [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("Cat Black(The Wizard's Hat)","Tyrannosaurus Rex ","img/gd/109951163065712805628a.jpg","music/Tyrannosaurus Rex - Cat Black(The Wizard's Hat) [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES(" Jealous Sky","Various Artists ","img/gd/109951163066096838628a.jpg","music/Various Artists - Jealous Sky[mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("碧血青山","W.K. ","img/gd/109951163066125557628a.jpg","music/W.K. - 碧血青山 [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("花束","WHITE","img/gd/109951163066232161628a.jpg","music/WHITE-LIPS - 花束 [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("Be Thankful forWhat You Got","William De Vaughn ","img/gd/109951163066645220628a.jpg","music/William De Vaughn - Be Thankful forWhat You Got [mqms].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("ハートビート?フロムユー","ゆいこんぬ ","img/gd/109951163066849540628a.jpg","music/ゆいこんぬ - ハートビート?フロムユー [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("神様のいたずら","中島愛 ","img/gd/109951163066978229628a.jpg","music/中島愛 - 神様のいたずら [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("秦风·唱山河","五色石南叶Smile_小千 ","img/gd/109951163067100002628a.jpg","music/五色石南叶Smile_小千 - 秦风·唱山河 [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("明月天涯","五音Jw ","img/gd/109951163077211944628a.jpg","music/五音Jw - 明月天涯 [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("山外小楼夜听雨","任然","img/gd/109951163077369260628a.jpg","music/任然 - 山外小楼夜听雨 [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("权御天下","伦桑裂天小魂萧忆情 ","img/gd/109951163077378116628a.jpg","music/伦桑裂天小魂萧忆情 - 权御天下 [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("谋战天下","伦桑观澜 ","img/gd/109951163077821017628a.jpg","music/伦桑观澜 - 谋战天下 [mqms].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("江山如画","依穆炎君の横颜 ","img/gd/109951163077940282628a.jpg","music/依穆炎君の横颜 - 江山如画[mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("最好是你","傅颖 ","img/gd/109951163078231068628a.jpg","music/傅颖 - 最好是你 [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("七梅雪","兔裹煎蛋卷 ","img/gd/109951163078534885628a.jpg","music/兔裹煎蛋卷 - 七梅雪 [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("我在乎的是你","六哲 ","img/gd/109951163078643480628a.jpg","music/六哲 - 我在乎的是你[mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("人生银行","关心妍 ","img/gd/109951163078696706628a.jpg","music/关心妍 - 人生银行 [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("泥沙堡垒","关楚耀东山少爷 ","img/gd/109951163078714543628a.jpg","music/关楚耀东山少爷 - 泥沙堡垒 [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("大开眼界","刘美君 ","img/gd/109951163078801620628a.jpg","music/刘美君 - 大开眼界 [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("当年情","刘青云 ","img/gd/109951163078922993669a.jpg","music/刘青云 - 当年情 [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("战国杀","华语群星 ","img/gd/109951163078924508628a.jpg","music/华语群星 - 战国杀 [mqms].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("奇迹","南拳妈妈NQMM ","img/gd/109951163078940309628a.jpg","music/南拳妈妈NQMM - 奇迹 [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("哲学家","卢巧音 ","img/gd/109951163079058630628a.jpg","music/卢巧音 - 哲学家 [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("大鱼","双笙 ","img/gd/109951163079100103628a.jpg","music/双笙 - 大鱼 [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("我的一个道姑朋友","双笙 ","img/gd/1099511630791198751541.jpg","music/双笙 - 我的一个道姑朋友 [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("故梦","双笙 ","img/gd/109951163079266911628a.jpg","music/双笙 - 故梦 [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES(" 浮生未歇","双笙 ","img/gd/109951163079309901628a.jpg","music/双笙 - 浮生未歇 [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("长安忆","双笙","img/gd/109951163079422591628a.jpg","music/双笙 - 长安忆 [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("随缘","叶倩文 ","img/gd/109951163079651749628a.jpg","music/叶倩文 - 随缘 [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("一天一天等下去","吴奇隆 ","img/gd/109951163079774185628a.jpg","music/吴奇隆 - 一天一天等下去 [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("一分钟稀客一分钟色诱","吴雨霏 ","img/gd/109951163079856442628a.jpg","music/吴雨霏 - 一分钟稀客一分钟色诱 [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("それでいいよ (这样就好)","和纱 (Kazusa) ","img/gd/109951163079963146628a.jpg","music/和纱 (Kazusa) - それでいいよ (这样就好) [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("他和她","回音哥","img/gd/109951163080042528628a.jpg","music/回音哥 - 他和她 [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("差一步","大壮 ","img/gd/109951163080244324628a.jpg","music/大壮 - 差一步 [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("記憶の糸","大山百合香(Ohyama Yurika) ","img/gd/109951163080250345628a.jpg","music/大山百合香 (Ohyama Yurika) - 記憶の糸 [mqms].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("终结敷衍","威仔阿夏 ","img/gd/109951163080295138628a.jpg","music/威仔阿夏 - 终结敷衍 [mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("夜明けのベルが鳴る (黎明钟声响起)","img/gd/109951163080450298628a.jpg","music/安田みずほ - 夜明けのベルが鳴る (黎明钟声响起)[mqms2].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("凤凰珮","小旭乐团 ","img/gd/109951163080477069628a.jpg","music/小旭乐团 -凤凰珮 [mqms].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("笑傲江湖路","小旭乐团 ","img/gd/109951163080483884628a.jpg","music/小旭乐团 - 笑傲江湖路 [mqms].mp3","日语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("一唱山河","小曲儿 ","img/gd/109951163081077617628a.jpg","music/小曲儿 - 一唱山河 [mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("于归","小曲儿 ","img/gd/109951163081161598628a.jpg","music/小曲儿 - 于归 [mqms].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("偕天同苍","小曲儿 ","img/gd/109951163081240954628a.jpg","music/小曲儿 - 偕天同苍 [mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("天字十三杀","小曲儿 ","img/gd/109951163081338075628a.jpg","music/小曲儿 - 天字十三杀 [mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("故城","小曲儿 ","img/gd/109951163081347175628a.jpg","music/小曲儿 - 故城 [mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("丰碑","小柯董真","img/gd/1099511630813635431541.jpg","music/小柯董真 - 丰碑 [mqms].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("江山雪","小爱的妈 ","img/gd/109951163081386086628a.jpg","music/小爱的妈 - 江山雪 [mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("且志凌烟","小魂 ","img/gd/109951163081632473628a.jpg","music/小魂 - 且志凌烟 [mqms].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("侠魂","小魂 ","img/gd/109951163081658811628a.jpg","music/小魂 - 侠魂 [mqms].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("古龙群侠传","小魂 ","img/gd/109951163081971963628a.jpg","music/小魂 - 古龙群侠传 [mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("汉武魂","小魂 ","img/gd/109951163082112741628a.jpg","music/小魂 - 汉武魂 [mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("谁将平生葬倾城","小魂CRITTY ","img/gd/109951163082149122628a.jpg","music/小魂CRITTY - 谁将平生葬倾城 [mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("烟笼长安","少司命 ","img/gd/109951163082243384628a.jpg","music/少司命 - 烟笼长安 [mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("雁归来","少司命Smile_小千 ","img/gd/109951163082257781628a.jpg","music/少司命Smile_小千 - 雁归来[mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("ユメノナカ","山崎あおい (山崎葵) ","img/gd/109951163082442923628a.jpg","music/山崎あおい (山崎葵) - ユメノナカ [mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("みちゆき (旅程)","引田香织 (Kaori Hikita) ","img/gd/109951163083127680628a.jpg","music/引田香织 (KaoriHikita) - みちゆき (旅程) [mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("侧面 + 放荡 (Live)","张国荣 ","img/gd/109951163083220618628a.jpg","music/张国荣 - 侧面 + 放荡 (Live) [mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("放荡","张国荣 ","img/gd/109951163083263373628a.jpg","music/张国荣 - 放荡 [mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES(" 梦死醉生 (Live)","张国荣 ","img/gd/109951163083275697628a.jpg","music/张国荣 - 梦死醉生 (Live) [mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("激光中 (Live)","张国荣 ","img/gd/109951163083278956628a.jpg","music/张国荣 - 激光中 (Live) [mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("红 (Live)","张国荣 ","img/gd/109951163083352254628a.jpg","music/张国荣 - 红 (Live) [mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("路过蜻蜓","张国荣 ","img/gd/109951163083649201628a.jpg","music/张国荣 - 路过蜻蜓 [mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("最佳男主角","张纹嘉 ","img/gd/109951163083681216628a.jpg","music/张纹嘉 - 最佳男主角 [mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("不伤不痛不像爱","彭家丽","img/gd/109951163084209063628a.jpg","music/彭家丽 - 不伤不痛不像爱 [mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("爱过痛过亦愿等","彭羚 ","img/gd/109951163084296399628a.jpg","music/彭羚 - 爱过痛过亦愿等 [mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("仙剑三·御剑江湖","心然 ","img/gd/18577348464910942628a.jpg","music/心然 - 仙剑三·御剑江湖 [mqms].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("盛唐夜唱","心然 ","img/gd/18577348465007366628a.jpg","music/心然 - 盛唐夜唱 [mqms].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("Catch A Dream","方大同 ","img/gd/18578447976448835628a.jpg","music/方大同 - Catch A Dream[mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("万神纪","易言樊棋三无双笙","img/gd/18578447976514599628a.jpg","music/易言樊棋三无双笙 - 万神纪 [mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("活该","星弟 ","img/gd/18578447976664906628a.jpg","music/星弟 - 活该 [mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("解放天性","曲艺艺","img/gd/18580646999917645628a.jpg","music/曲艺艺 - 解放天性 [mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("荀彧","曾经艺也 ","img/gd/18581746509790627628a.jpg","music/曾经艺也 - 荀彧 [mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("美人蕉","李凯年李琳 ","img/gd/18581746511561542628a.jpg","music/李凯年李琳 - 美人蕉 [mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("恶魔的爱","李宏毅李明霖 ","img/gd/18582846023108227628a.jpg","music/李宏毅李明霖 - 恶魔的爱 [mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("君临天下","李常超特曼 ","img/gd/18583945534692179628a.jpg","music/李常超特曼 - 君临天下 [mqms].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("不灭忠魂","李承敏 ","img/gd/18583945534695068628a.jpg","music/李承敏 - 不灭忠魂 [mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("琉璃月","杨幂君君 ","img/gd/18586144557458488628a.jpg","music/杨幂君君 - 琉璃月 [mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("孙尚香","柳岩后弦 ","img/gd/18586144557979031628a.jpg","music/柳岩后弦 - 孙尚香 [mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("月光浴","柴田淳 (しばた じゅん) ","img/gd/18586144558021970628a.jpg","music/柴田淳 (しばた じゅん) - 月光浴 [mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("未成年","柴田淳 (しばた じゅん) ","img/gd/18587244069702070628a.jpg","music/柴田淳 (しばた じゅん) -未成年 [mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("两个人的幸运","梁咏琪","img/gd/18588343580096783628a.jpg","music/梁咏琪 - 两个人的幸运 [mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES(" 无间道 (粤语)","梁朝伟刘德华 ","img/gd/18589443092854030628a.jpg","music/梁朝伟刘德华 - 无间道 (粤语) [mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("悬崖","梦璟SAYA ","img/gd/18590542604385193628a.jpg","music/梦璟SAYA - 悬崖 [mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("谁主沉浮·千秋诉","梦璟SAYA ","img/gd/18591642116171927628a.jpg","music/梦璟SAYA - 谁主沉浮·千秋诉 [mqms].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("SuperNBA","欧阳靖 ","img/gd/18591642116208231628a.jpg","music/欧阳靖 - SuperNBA [mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("战颜","江南诚 ","img/gd/18592741627750442628a.jpg","music/江南诚 - 战颜[mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("危险期","汤宝如 ","img/gd/18593841139297560628a.jpg","music/汤宝如 - 危险期 [mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("万水千山总是情","汪明荃 ","img/gd/18593841139321569628a.jpg","music/汪明荃 - 万水千山总是情 [mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("江山阙歌","沈波 ","img/gd/18597139674299211628a.jpg","music/沈波 - 江山阙歌 [mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("繁尘","沙宝亮 ","img/gd/18598239185954623628a.jpg","music/沙宝亮 - 繁尘 [mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("守","河图 ","img/gd/18599338697229791628a.jpg","music/河图 - 守 [mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("落花雨","洛天依星尘音阙诗听 ","img/gd/18600438208567519628a.jpg","music/洛天依星尘音阙诗听 - 落花雨[mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("混沌","流月 ","img/gd/18600438209013065628a.jpg","music/流月 - 混沌 [mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("此意比天长","清响 ","img/gd/18600438209055107628a.jpg","music/清响 - 此意比天长 [mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("障月","满汉全席音乐团队 ","img/gd/18600438209161271628a.jpg","music/满汉全席音乐团队 - 障月 [mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("心碎在海边","烨霖马绪真 ","img/gd/18601537720769127628a.jpg","music/烨霖马绪真 - 心碎在海边 [mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("横顔","牧野由依 (まきの ゆい) ","img/gd/18602637231978540628a.jpg","music/牧野由依 (まきの ゆい) - 横顔[mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("牡丹赋","玄觞 ","img/gd/18602637232380108628a.jpg","music/玄觞 - 牡丹赋 [mqms].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("雨后人去楼也空","王乐乐","img/gd/18603736743905496628a.jpg","music/王乐乐 - 雨后人去楼也空 [mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("赤血长殷","王凯 ","img/gd/18603736743928030628a.jpg","music/王凯 - 赤血长殷 [mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("这就是兄弟","王羽泽 ","img/gd/18603736744060035628a.jpg","music/王羽泽 - 这就是兄弟 [mqms2].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("三生三世","王蓉萧正楠 ","img/gd/18604836255575230628a.jpg","music/王蓉萧正楠 - 三生三世 [mqms].mp3","韩语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("quantumjump","真里歌 (まりか) ","img/gd/18604836255601923628a.jpg","music/真里歌 (まりか) - quantumjump [mqms2].mp3","粤语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("夜曲","矢野まき (やの まき)","img/gd/18604836255670850628a.jpg","music/矢野まき (やの まき) - 夜曲 [mqms2].mp3","粤语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("君に伝えたい (想传达给你)","米倉千尋 (よねくら ちひろ) ","img/gd/18607035278813058628a.jpg","music/米倉千尋 (よねくら ちひろ) - 君に伝えたい (想传达给你) [mqms2].mp3","粤语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("让爱飞","米橘","img/gd/18608134790531513628a.jpg","music/米橘 - 让爱飞 [mqms2].mp3","粤语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("木兰辞","绯村柯北 ","img/gd/18610333813582568628a.jpg","music/绯村柯北 - 木兰辞 [mqms].mp3","粤语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("ふたり日記","羊毛とおはな ","img/gd/18610333813738435628a.jpg","music/羊毛とおはな - ふたり日記 [mqms].mp3","粤语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("少年時代","羊毛とおはな ","img/gd/18611433325273867628a.jpg","music/羊毛とおはな - 少年時代 [mqms2].mp3","粤语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("相思风雨中","群星 ","img/gd/18613632348381946628a.jpg","music/群星 - 相思风雨中 [mqms2].mp3","粤语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("空空如也","胡66 ","img/gd/18613632348448741669a.jpg","music/胡66 - 空空如也 [mqms2].mp3","粤语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("说散就散","艾福杰尼BooM黄旭田羽生 ","img/gd/1861363234844874197e8.jpg","music/艾福杰尼BooM黄旭田羽生 - 说散就散 [mqms2].mp3","粤语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("病名恋ワズライ","花たん (花糖) ","img/gd/18613632348662778628a.jpg","music/花たん (花糖) - 病名恋ワズライ [mqms2].mp3","粤语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("我发誓以后","苏永康 ","img/gd/18615831371903420628a.jpg","music/苏永康 - 我发誓以后 [mqms2].mp3","粤语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("越吻越伤心","苏永康 ","img/gd/18615831371981022628a.jpg","music/苏永康 - 越吻越伤心 [mqms2].mp3","粤语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("視線の行方 (视线的方向)","茅原実里 (ちはらみのり)","img/gd/18615831371995478628a.jpg","music/茅原実里 (ちはらみのり) - 視線の行方 (视线的方向) [mqms2].mp3","粤语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("午前1時のラブソング","茅野愛衣 (かやの あい) ","img/gd/18616930883593979628a.jpg","music/茅野愛衣 (かやの あい) - 午前1時のラブソング (凌晨1点的情歌) [mqms2].mp3","粤语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("エロイコ","茶太 (ちゃた) ","img/gd/18616930883602092628a.jpg","music/茶太 (ちゃた) - エロイコ[mqms2].mp3","粤语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("梅雨声","莫小娘 ","img/gd/18618030394953980628a.jpg","music/莫小娘 - 梅雨声 [mqms2].mp3","粤语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("仙剑问情","萧人凤 ","img/gd/18619129906888076628a.jpg","music/萧人凤 - 仙剑问情 [mqms2].mp3","粤语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("剑雨浮生","萨顶顶吴青峰 ","img/gd/18620229418403526628a.jpg","music/萨顶顶吴青峰 - 剑雨浮生 [mqms].mp3","粤语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("都怪我","葛雨晴 ","img/gd/18622428441361883628a.jpg","music/葛雨晴 - 都怪我 [mqms2].mp3","粤语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("九鼎天下","董真 ","img/gd/18625726976296249628a.jpg","music/董真 - 九鼎天下 [mqms2].mp3","粤语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("情醉","董真 ","img/gd/18625726976626371628a.jpg","music/董真 - 情醉 [mqms2].mp3","粤语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("相逢何必曾相识 (粤语)","蒋志光韦绮珊 ","img/gd/18626826487892902628a.jpg","music/蒋志光韦绮珊 - 相逢何必曾相识 (粤语) [mqms2].mp3","粤语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("今生我爱你","蒋钰华 ","img/gd/18626826488251838628a.jpg","music/蒋钰华 - 今生我爱你 [mqms2].mp3","粤语");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("あなたは幸せになる","藤田麻衣子 (Fujita Maiko) ","img/gd/18629025511462504628a.jpg","music/藤田麻衣子 (Fujita Maiko) - あなたは幸せになる [mqms2].mp3","小语种");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("各駅停車","藤田麻衣子 (Fujita Maiko) ","img/gd/18630125023094609628a.jpg","music/藤田麻衣子 (Fujita Maiko) -各駅停車 (各站停车) [mqms2].mp3","小语种");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("权御天下","西瓜Kune ","img/gd/18631224534640006628a.jpg","music/西瓜Kune - 权御天下 [mqms2].mp3","小语种");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("天才白痴往日情","许冠杰 ","img/gd/18631224534746073628a.jpg","music/许冠杰 - 天才白痴往日情 [mqms2].mp3","小语种");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("清风莞月浮舟令","许多葵 ","img/gd/18632324046419166628a.jpg","music/许多葵 - 清风莞月浮舟令 [mqms2].mp3","小语种");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("其实怕选择","赵学而 ","img/gd/18633423557923898628a.jpg","music/赵学而 - 其实怕选择 [mqms2].mp3","小语种");
INSERT INTO table_music (m_name,singer_name,p_avatar,m_avatar,m_genre)VALUES("尽头","赵方婧 ","img/gd/18634523069473628628a.jpg","music/赵方婧 - 尽头 [mqms2].mp3","小语种");

CREATE TABLE table_discuss(     #用户评论表
 did  INT PRIMARY KEY AUTO_INCREMENT,    #编号
 d_content VARCHAR(512) NOT NULL DEFAULT '',    #内容
 uid  INT NOT NULL DEFAULT 0,                  #用户编号
 mid  INT NOT NULL DEFAULT 0,                 #歌曲编号
 mtime DATETIME NOT NULL,     #评论时间
 v1    INT  NOT NULL DEFAULT 0,
 v2    VARCHAR(255)NOT NULL DEFAULT ''
);

INSERT INTO table_discuss VALUES(null,'非常好听,非常走心的一首歌',1,1,now(),0,'');
INSERT INTO table_discuss VALUES(null,'非常好听,非常走心的一首歌',1,1,now(),0,'');
INSERT INTO table_discuss VALUES(null,'非常好听,非常走心的一首歌',1,1,now(),0,'');
INSERT INTO table_discuss VALUES(null,'非常好听,非常走心的一首歌',1,1,now(),0,'');
INSERT INTO table_discuss VALUES(null,'非常好听,非常走心的一首歌',1,1,now(),0,'');
INSERT INTO table_discuss VALUES(null,'非常好听,非常走心的一首歌',1,2,now(),0,'');
INSERT INTO table_discuss VALUES(null,'非常好听,非常走心的一首歌',1,2,now(),0,'');
INSERT INTO table_discuss VALUES(null,'非常好听,非常走心的一首歌',1,2,now(),0,'');
INSERT INTO table_discuss VALUES(null,'非常好听,非常走心的一首歌',1,2,now(),0,'');
INSERT INTO table_discuss VALUES(null,'非常好听,非常走心的一首歌',1,2,now(),0,'');
INSERT INTO table_discuss VALUES(null,'非常好听,非常走心的一首歌',1,2,now(),0,'');
INSERT INTO table_discuss VALUES(null,'非常好听,非常走心的一首歌',1,2,now(),0,'');
INSERT INTO table_discuss VALUES(null,'非常好听,非常走心的一首歌',1,3,now(),0,'');
INSERT INTO table_discuss VALUES(null,'非常好听,非常走心的一首歌',1,3,now(),0,'');
INSERT INTO table_discuss VALUES(null,'非常好听,非常走心的一首歌',1,3,now(),0,'');
INSERT INTO table_discuss VALUES(null,'非常好听,非常走心的一首歌',1,3,now(),0,'');
INSERT INTO table_discuss VALUES(null,'非常好听,非常走心的一首歌',1,3,now(),0,'');
INSERT INTO table_discuss VALUES(null,'非常好听,非常走心的一首歌',1,3,now(),0,'');
INSERT INTO table_discuss VALUES(null,'非常好听,非常走心的一首歌',1,3,now(),0,'');
INSERT INTO table_discuss VALUES(null,'非常好听,非常走心的一首歌',1,3,now(),0,'');
INSERT INTO table_discuss VALUES(null,'非常好听,非常走心的一首歌',1,4,now(),0,'');
INSERT INTO table_discuss VALUES(null,'非常好听,非常走心的一首歌',1,4,now(),0,'');
INSERT INTO table_discuss VALUES(null,'非常好听,非常走心的一首歌',1,4,now(),0,'');
INSERT INTO table_discuss VALUES(null,'非常好听,非常走心的一首歌',1,4,now(),0,'');