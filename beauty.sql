-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2017-10-12 22:25:59
-- 服务器版本： 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beauty`
--

-- --------------------------------------------------------
SET NAMES UTF8;
DROP DATABASE IF EXISTS beauty;
CREATE DATABASE beauty CHARSET=UTF8;
USE beauty;

--
-- 表的结构 `be_product_details`
--

CREATE TABLE `be_product_details` (
  `pid` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `content` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `be_product_details`
--

INSERT INTO `be_product_details` (`pid`, `title`, `content`) VALUES
(1, '玻尿酸', '五官调整,玻尿酸去黑眼圈,玻尿酸填充卧蚕,玻尿酸填充泪沟,玻尿酸隆鼻,玻尿酸丰唇,玻尿酸丰耳垂,玻尿酸垫眉弓'),
(2, '肉毒素', '肉毒素缩鼻头,肉毒素瘦小腿,肉毒素瘦肩肌,肉毒素治疗多汗,肉毒素瘦脸,肉毒素去鱼尾纹,肉毒素去抬头纹,肉毒素去川字纹,肉毒素去法令纹,肉毒素去木偶纹');

-- --------------------------------------------------------

--
-- 表的结构 `be_user`
--

CREATE TABLE `be_user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  `emial` varchar(64) DEFAULT NULL,
  `phone` varchar(16) NOT NULL,
  `avatar` varchar(128) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `be_user`
--

INSERT INTO `be_user` (`uid`, `uname`, `upwd`, `emial`, `phone`, `avatar`, `gender`) VALUES
(1, 'dingding', '123456', '123@qq.com', '123555666', 'default.img', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `be_product_details`
--
ALTER TABLE `be_product_details`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `be_user`
--
ALTER TABLE `be_user`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--

--
-- 使用表AUTO_INCREMENT `be_product_details`
--
ALTER TABLE `be_product_details`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `be_user`
--
ALTER TABLE `be_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


drop table if exists dairy_info;
CREATE TABLE dairy_info(
  dairy_id INT PRIMARY KEY AUTO_INCREMENT,
  days INT,              #术后天数
  after_pic VARCHAR(255),         #术后照片路径
  before_pic  VARCHAR(255),      #术前照片路径
  project VARCHAR(255),        #项目
  doctor VARCHAR(255),           # 医生
  hospital VARCHAR(255)          #医院
);
insert into dairy_info (days,after_pic,before_pic,project,doctor,hospital)
values (
73,
'img/picture2/20171017133207891_240_320.jpg',
'img/picture2/20171009182133801_240_360.jpg',
'吸脂瘦大腿',
'孙笠',
'福州格莱美美容医院'
);
insert into dairy_info (days,after_pic,before_pic,project,doctor,hospital)
values (
62,
'img/picture2/20171031163648597_240_324.jpg',
'img/picture2/20170820235200881_240_160.jpg',
'鼻综合',
'雷雪华',
'福州格莱美美容医院'
);
insert into dairy_info (days,after_pic,before_pic,project,doctor,hospital)
values (
57,
'img/picture2/20171104171401934_240_240.jpg',
'img/picture2/20170916210353872_240_160.jpg',
'切开双眼皮',
'郑静伟',
'福州格莱美美容医院'
);
insert into dairy_info (days,after_pic,before_pic,project,doctor,hospital)
values (
57,
'img/picture2/20171104171401934_240_240.jpg',
'img/picture2/20170916210353872_240_160.jpg',
'切开双眼皮',
'郑静伟',
'福州格莱美美容医院'
);
insert into dairy_info (days,after_pic,before_pic,project,doctor,hospital)
values (
63,
'img/picture2/20171014165317746_240_320.jpg',
'img/picture2/20170906171720619_240_208.jpg',
'自体脂肪丰额头',
'孙笠',
'福州格莱美美容医院'
);
insert into dairy_info (days,after_pic,before_pic,project,doctor,hospital)
values (
91,
'img/picture2/20171106101251142_240_320.jpg',
'img/picture2/20170913162155156_240_180.jpg',
'眼部综合',
'郑静伟',
'福州格莱美美容医院'
);
insert into dairy_info (days,after_pic,before_pic,project,doctor,hospital)
values (
104,
'img/picture2/20170906185008302_240_320.jpg',
'img/picture2/20170525150912973_240_320.jpg',
'种植发际线',
'谷远飞',
'福州格莱美美容医院'
);
insert into dairy_info (days,after_pic,before_pic,project,doctor,hospital)
values (
66,
'img/picture2/20171104095548120_240_320.jpg',
'img/picture2/20170905110651992_240_320.jpg',
'切开双眼皮',
'张军辉',
'长沙南湖整形医疗美容医院'
);
insert into dairy_info (days,after_pic,before_pic,project,doctor,hospital)
values (
73,
'img/picture2/20171104102339840_240_427.jpg',
'img/picture2/20170823102214215_240_160.jpg',
'膨体隆鼻',
'何怀万',
'长沙南湖整形医疗美容医院'
);
insert into dairy_info (days,after_pic,before_pic,project,doctor,hospital)
values (
309,
'img/picture2/20171005112644244_240_138.png',
'img/picture2/20170825151308254_240_270.jpg',
'假体隆胸',
'孙笠',
'福州格莱美美容医院'
);
insert into dairy_info (days,after_pic,before_pic,project,doctor,hospital)
values (
70,
'img/picture2/20171101141348161_240_427.jpg',
'img/picture2/20170904101221557_240_160.jpg',
'鼻综合',
'孙笠',
'福州格莱美美容医院'
);
insert into dairy_info (days,after_pic,before_pic,project,doctor,hospital)
values (
140,
'img/picture2/20171031180045307_240_320.jpg',
'img/picture2/20170805142231469_240_255.jpg',
'假体隆胸',
'谢卫国',
'福州格莱美美容医院'
);
insert into dairy_info (days,after_pic,before_pic,project,doctor,hospital)
values (
160,
'img/picture2/20171016144755335_240_320.jpg',
'img/picture2/20170812154137749_240_233.jpg',
'硅胶垫下巴',
'张朋',
'上海华美医疗美容医院'
);
insert into dairy_info (days,after_pic,before_pic,project,doctor,hospital)
values (
43,
'img/picture2/20171009155915630_240_320.jpg',
'img/picture2/20170909153250417_240_320.jpg',
'眼部综合',
'郑静伟',
'福州格莱美美容医院'
);
insert into dairy_info (days,after_pic,before_pic,project,doctor,hospital)
values (
268,
'img/picture2/20160708103223703_240_321.jpg',
'img/picture2/20160206165552231_240_240.jpg',
'切开双眼皮',
'郑静伟',
'上海百达丽医疗美容门诊部'
);
insert into dairy_info (days,after_pic,before_pic,project,doctor,hospital)
values (
16,
'img/picture2/20170922220503801_240_240.jpg',
'img/picture2/20170906212253587_240_240.jpg',
'自体脂肪丰额头',
'别筝',
'上海百达丽医疗美容门诊部'
);
insert into dairy_info (days,after_pic,before_pic,project,doctor,hospital)
values (
75,
'img/picture2/20171101165545839_240_320.jpg',
'img/picture2/20171101161222675_240_225.png',
'鼻部修复',
'雷雪华',
'福州格莱美美容医院'
);
insert into dairy_info (days,after_pic,before_pic,project,doctor,hospital)
values (
110,
'img/picture2/20171104100751244_240_320.jpg',
'img/picture2/20170717150129676_240_160.jpg',
'鼻综合',
'何怀万',
'长沙南湖整形医疗美容医院'
);
insert into dairy_info (days,after_pic,before_pic,project,doctor,hospital)
values (
153,
'img/picture2/20171030162603618_240_240.jpg',
'img/picture2/20170916133153872_240_160.jpg',
'鼻综合',
'何怀万',
'长沙南湖整形医疗美容医院'
);
insert into dairy_info (days,after_pic,before_pic,project,doctor,hospital)
values (
43,
'img/picture2/20171022150312292_240_135.jpg',
'img/picture2/20170907182932658_240_320.jpg',
'玻尿酸丰太阳穴',
'曹泓',
'福州格莱美美容医院'
);
drop table if exists detailsinfo;
CREATE TABLE detailsinfo(
  dairy_id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(255),
  content  VARCHAR(255)
);
INSERT INTO detailsinfo VALUES
(null,"切开双眼皮","切开双眼皮是按设计的重睑线切开上睑皮肤，去除多余皮肤、肌肉、结缔组织与脂肪，缝合切口，形成永久双眼皮"),
(null,"肉毒素瘦脸","瘦脸针是使用肉毒素注射咬肌，阻断了神经肌肉之间的介质传递，引起肌肉松弛性麻痹萎缩，以达到咬肌体积缩小的作用，实现瘦脸的效果。"),
(null,"鼻综合","鼻部综合整形针对鼻梁、鼻头、鼻孔、鼻翼、鼻小柱等鼻部各形态个性定制出最适合的鼻部形态，术后鼻子做到自然唯美，动态静态、正面侧面都好看，与五官完美贴合，让脸部生动立体。"),
(null,"玻尿酸垫下巴","通过注射的方式，将玻尿酸注入下巴（颏部）后进行塑形，实现下巴延长、挺翘、美化脸型的目的。"),
(null,"玻尿酸隆鼻","通过注射的方式，将玻尿酸注入鼻部然后进行塑形，实现鼻部增高、鼻型美化的目的。"),
(null,"开内眼角","内眦成形术俗称开内眼角。它是通过手术方式，对内侧眼角进行矫正放大，以去除内眦赘皮、延长眼裂水平长度，来达到放大眼睛的效果。");
drop table if exists skills;
CREATE TABLE skills(
  skill_id INT PRIMARY KEY AUTO_INCREMENT,
  skill_name VARCHAR(255)  #擅长项目名
);
insert into skills (skill_name) values ('玻尿酸');
insert into skills (skill_name) values ('肉毒素');
insert into skills (skill_name) values ('皮肤美容');
insert into skills (skill_name) values ('眼部整形');
insert into skills (skill_name) values ('鼻部整形');
insert into skills (skill_name) values ('面部轮廓');
insert into skills (skill_name) values ('自体脂肪');
insert into skills (skill_name) values ('胸部整形');
insert into skills (skill_name) values ('美体塑形');
insert into skills (skill_name) values ('抗衰抗初老');
insert into skills (skill_name) values ('牙齿美容');
insert into skills (skill_name) values ('半永久妆');
insert into skills (skill_name) values ('激光脱毛');
insert into skills (skill_name) values ('毛发种植');
insert into skills (skill_name) values ('私密整形');
insert into skills (skill_name) values ('唇部整形');
insert into skills (skill_name) values ('耳部整形');

drop table if exists doctors;
CREATE TABLE doctors(
  doctor_id INT PRIMARY KEY AUTO_INCREMENT,
  doctor_name VARCHAR(255),  #医生姓名
  pic VARCHAR(255),          #图片
  hospital VARCHAR(255),     #所在医院
  title VARCHAR(255),        #当前职务
  qualify VARCHAR(255),      #资质
  years INT,                 #年限
  edu_level VARCHAR(255),   #学历
  country VARCHAR(255)       #国家
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'刘天一',
'img/doctor/20160127/7/20160127105224120_200_200.jpg',
'上海复旦大学附属华东医院','医生','助教',8,'双博士','台湾'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'刘至昱',
'img/doctor/20151106/9/20151106180213433_200_200.jpg',
'【新氧云诊所】上海星和医疗美容门诊部','主任医师','执业中医师',7,'硕士','台湾'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'王琳',
'img/doctor/20160607/8/20160607112430342_200_200.jpg',
'大连市中心医院','外聘教授','主任中医师',12,'双硕士','韩国'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'周宜国',
'img/doctor/20170217/4/20170217170407934_200_200.jpg',
'北京悦丽汇三里屯诊所','主任医师','执业中医师',4,'专科','台湾'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'黄名斗',
'img/doctor/20170730/6/20170730100025269_200_200.png',
'南京美贝尔医疗美容医院','主任医师','主治中医师',1,'双博士','大陆'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'李雯',
'img/doctor/20170711/4/20170711115652840_200_200.jpg',
'长沙星雅医疗美容','医生','执业中医师',11,'双硕士','日本'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'王芳',
'img/doctor/20161010/6/20161010152612849_200_200.jpg',
'北京欧华医疗美容诊所','研究员','助理执业医师',7,'本科','日本'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'张广巍',
'img/doctor/20170605/9/20170605181008313_200_200.jpg',
'西安华旗唯美门诊部','研究员','助教',2,'专科','泰国'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'余文杰',
'img/doctor/20141129/0/20141129100220308_200_200.jpg',
'长沙伊百丽医学美肤连锁','院长','主任医师',5,'进修','日本'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'周雪',
'img/doctor/20170416/6/20170416154736192_200_200.jpg',
'德阳金荣医学美容专科医院','副院长','讲师',3,'硕士','日本'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'谢俊',
'img/doctor/20160719/5/20160719170859728_200_200.png',
'深圳丽港丽格医疗美容门诊部','外聘教授','硕士研究生导师',8,'博士后','韩国'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'陈咏玲',
'img/doctor/20170427/2/20170427170409297_200_200.png',
'长沙科颜美整形美容','主任医师','副教授',4,'硕士','香港'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'张立彬',
'img/doctor/20161220/2/20161220153315914_200_200.jpg',
'北京新星靓医疗美容门诊部','主任医师','硕士研究生导师',7,'双博士','大陆'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'瞿敏',
'img/doctor/20170901/9/20170901095648159_200_200.jpg',
'武汉洪山爱美汇整形美容','主任医师','执业中医师',1,'双博士','台湾'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'辛晴',
'img/doctor/20170928/0/20170928191942264_200_200.jpg',
'北京金圣整形医疗美容','副院长','助教',0,'硕士','大陆'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'薛提朋',
'img/doctor/20170510/7/20170510110046925_200_200.jpg',
'长沙素妍医疗美容','中心主任','主任医师',12,'本科','大陆'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'赵惠春',
'img/doctor/20161209/6/20161209131311665_200_200.jpg',
'北京金燕子医疗美容诊所','副院长','讲师',4,'进修','泰国'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'王海龙',
'img/doctor/20151104/4/20151104112300756_200_200.png',
'上海茸城医疗美容医院','医生','讲师',10,'博士','香港'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'苏鹏',
'img/doctor/20170817/8/20170817095723658_200_200.png',
'西安施尔绮医学美容机构','主诊医生','副主任中医师',12,'双硕士','台湾'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'聂祝锋',
'img/doctor/20160526/5/20160526151455752_200_200.jpg',
'武汉新至美医疗美容医院','研究员','副主任医师',9,'硕士','泰国'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'王会勇',
'img/doctor/20170718/0/20170718132436907_200_200.jpg',
'上海喜美医疗美容','主任医师','主任中医师',9,'硕士','香港'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'杨军庭',
'img/doctor/20170530/5/20170530121437764_200_200.jpg',
'北京利美康岩之畔美容门诊部','中心主任','主任医师',5,'双博士','香港'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'于海成',
'img/doctor/20160921/1/20160921164812608_200_200.jpg',
'缔妍医疗美容','主任医师','执业中医师',6,'博士','台湾'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'周文亮',
'img/doctor/20170704/8/20170704160004820_200_200.jpg',
'长沙美莱整形美容医院','研究员','助教',7,'双博士','大陆'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'丁砚江',
'img/doctor/20141127/7/20141127114446614_200_200.jpg',
'北京世熙医疗美容','研究员','执业中医师',15,'专科','泰国'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'卢元刚',
'img/doctor/20160318/2/20160318142150165_200_200.jpg',
'北京世熙医疗美容','研究员','助教',0,'博士后','韩国'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'袁强',
'img/doctor/20140906/5/20140906104256722_200_200.jpg',
'北京市第六人民医院','实习医生','教授',9,'进修','韩国'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'皮刚',
'img/doctor/20171110/3/20171110103219716_200_200.png',
'扬州美贝尔医疗美容','实习医生','副主任医师',8,'进修','大陆'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'孙万秀',
'img/doctor/20160618/3/20160618170014589_200_200.jpg',
'南京和美医疗美容','外聘教授','教授',7,'本科','日本'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'赵璐',
'img/doctor/20170915/7/20170915133056152_200_200.jpg',
'新氧云诊所北京丽扬店','副研究员','执业医师',11,'硕士','日本'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'崔军',
'img/doctor/20170713/6/20170713171559504_200_200.jpg',
'深圳医美汇医疗美容门诊部','副院长','讲师',2,'硕士','泰国'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'苗春来',
'img/doctor/20160105/3/20160105142140878_200_200.jpg',
'深圳仁安雅医疗美容门诊部','研究员','副主任中医师',15,'双博士','大陆'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'邹志英',
'img/doctor/20171103/7/20171103101447847_200_200.jpg',
'常州美贝尔医疗美容医院','院长','主任中医师',13,'双硕士','台湾'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'魏志香',
'img/doctor/20170817/0/20170817110708572_200_200.jpg',
'北京丽星整形','中心主任','助教',8,'本科','大陆'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'薛云鹏',
'img/doctor/20170626/7/20170626174539923_200_200.jpg',
'天津知妍医疗美容','主任医师','讲师',3,'本科','泰国'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'贾亮',
'img/doctor/20170604/8/20170604134942599_200_200.jpg',
'郑州都市风韵医疗美容门诊部','院长','助教',0,'专科','台湾'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'杨顺江',
'img/doctor/20170823/0/20170823184746560_200_200.jpg',
'台州悠美丽思医疗美容门诊部','主诊医生','硕士研究生导师',4,'进修','香港'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'孙小应',
'img/doctor/20170331/0/20170331165952321_200_200.jpg',
'武汉沃美整形医院','主任医师','教授',5,'博士','韩国'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'谈宇腾',
'img/doctor/20150716/7/20150716171424834_200_200.jpg',
'上海百达丽医疗美容门诊部','研究员','助理执业医师',5,'硕士','泰国'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'徐增亮',
'img/doctor/20171106/6/20171106175821114_200_200.jpg',
'苏州瑞芙臣医疗美容诊所','实习医生','主任中医师',5,'专科','香港'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'马永奇',
'img/doctor/20160412/6/20160412105351138_200_200.jpg',
'北京伟力嘉美信医疗美容门诊部','实习医生','助理执业中医师',8,'硕士','韩国'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'吴琼',
'img/doctor/20170531/8/20170531145207755_200_200.jpg',
'北京新星靓医疗美容门诊部','医生','硕士研究生导师',9,'博士','韩国'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'王科学',
'img/doctor/20151128/7/20151128131609112_200_200.png',
'广州健丽医美','外聘教授','助教',15,'双博士','日本'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'项力源',
'img/doctor/20170905/9/20170905095342523_200_200.jpg',
'北京英煌医疗美容','主任医师','助教',12,'博士后','香港'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'陈远海',
'img/doctor/20151209/8/20151209172609672_200_200.jpg',
'武汉美仑医疗美容门诊部','院长','助教',6,'双博士','泰国'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'石晓川',
'img/doctor/20170616/7/20170616122631244_200_200.png',
'北京清木医疗美容诊所','副院长','助教',3,'专科','台湾'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'倪胜德',
'img/doctor/20170625/6/20170625203241324_200_200.jpg',
'长沙美莱整形美容医院','主任医师','主治中医师',2,'进修','香港'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'聂婕',
'img/doctor/20170303/9/20170303145456892_200_200.jpg',
'上海华美医疗美容医院','医生','主任中医师',0,'本科','韩国'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'张兵',
'img/doctor/20140528/0/20140528104800117_200_200.png',
'上海慕正医疗美容外科（原上海清杨）','副院长','主任中医师',6,'双博士','大陆'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'周鹏起',
'img/doctor/20170522/0/20170522145000658_200_200.jpg',
'成都美未央医疗美容','副研究员','助理执业医师',5,'双硕士','台湾'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'张贝',
'img/doctor/20170913/8/20170913141034988_200_200.jpg',
'新氧云诊所北京丽扬店','主任医师','执业医师',3,'博士','台湾'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'王振荣',
'img/doctor/20160811/8/20160811085630337_200_200.jpg',
'武汉茜韵医疗美容门诊部','中心主任','主治中医师',10,'双硕士','泰国'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'张亮',
'img/doctor/20171006/4/20171006162339964_200_200.jpg',
'北京润美玉之光医疗美容','副主任医师','讲师',11,'进修','泰国'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'李生富',
'img/doctor/20151019/0/20151019105421469_200_200.jpg',
'北京溪峰聚美仕整形','副研究员','副主任医师',1,'硕士','日本'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'齐永乐',
'img/doctor/20161207/2/20161207115649518_200_200.jpg',
'北京当代医疗美容门诊部','副院长','教授',7,'进修','韩国'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'王俊',
'img/doctor/20171027/6/20171027103515142_200_200.jpg',
'台州长青医疗美容','副主任医师','副主任医师',7,'双博士','泰国'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'游小明',
'img/doctor/20150331/8/20150331115423258_200_200.jpg',
'北京新美丽邦医疗美容诊所','研究员','主治医师',9,'专科','大陆'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'鹿永平',
'img/doctor/20170331/0/20170331093945286_200_200.jpg',
'武汉沃美整形医院','医生','主治医师',7,'进修','大陆'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'付荣峰',
'img/doctor/20170124/2/20170124100059258_200_200.jpg',
'武汉中爱医疗美容整形','研究员','讲师',13,'进修','大陆'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'吴宇宏',
'img/doctor/20170116/5/20170116153149935_200_200.png',
'北京方舟皮肤病医院整形美容中心','副主任医师','主任医师',2,'博士后','泰国'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'杨明洁',
'img/doctor/20170102/1/20170102000942181_200_200.jpg',
'大连科美整形','副院长','助教',2,'博士','日本'
);
insert into doctors (doctor_name,pic,hospital,title,qualify,years,edu_level,country)
values (
'孟明星',
'img/doctor/20171105/5/20171105105949803_200_200.jpg',
'郑州明星医疗美容','院长','主任医师',15,'进修','大陆'
);
drop table if exists doctor_skill_rel;
CREATE TABLE doctor_skill_rel(
  rel_id INT PRIMARY KEY AUTO_INCREMENT,
  doctor_id INT,  #医生编号
  skill_id INT    #技能编号
);
insert into doctor_skill_rel (doctor_id,skill_id) values (1,5);
insert into doctor_skill_rel (doctor_id,skill_id) values (1,16);
insert into doctor_skill_rel (doctor_id,skill_id) values (1,2);
insert into doctor_skill_rel (doctor_id,skill_id) values (2,14);
insert into doctor_skill_rel (doctor_id,skill_id) values (2,1);
insert into doctor_skill_rel (doctor_id,skill_id) values (2,12);
insert into doctor_skill_rel (doctor_id,skill_id) values (3,1);
insert into doctor_skill_rel (doctor_id,skill_id) values (3,4);
insert into doctor_skill_rel (doctor_id,skill_id) values (3,6);
insert into doctor_skill_rel (doctor_id,skill_id) values (4,9);
insert into doctor_skill_rel (doctor_id,skill_id) values (4,10);
insert into doctor_skill_rel (doctor_id,skill_id) values (4,17);
insert into doctor_skill_rel (doctor_id,skill_id) values (5,12);
insert into doctor_skill_rel (doctor_id,skill_id) values (5,4);
insert into doctor_skill_rel (doctor_id,skill_id) values (5,6);
insert into doctor_skill_rel (doctor_id,skill_id) values (6,11);
insert into doctor_skill_rel (doctor_id,skill_id) values (6,16);
insert into doctor_skill_rel (doctor_id,skill_id) values (6,17);
insert into doctor_skill_rel (doctor_id,skill_id) values (7,2);
insert into doctor_skill_rel (doctor_id,skill_id) values (7,9);
insert into doctor_skill_rel (doctor_id,skill_id) values (7,6);
insert into doctor_skill_rel (doctor_id,skill_id) values (8,9);
insert into doctor_skill_rel (doctor_id,skill_id) values (8,12);
insert into doctor_skill_rel (doctor_id,skill_id) values (8,5);
insert into doctor_skill_rel (doctor_id,skill_id) values (9,9);
insert into doctor_skill_rel (doctor_id,skill_id) values (9,10);
insert into doctor_skill_rel (doctor_id,skill_id) values (9,7);
insert into doctor_skill_rel (doctor_id,skill_id) values (10,16);
insert into doctor_skill_rel (doctor_id,skill_id) values (10,7);
insert into doctor_skill_rel (doctor_id,skill_id) values (10,15);
insert into doctor_skill_rel (doctor_id,skill_id) values (11,5);
insert into doctor_skill_rel (doctor_id,skill_id) values (11,10);
insert into doctor_skill_rel (doctor_id,skill_id) values (11,6);
insert into doctor_skill_rel (doctor_id,skill_id) values (12,7);
insert into doctor_skill_rel (doctor_id,skill_id) values (12,11);
insert into doctor_skill_rel (doctor_id,skill_id) values (12,13);
insert into doctor_skill_rel (doctor_id,skill_id) values (13,7);
insert into doctor_skill_rel (doctor_id,skill_id) values (13,13);
insert into doctor_skill_rel (doctor_id,skill_id) values (13,8);
insert into doctor_skill_rel (doctor_id,skill_id) values (14,5);
insert into doctor_skill_rel (doctor_id,skill_id) values (14,13);
insert into doctor_skill_rel (doctor_id,skill_id) values (14,14);
insert into doctor_skill_rel (doctor_id,skill_id) values (15,16);
insert into doctor_skill_rel (doctor_id,skill_id) values (15,3);
insert into doctor_skill_rel (doctor_id,skill_id) values (15,9);
insert into doctor_skill_rel (doctor_id,skill_id) values (16,7);
insert into doctor_skill_rel (doctor_id,skill_id) values (16,4);
insert into doctor_skill_rel (doctor_id,skill_id) values (16,14);
insert into doctor_skill_rel (doctor_id,skill_id) values (17,9);
insert into doctor_skill_rel (doctor_id,skill_id) values (17,6);
insert into doctor_skill_rel (doctor_id,skill_id) values (17,10);
insert into doctor_skill_rel (doctor_id,skill_id) values (18,7);
insert into doctor_skill_rel (doctor_id,skill_id) values (18,6);
insert into doctor_skill_rel (doctor_id,skill_id) values (18,1);
insert into doctor_skill_rel (doctor_id,skill_id) values (19,12);
insert into doctor_skill_rel (doctor_id,skill_id) values (19,14);
insert into doctor_skill_rel (doctor_id,skill_id) values (19,15);
insert into doctor_skill_rel (doctor_id,skill_id) values (20,15);
insert into doctor_skill_rel (doctor_id,skill_id) values (20,9);
insert into doctor_skill_rel (doctor_id,skill_id) values (20,17);
insert into doctor_skill_rel (doctor_id,skill_id) values (21,9);
insert into doctor_skill_rel (doctor_id,skill_id) values (21,12);
insert into doctor_skill_rel (doctor_id,skill_id) values (21,2);
insert into doctor_skill_rel (doctor_id,skill_id) values (22,7);
insert into doctor_skill_rel (doctor_id,skill_id) values (22,8);
insert into doctor_skill_rel (doctor_id,skill_id) values (22,1);
insert into doctor_skill_rel (doctor_id,skill_id) values (23,14);
insert into doctor_skill_rel (doctor_id,skill_id) values (23,4);
insert into doctor_skill_rel (doctor_id,skill_id) values (23,12);
insert into doctor_skill_rel (doctor_id,skill_id) values (24,17);
insert into doctor_skill_rel (doctor_id,skill_id) values (24,16);
insert into doctor_skill_rel (doctor_id,skill_id) values (24,11);
insert into doctor_skill_rel (doctor_id,skill_id) values (25,7);
insert into doctor_skill_rel (doctor_id,skill_id) values (25,13);
insert into doctor_skill_rel (doctor_id,skill_id) values (25,15);
insert into doctor_skill_rel (doctor_id,skill_id) values (26,4);
insert into doctor_skill_rel (doctor_id,skill_id) values (26,2);
insert into doctor_skill_rel (doctor_id,skill_id) values (26,9);
insert into doctor_skill_rel (doctor_id,skill_id) values (27,4);
insert into doctor_skill_rel (doctor_id,skill_id) values (27,12);
insert into doctor_skill_rel (doctor_id,skill_id) values (27,14);
insert into doctor_skill_rel (doctor_id,skill_id) values (28,17);
insert into doctor_skill_rel (doctor_id,skill_id) values (28,7);
insert into doctor_skill_rel (doctor_id,skill_id) values (28,10);
insert into doctor_skill_rel (doctor_id,skill_id) values (29,16);
insert into doctor_skill_rel (doctor_id,skill_id) values (29,7);
insert into doctor_skill_rel (doctor_id,skill_id) values (29,2);
insert into doctor_skill_rel (doctor_id,skill_id) values (30,11);
insert into doctor_skill_rel (doctor_id,skill_id) values (30,12);
insert into doctor_skill_rel (doctor_id,skill_id) values (30,17);
insert into doctor_skill_rel (doctor_id,skill_id) values (31,3);
insert into doctor_skill_rel (doctor_id,skill_id) values (31,15);
insert into doctor_skill_rel (doctor_id,skill_id) values (31,7);
insert into doctor_skill_rel (doctor_id,skill_id) values (32,16);
insert into doctor_skill_rel (doctor_id,skill_id) values (32,6);
insert into doctor_skill_rel (doctor_id,skill_id) values (32,14);
insert into doctor_skill_rel (doctor_id,skill_id) values (33,10);
insert into doctor_skill_rel (doctor_id,skill_id) values (33,13);
insert into doctor_skill_rel (doctor_id,skill_id) values (33,12);
insert into doctor_skill_rel (doctor_id,skill_id) values (34,3);
insert into doctor_skill_rel (doctor_id,skill_id) values (34,16);
insert into doctor_skill_rel (doctor_id,skill_id) values (34,15);
insert into doctor_skill_rel (doctor_id,skill_id) values (35,10);
insert into doctor_skill_rel (doctor_id,skill_id) values (35,7);
insert into doctor_skill_rel (doctor_id,skill_id) values (35,17);
insert into doctor_skill_rel (doctor_id,skill_id) values (36,1);
insert into doctor_skill_rel (doctor_id,skill_id) values (36,8);
insert into doctor_skill_rel (doctor_id,skill_id) values (36,4);
insert into doctor_skill_rel (doctor_id,skill_id) values (37,11);
insert into doctor_skill_rel (doctor_id,skill_id) values (37,1);
insert into doctor_skill_rel (doctor_id,skill_id) values (37,4);
insert into doctor_skill_rel (doctor_id,skill_id) values (38,4);
insert into doctor_skill_rel (doctor_id,skill_id) values (38,3);
insert into doctor_skill_rel (doctor_id,skill_id) values (38,12);
insert into doctor_skill_rel (doctor_id,skill_id) values (39,4);
insert into doctor_skill_rel (doctor_id,skill_id) values (39,11);
insert into doctor_skill_rel (doctor_id,skill_id) values (39,2);
insert into doctor_skill_rel (doctor_id,skill_id) values (40,8);
insert into doctor_skill_rel (doctor_id,skill_id) values (40,3);
insert into doctor_skill_rel (doctor_id,skill_id) values (40,12);
insert into doctor_skill_rel (doctor_id,skill_id) values (41,12);
insert into doctor_skill_rel (doctor_id,skill_id) values (41,2);
insert into doctor_skill_rel (doctor_id,skill_id) values (41,17);
insert into doctor_skill_rel (doctor_id,skill_id) values (42,1);
insert into doctor_skill_rel (doctor_id,skill_id) values (42,10);
insert into doctor_skill_rel (doctor_id,skill_id) values (42,14);
insert into doctor_skill_rel (doctor_id,skill_id) values (43,15);
insert into doctor_skill_rel (doctor_id,skill_id) values (43,16);
insert into doctor_skill_rel (doctor_id,skill_id) values (43,17);
insert into doctor_skill_rel (doctor_id,skill_id) values (44,12);
insert into doctor_skill_rel (doctor_id,skill_id) values (44,16);
insert into doctor_skill_rel (doctor_id,skill_id) values (44,15);
insert into doctor_skill_rel (doctor_id,skill_id) values (45,5);
insert into doctor_skill_rel (doctor_id,skill_id) values (45,8);
insert into doctor_skill_rel (doctor_id,skill_id) values (45,7);
insert into doctor_skill_rel (doctor_id,skill_id) values (46,7);
insert into doctor_skill_rel (doctor_id,skill_id) values (46,11);
insert into doctor_skill_rel (doctor_id,skill_id) values (46,12);
insert into doctor_skill_rel (doctor_id,skill_id) values (47,17);
insert into doctor_skill_rel (doctor_id,skill_id) values (47,9);
insert into doctor_skill_rel (doctor_id,skill_id) values (47,5);
insert into doctor_skill_rel (doctor_id,skill_id) values (48,5);
insert into doctor_skill_rel (doctor_id,skill_id) values (48,6);
insert into doctor_skill_rel (doctor_id,skill_id) values (48,14);
insert into doctor_skill_rel (doctor_id,skill_id) values (49,14);
insert into doctor_skill_rel (doctor_id,skill_id) values (49,6);
insert into doctor_skill_rel (doctor_id,skill_id) values (49,2);
insert into doctor_skill_rel (doctor_id,skill_id) values (50,8);
insert into doctor_skill_rel (doctor_id,skill_id) values (50,12);
insert into doctor_skill_rel (doctor_id,skill_id) values (50,7);
insert into doctor_skill_rel (doctor_id,skill_id) values (51,4);
insert into doctor_skill_rel (doctor_id,skill_id) values (51,2);
insert into doctor_skill_rel (doctor_id,skill_id) values (51,14);
insert into doctor_skill_rel (doctor_id,skill_id) values (52,9);
insert into doctor_skill_rel (doctor_id,skill_id) values (52,5);
insert into doctor_skill_rel (doctor_id,skill_id) values (52,3);
insert into doctor_skill_rel (doctor_id,skill_id) values (53,6);
insert into doctor_skill_rel (doctor_id,skill_id) values (53,17);
insert into doctor_skill_rel (doctor_id,skill_id) values (53,13);
insert into doctor_skill_rel (doctor_id,skill_id) values (54,8);
insert into doctor_skill_rel (doctor_id,skill_id) values (54,3);
insert into doctor_skill_rel (doctor_id,skill_id) values (54,4);
insert into doctor_skill_rel (doctor_id,skill_id) values (55,6);
insert into doctor_skill_rel (doctor_id,skill_id) values (55,3);
insert into doctor_skill_rel (doctor_id,skill_id) values (55,13);
insert into doctor_skill_rel (doctor_id,skill_id) values (56,3);
insert into doctor_skill_rel (doctor_id,skill_id) values (56,13);
insert into doctor_skill_rel (doctor_id,skill_id) values (56,16);
insert into doctor_skill_rel (doctor_id,skill_id) values (57,15);
insert into doctor_skill_rel (doctor_id,skill_id) values (57,7);
insert into doctor_skill_rel (doctor_id,skill_id) values (57,12);
insert into doctor_skill_rel (doctor_id,skill_id) values (58,4);
insert into doctor_skill_rel (doctor_id,skill_id) values (58,10);
insert into doctor_skill_rel (doctor_id,skill_id) values (58,17);
insert into doctor_skill_rel (doctor_id,skill_id) values (59,12);
insert into doctor_skill_rel (doctor_id,skill_id) values (59,10);
insert into doctor_skill_rel (doctor_id,skill_id) values (59,3);
insert into doctor_skill_rel (doctor_id,skill_id) values (60,15);
insert into doctor_skill_rel (doctor_id,skill_id) values (60,12);
insert into doctor_skill_rel (doctor_id,skill_id) values (60,2);
insert into doctor_skill_rel (doctor_id,skill_id) values (61,4);
insert into doctor_skill_rel (doctor_id,skill_id) values (61,1);
insert into doctor_skill_rel (doctor_id,skill_id) values (61,13);
insert into doctor_skill_rel (doctor_id,skill_id) values (62,14);
insert into doctor_skill_rel (doctor_id,skill_id) values (62,1);
insert into doctor_skill_rel (doctor_id,skill_id) values (62,13);