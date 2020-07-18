
-- Host: 127.0.0.1
-- Generation Time: 2020-05-30 22:16:11


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xgj`
--
CREATE DATABASE IF NOT EXISTS `xgj` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `xgj`;

-- --------------------------------------------------------

--
-- 表的结构 `xgj_index_carousel`
--

DROP TABLE IF EXISTS `xgj_index_carousel`;
CREATE TABLE `xgj_index_carousel` (
  `cid` int(11) NOT NULL,                            
  `img` varchar(128) DEFAULT NULL,                  
  `title` varchar(64) DEFAULT NULL,             
  `laptop_id` int(11) DEFAULT NULL                    
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 插入之前先把表清空（truncate） `xgj_index_carousel`
--

TRUNCATE TABLE `xgj_index_carousel`;
--
-- 转存表中的数据 `xgj_index_carousel`
--

INSERT INTO `xgj_index_carousel` (`cid`, `img`, `title`, `laptop_id`) VALUES
(1, 'O1CN01CNc8gS1IuW38X1BKy_2200648900953.jpg_790x10000Q75.jpg_.webp', '康师傅冰红茶', 1),
(2, 'O1CN01oA6Q2f1rRDGPsKpdN_1715535627.jpg_790x10000Q75.jpg_.webp', '上好佳大礼包', 2),
(3, 'O1CN01XXzsxN1rRDGLNzhI8_1715535627.jpg_790x10000Q75.jpg_.webp', '常记掌心脆', 3),
(4, 'O1CN016Lblm01rRDGJOxLjf_1715535627.jpg_790x10000Q75.jpg_.webp', '洽洽嘎吱脆', 4),
(5, 'O1CN01M2t9yR1IuW36kqB7h_2200648900953.jpg_790x10000Q75.jpg_.webp', '米多奇烤馍片', 5);


-- --------------------------------------------------------

--
-- 表的结构 `xgj_index_product`
--

DROP TABLE IF EXISTS `xgj_index_product`;
CREATE TABLE `xgj_index_product` (
  `pid` int(11) NOT NULL,                                  
  `title` varchar(64) DEFAULT NULL,                         
  `details` varchar(128) DEFAULT NULL,                      
  `pic` varchar(128) DEFAULT NULL,                          
  `price` decimal(10,2) DEFAULT NULL,                    
  `laptop_id` int(11) DEFAULT NULL,                      
  `category` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 插入之前先把表清空（truncate） `xgj_index_product`
--

TRUNCATE TABLE `xgj_index_product`;
--
-- 转存表中的数据 `xgj_index_product`
--

INSERT INTO `xgj_index_product` (`pid`, `title`, `details`, `pic`, `price`, `laptop_id`, `category`) VALUES
(1, '宇仔大刀肉辣条', '童年味道', '2020-05-31_002056.png', '6.5', 6, 1),
(2, '爱尚咪咪虾条大礼包', '多种口味混合', '2020-05-31_002020.png', '9.9', 7, 1),
(3, '狗牙儿锅巴组合装', '儿时回忆 好味道', '2020-05-31_002156.png', '9.9', 8, 1),
(4, '禛香肥牛虾条大礼包', null, '2020-05-31_002423.png', '7.8', 9, 1),
(5, '口水娃小鱼仔混合60包', null, '2020-05-31_002819.png', '9.9', 10, 2),
(6, '金磨坊麻辣鱼豆腐50包', null, '2020-05-31_003413.png', '11.9', 11, 2),
(7, '步步升南京板鸭20袋', null, '2020-05-31_003544.png', '9.9', 12, 2),
(8, '德食鹌鹑蛋混合20包', null, '2020-05-31_003755.png', '9.9', 13, 2),
(9, '奥锦齐大拇指子弹肠20包', null, '2020-05-31_004435.png', '11.5', 14, 2),
(10, '卫龙小面筋 第二份减3元', null, '2020-05-31_011148.png', '9.9', 15, 2),
(11, '冬己咸蛋黄小圆饼干3包', null, '2020-05-31_011621.png', '15.0', 16, 3),
(12, '嗨吃家酸辣粉6桶组合装', null, '2020-05-31_014339.png', '15.9', 17, 3),
(13, '娃哈哈AD钙奶20瓶整箱', null, '2020-05-31_014637.png', '19.8', 18, 3),
(14, '旺旺碎冰冰24支混合口味', null, '2020-05-31_015138.png', '10.5', 19, 3);



-- --------------------------------------------------------

--
-- 表的结构 `xgj_laptop`
--

DROP TABLE IF EXISTS `xgj_laptop`;
CREATE TABLE `xgj_laptop` (
  `lid` int(11) NOT NULL,
  `family_id` int(11) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `subtitle` varchar(128) DEFAULT NULL,
  `price` decimal(10,1) DEFAULT NULL,
	`pre_price` decimal(10,1) DEFAULT NULL,
	`sales` int(11) DEFAULT NULL,
	`freight` decimal(5,1) DEFAULT NULL,
	`ship_address` varchar(32) DEFAULT NULL,
	`ldate` bigint(16) DEFAULT NULL,
	`license_no` varchar(32) DEFAULT NULL,
	`product_gb` varchar(32) DEFAULT NULL,
	`comp_name` varchar(32) DEFAULT NULL,
	`comp_address` varchar(128) DEFAULT NULL,
	`comp_tel` varchar(32) DEFAULT NULL,
	`ingredients` varchar(128) DEFAULT NULL,
	`storage` varchar(128) DEFAULT NULL,
	`quality` varchar(32) DEFAULT NULL,
	`additives` varchar(32) DEFAULT NULL,
	`brand` varchar(64) DEFAULT NULL,
	`series` varchar(64) DEFAULT NULL,
	`stock` bigint(20) DEFAULT NULL,
	`spec` varchar(128) DEFAULT NULL,
	`made` varchar(32) DEFAULT NULL,
	`province` varchar(32) DEFAULT NULL,
	`city` varchar(32) DEFAULT NULL,
	`is_sugar` tinyint(4) DEFAULT NULL, 
	`is_org` tinyint(4) DEFAULT NULL, 
	`code` varchar(32) DEFAULT NULL,
	`pack` varchar(32) DEFAULT NULL,
	`net_content` varchar(32) DEFAULT NULL,
	`details` varchar(1024) DEFAULT NULL,
  `shelf_time` bigint(20) DEFAULT NULL,
  `is_onsale` tinyint(4) DEFAULT NULL,
	`category` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 插入之前先把表清空（truncate） `xgj_laptop`
--

TRUNCATE TABLE `xgj_laptop`;
--
-- 转存表中的数据 `xgj_laptop`
--

INSERT INTO `xgj_laptop` (`lid`, `family_id`, `title`, `subtitle`, `price`, `pre_price`, `sales`, `freight`, `ship_address`, `ldate`, `license_no`, `product_gb`, `comp_name`, `comp_address`, `comp_tel`, `ingredients`, `storage`, `quality`, `additives`, `brand`, `series`, `stock`, `spec`, `made`, `province`, `city`, `is_sugar`, `is_org`, `code`, `pack`, `net_content`, `details`, `shelf_time`, `is_onsale`, `category`) VALUES
(1, 10, '康师傅冰红茶柠檬味250ml*6盒装饮料整箱纸盒装包邮夏季解暑饮品', null, '18.9', '9.9', 1234, null, '江苏淮安', 1585670400, 'SC10632100300188', 'GB/T21733', '扬州顶津食品有限公司', '江苏省扬州市荷叶西路11号', '400-618-8080', '水、白砂糖、果葡糖浆、速溶红茶、食用盐等', '保存于阴凉干燥处，避免阳光爆嗮', '360','详见包装', '康师傅', '冰红茶饮料饮品', 53456, '【冰红茶盒装】250ml*6盒', '中国大陆', '江苏省', '扬州市', 1, 0, null, '盒装', '250ml及以下', null, 158567040089, 1, 0),
(5, 1, '米多奇烤馍片小馍丁整箱膜片早餐饼干零食小吃散装多口味休闲食品', null, '16.8', '9.8', 2607, null, '江苏淮安', 1585670400, 'SC11241078200594', null, '河南聚增食品有限公司', '生产地址1:辉县市太行大道东段路北;生产地址2:辉县市太行大道与学院路交叉口东南角', '4006090657', '小麦粉、精炼植物油、白砂糖等', '置于阴凉干燥处密封存放', '270','见包装', '米多奇', '馍片饼干儿时零食小吃', 43242, '【馍丁15包】混合5口味', '中国大陆', '河南省', null, 1, 0, '6926215372890A', '散装', '500g', null, 158567040089, 1, 0),
(2, 1, '上好佳鲜虾片薯片40包大礼包薯条零食小吃休闲食品充饥夜宵整箱', null, '18.8', '12.8', 2653, null, '江苏苏州', 1585670400, 'SC11231011800261', null, '上好佳（中国）有限公司', '上海市青浦区徐泾镇沪青平公路2277号', '02159898588', '详见包装', '置于阴凉干燥处密封存放', '270','详见包装', 'Oishi/上好佳', '鲜虾片薯片大礼包', 34234, '鲜虾片20包', '中国大陆', '上海', null, 1, 0, null, '散装', '300g', null, 158567040089, 1, 0),
(3, 8, '常记干脆面掌心脆干吃面方便面60包网红零食小吃休闲食品散装整箱', null, '13.7', '5.9', 2653, null, '江苏苏州', 1585670400, 'SC10741088300421', null, '孟州市金紫阳食品有限责任公司', '孟州市大定办事处上作村', '0391-8576543', '小麦粉、棕榈油、水、食用盐等', '阴凉干燥处存放，避免阳光直射', '180','详见包装', '常记掌心脆', '儿时零食 干吃面', 2142, '混合口味10包', '中国大陆', '河南省', null, 1, 0, '6946975507226', '包装', '440g', null, 158567040089, 1, 0),
(4, 1, '洽洽喀吱脆薯片薯脆非油炸充饥夜宵散装自选零食小吃休闲食品整箱', null, '16.9', '8.8', 5332, null, '江苏苏州', 1585670400, 'SC11834010705158', 'GB/T 22699', '洽洽食品股份有限公司', '安徽省合肥市经济技术开发区莲花路1307号', '4008877819', '马铃薯淀粉、棕榈油、白砂糖等', '置于阴凉干燥处密封存放', '270','详见包装', 'ChaCheer/洽洽', '薯片 儿时零食', 6432, '混合口味*6支', '中国大陆', '安徽省', null, 1, 0, '6924187839236', '包装', '270g', null, 158567040089, 1, 0),
(6, 2, '大刀肉辣条麻辣儿时怀旧素肉零食大礼包网红辣味小吃休闲食品整箱', null, '10.5', '6.5', 21543, null, '江苏苏州', 1585670400, 'SC10734112405191', null, '全椒县豁达食品厂', '安徽省滁州市全椒县古河镇龙山路118号', '0550-533599', '小麦粉，饮用水，食用油、辣椒等', '避光、低温保存', '120','详见包装', '宇仔', '大刀肉辣条 大礼包', 45356, '大刀肉【1包】约38个', '中国大陆', '安徽省', null, null, 0, '6943829498969', '包装', '258g', null, 158567040089, 1, 1),
(7, 1, '咪咪虾条蟹味粒薯片8090后怀旧网红零食小吃休闲食品充饥夜宵整箱', null, '19.8', '9.9', 34236, null, '江苏苏州', 1585670400, 'SC12437139600060', 'GB/T20977', '爱尚(山东)有限公司', '临沂经济开发区', '021-57275756', '小麦粉，食用植物油，白砂糖，食用盐等', '请存放于阴凉干燥处，避免阳光直射', '300','详见包装', '爱尚', '虾条薯片零食小吃', 56836, '虾条20包', '中国大陆', '山东省', null, 1, 0, '6921682830720', '包装', '720g', null, 158567040089, 1, 1),
(8, 1, '狗牙儿锅巴30小包装比萨卷怀旧网红零食小吃休闲食品充饥夜宵整箱', null, '14.9', '9.8', 34332, null, '江苏苏州', 1585670400, 'SC11212022303637', 'GB/T22699', '天津市龙康食品有限责任公司', '天津市静海区独流莲花工业园内', '022-68291587', '小麦粉，食用植物油，白砂糖，食用盐等', '避光低温保存', '270','详见包装', '狗牙儿', '锅巴 儿时零食', 45236, '比萨卷10包+锅巴10包', '中国大陆', '天津', null, 1, 0, '6921682830720', '包装', '500g', null, 158567040089, 1, 1),
(9, 2, '香菇肥牛禛香肥牛30袋大豆制品素肉豆干90后怀旧零食小吃休闲食品', null, '13.8', '7.8', 14332, null, '江苏苏州', 1585670400, 'SC11244512103065', 'Q/ZX0001S', '广东真香食品实业有限公司', '潮州市潮安区庵埠梅溪工业区', '0768-5910243', '大豆粨、白砂糖、香菇、食用盐、香辛料等', '置于阴凉干燥处，避免阳光直射和高温。', '240','详见包装', '禛香', '大豆制品素肉豆干', 34563, '禛香肥牛15包', '中国大陆', '广东省', null, 1, 0, '6918768000238', '包装', '300g', null, 158567040089, 1, 1),
(10, 5, '口水娃小鱼仔零食小包装60包口水鱼毛毛鱼香辣小鱼干即食湖南特产', null, '28.8', '9.9', 12352, null, '江苏苏州', 1585670400, 'SC11643061100097', null, '湖南口水娃食品有限公司', '湖南省岳阳市君山区工业园B区3号', '4000817517', '鱼，植物油，辣椒，食用盐等', '避光低温', '300','详见包装', '口水娃', '香辣小鱼干小鱼仔零食', 34672, '散称20包混合口味', '中国大陆', '湖南省', '岳阳市', 1, 0, '6935768970088', '包装', '260g', null, 158567040089, 1, 2),
(11, 2, '金磨坊鱼豆腐50包麻辣豆干湖南特产小包装零食小吃散装整箱豆腐干', null, '19.8', '11.9', 12352, null, '江苏苏州', 1585670400, 'SC10443018100398', 'SB/T10649', '湖南金磨坊食品有限公司', '湖南省长沙市浏阳市浏阳经济技术开发区康翼路123号', '0731-83285658', '冻鱼糜、饮用水、大豆蛋白等', '至于阴凉干燥处，避免阳光直射', '270','详见包装', '金磨坊', '麻辣豆干鱼豆腐', 2124, '鱼豆腐香辣味25包', '中国大陆', '湖南省', null, 0, 0, null, '包装', '250g', null, 158567040089, 1, 2),
(12, 1, '步步升南京板鸭26g*20袋8090后怀旧零食小吃膨化休闲食品散装自选', null, '12.8', '9.9', 12312, null, '江苏苏州', 1585670400, 'SC11244512104409', 'GB/T 22699', '潮州市福德园食品有限公司', '潮州市潮安区庵埠镇梅溪工业新区', '0768-5910853', '玉米、大米、面粉、食用植物油、白砂糖等', '至于阴凉干燥处，避免阳光直射', '300','详见包装', 'BBS/步步升', '怀旧零食小吃膨化', 5362, '20袋装', '中国大陆', '广东省', null, 1, 0, '6926633400328', '包装', '26g', null, 158567040089, 1, 2),
(13, 3, '德食鹌鹑蛋卤蛋20包五香铁蛋小包装充饥夜宵整箱零食小吃休闲食品', null, '20.7', '9.8', 8567, null, '江苏苏州', 1585670400, 'SC10436098100156', 'SB/T 10369', '丰城市国光食品实业有限公司', '江西省丰城市筱塘集镇', '0795-6700666', '鹌鹑蛋、食用盐、白砂糖、辣椒、食用香辛料等', '阴凉、通风处、避免阳光直射', '270','详见包装', '德食', '鹌鹑蛋', 4325, '【30颗蛋】铁蛋（卤蛋）10包', '中国大陆', '江西省', '宜春市', 1, 0, '6933328402161', '包装', '320g', null, 158567040089, 1, 2),
(14, 3, '奥锦奇大拇哥子弹肠台式烤小香肠50包火腿肠迷你肉肠肉枣零食小吃', null, '18.8', '11.5', 7500, null, '江苏苏州', 1585670400, 'SC10421040500090', 'SB/T10279', '抚顺奥锦奇食品制造有限公司', '抚顺经济开发区太平洋产业城内规1区33号地块', '400-024-6627', '鸡肉、生活饮用水、淀粉、白砂糖、食品添加剂等', '卫生、阴凉、通风、干燥处', '180','详见包装', '奥锦奇', '肉枣子弹肠烤小香肠', 4536, '3口味混合20包', '中国大陆', '辽宁省', '抚顺市', 1, 0, '6921803400016', '散装', '360g', null, 158567040089, 1, 2),
(15, 2, '卫龙小面筋280g亲嘴烧网红辣条零食大礼包麻辣儿时怀旧小吃整箱', null, '17.8', '9.3', 7500, null, '江苏苏州', 1585670400, 'SC12541110000066', 'Q/LHWL 0002S', '漯河卫来食品科技有限公司', '漯河经济技术开发区燕山路南段民营工业园', '400-1999-085', '小麦粉、植物油、食用盐、白砂糖等', '请置于阴凉干燥处，避免阳光直射', '120','详见包装', '卫龙', '卫龙辣条 小面筋', 23123, '小面筋280g*1袋（12包）-无赠品', '中国大陆', '河南省', null, 1, 0, '3935284415193', '包装', '280g', null, 158567040089, 1, 2),
(16, 1, '冬己咸蛋黄饼干3包日式麦芽小圆饼夹心网红零食小吃休闲食品整箱', null, '19.8', '15.0', 3210, null, '江苏苏州', 1585670400, 'SC10844520305010', 'GB/T20980', '广东森乐食品有限公司', '揭阳市揭东区云路镇埔美村工业区(横路下西片)', '4008366558', '小麦粉、植物油、麦芽、白砂糖、葡萄糖浆等', '请置于阴凉干燥处，避免阳光直射', '300','详见包装', 'ddung/冬己', '麦芽饼干 糕点', 33123, '咸蛋黄味106g*2袋', '中国大陆', '广东省', null, 1, 0, '8809489790806', '包装', '212g', null, 158567040089, 1, 3),
(17, 8, '嗨吃家酸辣粉6桶速食方便食品 正宗重庆风味宿舍懒人泡面粉丝米线', null, '37.9', '15.9', 3210, null, '江苏苏州', 1585670400, 'SC10741082500124', 'GB 17400-2015', '河南惠生圆食品有限公司', '河南省温县产业集聚区中福路36号', '4008517656', '详见包装', '置于阴凉干燥处避免阳光直射', '300','详见包装', '忆之味', '酸辣粉粉丝米线方便面', 34251, '【整箱】126g嗨吃家酸辣粉*6桶装', '中国大陆', '河南省', '焦作市', 0, 0, null, '包装', '504g', null, 158567040089, 1, 3),
(18, 10, '娃哈哈ad钙奶220ml*20瓶整箱哇哈哈早餐牛奶酸奶乳酸菌饮料大瓶', null, '22.1', '19.8', 7342, null, '江苏苏州', 1585670400, 'SC10533019906839', null, '杭州娃哈哈饮料有限公司', '浙江省杭州市杭州经济技术开发区M-10-1-3地块', '4008267900', '水、白砂糖、全脂乳粉等', '置于阴凉干燥处密封存放', '180','详见包装', 'WAHAHA/娃哈哈', 'AD钙奶牛奶酸奶乳酸菌 饮料', 3345, 'ad钙奶220g*12瓶', '中国大陆', '浙江省', '杭州市', 1, 0, '6902083881085', '包装', '4400g', null, 158567040089, 1, 3),
(19, 10, '旺旺碎冰冰24支混合口味儿童饮料果冻布丁整箱旺仔碎碎冰冻痴零食', null, '15,5', '10.5', 1167, null, '江苏苏州', 1585670400, 'SC11837012506644', null, '山东大旺食品有限公司', '济南市济阳县济北经济开发区', '4008267900', '详见包装', '避免阳光直射，置于阴凉干燥处或冷冻条件下保存', '360','详见包装', '旺旺', '旺旺碎冰冰 儿童饮料', 3131, '【共1袋】78ml*8支', '中国大陆', '山东省', '济南市', 1, 0, null, '包装', '709g', null, 158567040089, 1, 3);



-- --------------------------------------------------------

--
-- 表的结构 `xgj_laptop_top_pic`
--

DROP TABLE IF EXISTS `xgj_laptop_top_pic`;
CREATE TABLE `xgj_laptop_top_pic` (
  `tid` int(11) NOT NULL,
  `laptop_id` int(11) DEFAULT NULL,
  `pic` varchar(128) DEFAULT NULL,
	`torder` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 插入之前先把表清空（truncate） `xgj_laptop_top_pic`
--

TRUNCATE TABLE `xgj_laptop_top_pic`;
--
-- 转存表中的数据 `xgj_laptop_top_pic`
--

INSERT INTO `xgj_laptop_top_pic` (`tid`, `laptop_id`, `pic`, `torder`) VALUES
(1, 1, 'O1CN01cHTazL1IuW2fn9xY9_2200648900953.jpg_2200x2200Q100s50.jpg_.webp', 2),
(2, 1, 'O1CN01JLWO5E1IuW2o7FATI_2200648900953.jpg_2200x2200Q100s50.jpg_.webp', 5),
(3, 1, 'O1CN01LodsLh1IuW2pjP6wb_2200648900953.jpg_2200x2200Q100s50.jpg_.webp', 3),
(4, 1, 'O1CN01zeEIyC1IuW3M5BJ3i_2200648900953-0-pixelsss.jpg_2200x2200Q100s50.jpg_.webp', 1),
(5, 1, 'O1CN015w1R6L1IuW2pjOVVl_2200648900953.jpg_2200x2200Q100s50.jpg_.webp', 4),
(6, 5, 'O1CN01XCZ5eF1IuW3PyYG5Y_2200648900953-0-pixelsss.jpg_2200x2200Q100s50.jpg_.webp', 1),
(7, 5, 'O1CN01FxPDoV1IuW0rHKeja_2200648900953.jpg_2200x2200Q100s50.jpg_.webp', 2),
(8, 5, 'O1CN01E4WhOR1IuW0lIBUbq_2200648900953.jpg_2200x2200Q100s50.jpg_.webp', 3),
(9, 5, 'O1CN01xfFkt91IuW1FMS2mk_2200648900953.jpg_2200x2200Q100s50.jpg_.webp', 4),
(10, 5, 'O1CN01bUON2Z1IuW1R44qkJ_2200648900953.jpg_2200x2200Q100s50.jpg_.webp', 5),
(11, 2, 'O1CN01ZuVwrz1rRDGWF9TBX_0-item_pic.jpg_640x640q80_.webp', 1),
(12, 2, 'O1CN01hflFBy1rRDGPHU0y0_1715535627.jpg_640x640q80_.webp', 2),
(13, 2, 'O1CN018PXMrN1rRDGCdoJ5F_1715535627.jpg_640x640q80_.webp', 3),
(14, 2, 'O1CN01t0dDc61rRDGPHWxui_1715535627.jpg_640x640q80_.webp', 4),
(15, 2, 'O1CN01gEyZkH1rRDGCdndVu_1715535627.jpg_640x640q80_.webp', 5),
(16, 3, 'O1CN010Nkzxl1rRDGVpsbeh_0-item_pic.jpg_640x640q80_.webp', 1),
(17, 3, 'O1CN01fxmGma1rRDASQLcL8_1715535627.jpg_640x640q80_.webp', 2),
(18, 3, 'TB2mMtpyMmTBuNjy1XbXXaMrVXa_1715535627.jpg_640x640q80_.webp', 3),
(19, 3, 'TB2I9upyN1YBuNjy1zcXXbNcXXa_1715535627.jpg_640x640q80_.webp', 4),
(20, 3, 'O1CN01CiTdye1rRDAQH0nhP_1715535627.jpg_640x640q80_.webp', 5),
(21, 4, 'O1CN01DaQoaV1rRDGQlf422_1715535627.jpg_640x640q80_.webp', 1),
(22, 4, 'O1CN010G5y7K1rRD9hiBpc1_1715535627.jpg_640x640q80_.webp', 2),
(23, 4, 'O1CN01LH03xk1rRDDAO8B8T_1715535627.jpg_640x640q80_.webp', 3),
(24, 4, 'O1CN017qGgBF1rRD9qFfzRd_1715535627.jpg_640x640q80_.webp', 4),
(25, 4, 'O1CN01aPGJZJ1rRD9oakd86_1715535627.jpg_640x640q80_.webp', 5),
(26, 6, 'O1CN01sJOAdf1rRDGWFCpGt_0-item_pic.jpg_640x640q80_.webp', 1),
(27, 6, 'TB2.qyTBpuWBuNjSszbXXcS7FXa_1715535627.jpg_640x640q80_.webp', 2),
(28, 6, 'TB2y7YpBAOWBuNjSsppXXXPgpXa_1715535627.jpg_640x640q80_.webp', 3),
(29, 6, 'TB2JjGLsXkoBKNjSZFEXXbrEVXa_1715535627.jpg_640x640q80_.webp', 4),
(30, 6, 'TB2wyKTvEhnpuFjSZFEXXX0PFXa_1715535627.jpg_640x640q80_.webp', 5),
(31, 7, 'O1CN01mQ6oCB1rRDGXLTrHg_0-item_pic.jpg_640x640q80_.webp', 1),
(32, 7, 'TB2exJil3LD8KJjSszeXXaGRpXa_1715535627.jpg_640x640q80_.webp', 2),
(33, 7, 'TB26OMBXAfA11Bjy0FcXXc4cXXa_1715535627.jpg_640x640q80_.webp', 3),
(34, 7, 'TB2BC7AXuzz11Bjy1XdXXbfqVXa_1715535627.jpg_640x640q80_.webp', 4),
(35, 7, 'TB2xDOSflDH8KJjSszcXXbDTFXa_1715535627.jpg_640x640q80_.webp', 5),
(36, 8, 'O1CN01iV4sNB1rRDGTRt8zV_0-item_pic.jpg_640x640q80_.webp', 1),
(37, 8, 'O1CN01X1WqAL1rRDArJKLuW_1715535627.jpg_640x640q80_.webp', 2),
(38, 8, 'O1CN01xwYYK81rRDApzkEH0_1715535627.jpg_640x640q80_.webp', 3),
(39, 8, 'TB2sNqMcyb.BuNjt_jDXXbOzpXa_1715535627.jpg_640x640q80_.webp', 4),
(40, 8, 'O1CN01NsDONK1rRDArBZKTM_1715535627.jpg_640x640q80_.webp', 5),
(41, 9, 'O1CN01KOpH0x1rRDGSTSuOm_0-item_pic.jpg_640x640q80_.webp', 1),
(42, 9, 'O1CN011rRD7w6TF1n1Xay_1715535627.jpg_640x640q80_.webp', 2),
(43, 9, 'TB22vIhiZj_B1NjSZFHXXaDWpXa_1715535627.jpg_640x640q80_.webp', 3),
(44, 9, 'O1CN011rRD7vTortgyV3g_1715535627.jpg_640x640q80_.webp', 4),
(45, 9, 'O1CN011rRD7uxT5NeMVNJ_1715535627.jpg_640x640q80_.webp', 5),
(46, 10, 'O1CN01hpyZ9d1rRDGTqHkm4_0-item_pic.jpg_640x640q80_.webp', 1),
(47, 10, 'TB2P6AygpXXXXXrXFXXXXXXXXXX_1715535627.jpg_640x640q80_.webp', 2),
(48, 10, 'TB2UZQRgpXXXXXjXpXXXXXXXXXX_1715535627.jpg_640x640q80_.webp', 3),
(49, 10, 'O1CN01LNoBFw1rRDD4Aaqtj_1715535627.jpg_640x640q80_.webp', 4),
(50, 10, 'O1CN018XujTP1rRDD5MNKVZ_1715535627.jpg_640x640q80_.webp', 5),
(51, 11, 'O1CN01b7nW481rRDGYF0BJS_0-item_pic.jpg_640x640q80_.webp', 1),
(52, 11, 'O1CN01unMRKl1rRDEGX4aIU_1715535627.jpg_640x640q80_.webp', 2),
(53, 11, 'O1CN019M7ysd1rRDEAxtRai_1715535627.jpg_640x640q80_.webp', 3),
(54, 11, 'O1CN012yu4kD1rRDE6JtucI_1715535627.jpg_640x640q80_.webp', 4),
(55, 11, 'O1CN01C74xrK1rRDEEIWWEQ_1715535627.jpg_640x640q80_.webp', 5),
(56, 12, 'O1CN01MocGTM1rRDGWF9Gi8_0-item_pic.jpg_640x640q80_.webp', 1),
(57, 12, 'O1CN01fiyFBt1rRDAZu1awS_1715535627.jpg_640x640q80_.webp', 2),
(58, 12, 'O1CN01AK58El1rRDEHAMaLC_1715535627.jpg_640x640q80_.webp', 3),
(59, 12, 'O1CN014DIjxa1rRDAcRpquD_1715535627.jpg_640x640q80_.webp', 4),
(60, 12, 'O1CN01QwkXSp1rRDAeNr33e_1715535627.jpg_640x640q80_.webp', 5),
(61, 13, 'O1CN01g9DhGG1rRDGXLTadX_0-item_pic.jpg_640x640q80_.webp', 1),
(62, 13, 'O1CN011rRD7ueWhW9BMm6_1715535627.jpg_640x640q80_.webp', 2),
(63, 13, 'O1CN011rRD7uvs5KzFIRp_1715535627.jpg_640x640q80_.webp', 3),
(64, 13, 'O1CN011rRD7tJvU9xQTyR_1715535627.jpg_640x640q80_.webp', 4),
(65, 13, 'O1CN011rRD7uQJ6oMzI3Q_1715535627.jpg_640x640q80_.webp', 5),
(66, 14, 'O1CN01lM9gqv1rRDGYEz6no_0-item_pic.jpg_640x640q80_.webp', 1),
(67, 14, 'TB2moy0fsLJ8KJjy0FnXXcFDpXa_1715535627.jpg_640x640q80_.webp', 2),
(68, 14, 'TB2nNhyqg0kpuFjSspdXXX4YXXa_1715535627.jpg_640x640q80_.webp', 3),
(69, 14, 'O1CN01SAsBOR1rRD9vhw9CZ_1715535627.jpg_640x640q80_.webp', 4),
(70, 14, 'TB2RK1LfznD8KJjSspbXXbbEXXa_1715535627.jpg_640x640q80_.webp', 5),
(71, 15, 'O1CN016OHGDE1rRDGXxLxFP_0-item_pic.jpg_640x640q80_.webp', 1),
(72, 15, 'TB2SQkFeXXXXXXRXXXXXXXXXXXX_1715535627.jpg_640x640q80_.webp', 2),
(73, 15, 'TB2SIrPxHBmpuFjSZFAXXaQ0pXa_1715535627.jpg_640x640q80_.webp', 3),
(74, 15, 'TB2.tjAtMJkpuFjSszcXXXfsFXa_1715535627.jpg_640x640q80_.webp', 4),
(75, 15, 'TB2qQuMJv1TBuNjy0FjXXajyXXa_1715535627.jpg_640x640q80_.webp', 5),
(76, 16, 'O1CN01jqsNtO1rRDGTRrnq5_0-item_pic.jpg_640x640q80_.webp', 1),
(77, 16, 'O1CN01NYw7BJ1rRDDHAQkiJ_1715535627.jpg_640x640q80_.webp', 2),
(78, 16, 'O1CN01aK15eC1rRDDFkxcgo_1715535627.jpg_640x640q80_.webp', 3),
(79, 16, 'O1CN012uK2Yu1rRDDGVqLQ8_1715535627.jpg_640x640q80_.webp', 4),
(80, 16, 'O1CN0139wwHW1rRDDG6ayEm_1715535627.jpg_640x640q80_.webp', 5),
(81, 17, 'O1CN01sFaC3w1rRDGaNgqBA_0-item_pic.jpg_640x640q80_.webp', 1),
(82, 17, 'O1CN012bOmLz1rRDDgXOspl_1715535627.jpg_640x640q80_.webp', 2),
(83, 17, 'O1CN01Epb9j81rRDDefQBKY_1715535627.jpg_640x640q80_.webp', 3),
(84, 17, 'O1CN01kHN3te1rRDDdUA47q_1715535627.jpg_640x640q80_.webp', 4),
(85, 17, 'O1CN01I8sef71rRDDhPX9bE_1715535627.png_640x640q80_.webp', 5),
(86, 18, 'O1CN01Hmzenx1rRDGZfsF2o_0-item_pic.jpg_640x640q80_.webp', 1),
(87, 18, 'O1CN01oYxWoC1rRD9wxiAat_1715535627.jpg_640x640q80_.webp', 2),
(88, 18, 'O1CN01J3T22c1rRDA67mjYA_1715535627.jpg_640x640q80_.webp', 3),
(89, 18, 'O1CN013S7dQR1rRDA4df3Mi_1715535627.jpg_640x640q80_.webp', 4),
(90, 18, 'O1CN01THmhPN1rRDA3QjH2E_1715535627.jpg_640x640q80_.webp', 5),
(91, 19, 'O1CN01NkoMLD1rRDGYF0RvU_0-item_pic.jpg_640x640q80_.webp', 1),
(92, 19, 'O1CN01HmD6Dg1rRDG9ceSDB_1715535627.jpg_640x640q80_.webp', 2),
(93, 19, 'O1CN01QsjNds1rRDGHCqQyO_1715535627.jpg_640x640q80_.webp', 3),
(94, 19, 'O1CN01Jvk61c1rRDGIAIvf8_1715535627.jpg_640x640q80_.webp', 4),
(95, 19, 'O1CN01LkacPt1rRDGI1EsEB_1715535627.jpg_640x640q80_.webp', 5);



-- --------------------------------------------------------

--
-- 表的结构 `xgj_laptop_pic`
--

DROP TABLE IF EXISTS `xgj_laptop_pic`;
CREATE TABLE `xgj_laptop_pic` (
  `pid` int(11) NOT NULL,
  `laptop_id` int(11) DEFAULT NULL,
  `pic` varchar(128) DEFAULT NULL,
	`porder` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 插入之前先把表清空（truncate） `xgj_laptop_pic`
--

TRUNCATE TABLE `xgj_laptop_pic`;
--
-- 转存表中的数据 `xgj_laptop_pic`
--

INSERT INTO `xgj_laptop_pic` (`pid`, `laptop_id`, `pic`, `porder`) VALUES
(1, 1, 'O1CN01QaxSIL1IuW2q2ONtI_2200648900953.jpg_2200x2200Q100s50.jpg_.webp', 1),
(2, 1, 'O1CN01zmd38J1IuW2fqoTED_2200648900953.jpg_2200x2200Q100s50.jpg_.webp', 2),
(3, 1, 'O1CN01Q00pQv1IuW2sSgNqY_2200648900953.jpg_2200x2200Q100s50.jpg_.webp', 3),
(4, 1, 'O1CN01HEfMeE1IuW2lX29Ks_2200648900953.jpg_2200x2200Q100s50.jpg_.webp', 4),
(5, 1, 'TB1d0h2qVYqK1RjSZLeXXbXppXa-1125-960.png', 5),
(6, 5, 'O1CN015Ubbwp1IuW1k7zOeE_2200648900953.jpg_2200x2200Q100s50.jpg_.webp', 1),
(7, 5, 'O1CN01SDIgGC1IuW1SI0FOp_2200648900953.jpg_2200x2200Q100s50.jpg_.webp', 2),
(8, 5, 'O1CN01zXxJeP1IuW1J25Jh0_2200648900953.jpg_2200x2200Q100s50.jpg_.webp', 3),
(9, 5, 'O1CN01HlXQUx1IuW1NgKM88_2200648900953.jpg_2200x2200Q100s50.jpg_.webp', 4),
(10, 5, 'O1CN01qwhZat1IuW1TOP8lT_2200648900953.jpg_2200x2200Q100s50.jpg_.webp', 5),
(11, 5, 'O1CN01AUddwN1IuW1R5Tmfc_2200648900953.jpg_2200x2200Q100s50.jpg_.webp', 6),
(12, 5, 'O1CN01c14x7L1IuW1NgK1Ka_2200648900953.jpg_2200x2200Q100s50.jpg_.webp', 7),
(13, 5, 'O1CN01QHzwmN1IuW1NgIHEt_2200648900953.jpg_2200x2200Q100s50.jpg_.webp', 8),
(14, 5, 'O1CN01P8Uw7K1IuW1J24eAw_2200648900953.jpg_2200x2200Q100s50.jpg_.webp', 9),
(15, 5, 'O1CN01BnSNKZ1IuW1TOOfdm_2200648900953.jpg_2200x2200Q100s50.jpg_.webp', 10),
(16, 5, 'O1CN010qOZ8K1IuW1NgJU2e_2200648900953.jpg_2200x2200Q100s50.jpg_.webp', 11),
(17, 5, 'TB1d0h2qVYqK1RjSZLeXXbXppXa-1125-960.png', 12),
(18, 2, 'O1CN01QqVrg81rRDGF72iMZ_1715535627.jpg_640x0q80_.webp', 1),
(19, 2, 'O1CN01UeTM9z1rRDG6azjOJ_1715535627.jpg_640x0q80_.webp', 2),
(20, 2, 'O1CN01mgirDZ1rRDGJKlK4i_1715535627.jpg_640x0q80_.webp', 3),
(21, 2, 'O1CN01kWasNE1rRDGCFB3ox_1715535627.jpg_640x0q80_.webp', 4),
(22, 2, 'O1CN01PRv34M1rRDGG2adlj_1715535627.jpg_640x0q80_.webp', 5),
(23, 2, 'O1CN01XQBd0T1rRDGCF8FDf_1715535627.jpg_640x0q80_.webp', 6),
(24, 2, 'O1CN01mDtaw51rRDGJKnXDl_1715535627.jpg_640x0q80_.webp', 7),
(25, 2, 'TB1d0h2qVYqK1RjSZLeXXbXppXa-1125-960.png', 8),
(26, 3, 'O1CN01qedvyC1rRDGPFu8eF_1715535627.jpg_640x0q80_.webp', 1),
(27, 3, 'O1CN01c6v1nL1rRDGOG5tgq_1715535627.jpg_640x0q80_.webp', 2),
(28, 3, 'O1CN01EbdBiG1rRDGRr67CZ_1715535627.jpg_640x0q80_.webp', 3),
(29, 3, 'O1CN01NU9CGt1rRDGMKPizL_1715535627.jpg_640x0q80_.webp', 4),
(30, 3, 'O1CN01oHOKrK1rRDGTEfLkN_1715535627.jpg_640x0q80_.webp', 5),
(31, 3, 'O1CN01D6mGsO1rRDGOdooY5_1715535627.jpg_640x0q80_.webp', 6),
(32, 3, 'O1CN01AIkarC1rRDGTEfU49_1715535627.jpg_640x0q80_.webp', 7),
(33, 3, 'O1CN01amzOTE1rRDGPFtbPo_1715535627.jpg_640x0q80_.webp', 8),
(34, 3, 'O1CN01Y7wLBN1rRDGPFt49s_1715535627.jpg_640x0q80_.webp', 9),
(35, 3, 'TB1d0h2qVYqK1RjSZLeXXbXppXa-1125-960.png', 10),
(36, 4, 'O1CN01H4UXWd1rRDGPz67w9_1715535627.jpg_640x0q80_.webp', 1),
(37, 4, 'O1CN01JpTPxd1rRDCAy5kUF_1715535627.jpg_640x0q80_.webp', 2),
(38, 4, 'O1CN01lvXayY1rRDC5sbcwQ_1715535627.jpg_640x0q80_.webp', 3),
(39, 4, 'O1CN01IsKsop1rRDFWhiWxt_1715535627.jpg_640x0q80_.webp', 4),
(40, 4, 'O1CN01mSGxmP1rRDC8zt9Ko_1715535627.jpg_640x0q80_.webp', 5),
(41, 4, 'O1CN01br7fmU1rRDC9dJBFD_1715535627.jpg_640x0q80_.webp', 6),
(42, 4, 'O1CN01SEdw3c1rRDC7uzRK9_1715535627.jpg_640x0q80_.webp', 7),
(43, 4, 'O1CN017odjdp1rRDCAUlkV4_1715535627.jpg_640x0q80_.webp', 8),
(44, 4, 'O1CN017odjdp1rRDCAUlkV4_1715535627.jpg_640x0q80_.webp', 9),
(45, 4, 'TB1d0h2qVYqK1RjSZLeXXbXppXa-1125-960.png', 10),
(46, 6, 'O1CN01T7n5Gu1rRD8QnltWG_1715535627.jpg_640x0q80_.webp', 1),
(47, 6, 'TB2instiFXXXXaOXpXXXXXXXXXX_1715535627.jpg_640x0q80_.webp', 2),
(48, 6, 'TB2s8IRiFXXXXaEXXXXXXXXXXXX_1715535627.jpg_640x0q80_.webp', 3),
(49, 6, 'TB2zDUTmhxmpuFjSZFNXXXrRXXa_1715535627.jpg_640x0q80_.webp', 4),
(50, 6, 'TB2GGwMiFXXXXbyXXXXXXXXXXXX_1715535627.jpg_640x0q80_.webp', 5),
#(51, 6, 'TB2FlZriFXXXXa7XpXXXXXXXXXX_1715535627.jpg_640x0q80_.webp', 6),
(52, 6, 'TB1d0h2qVYqK1RjSZLeXXbXppXa-1125-960.png', 6),
(53, 7, 'TB2OKICXsrC11Bjy1zjXXcduVXa_1715535627.jpg_640x0q80_.webp', 1),
(54, 7, 'TB2..MBXEbA11BjSspiXXa7EXXa_1715535627.jpg_640x0q80_.webp', 2),
(55, 7, 'TB2pm8XlZnI8KJjSspeXXcwIpXa_1715535627.jpg_640x0q80_.webp', 3),
(56, 7, 'TB211szXwfC11BjSszcXXc44pXa_1715535627.jpg_640x0q80_.webp', 4),
(57, 7, 'TB2KeF2berAQeBjSZFNXXcgJVXa_1715535627.jpg_640x0q80_.webp', 5),
(58, 7, 'TB2RhEAXqLB11BjSspkXXcy9pXa_1715535627.jpg_640x0q80_.webp', 6),
(59, 7, 'TB2zRF3blPzQeBjSZPiXXb0TpXa_1715535627.jpg_640x0q80_.webp', 7),
(60, 7, 'TB2Pd3AXxvC11Bjy1zdXXXPcVXa_1715535627.jpg_640x0q80_.webp', 8),
(61, 7, 'TB2enTMmxBmpuFjSZFDXXXD8pXa_1715535627.jpg_640x0q80_.webp', 9),
(62, 7, 'TB1d0h2qVYqK1RjSZLeXXbXppXa-1125-960.png', 10),
(63, 8, 'O1CN01rEiymV1rRDGTFb5DG_1715535627.jpg_640x0q80_.webp', 1),
(64, 8, 'O1CN01zz8sas1rRDGMkL7ox_1715535627.jpg_640x0q80_.webp', 2),
(65, 8, 'O1CN01jXTo5A1rRDGR5tWPG_1715535627.jpg_640x0q80_.webp', 3),
(66, 8, 'O1CN01ds2Xp91rRDGMLIyay_1715535627.jpg_640x0q80_.webp', 4),
(67, 8, 'O1CN01qAst7M1rRDGOH1d9K_1715535627.jpg_640x0q80_.webp', 5),
(68, 8, 'TB1d0h2qVYqK1RjSZLeXXbXppXa-1125-960.png', 6),
(69, 9, 'O1CN01lvt7zW1rRDDcLHQAh_1715535627.jpg_640x0q80_.webp', 1),
(70, 9, 'O1CN011rRD7pJxheTX1Pt_1715535627.jpg_640x0q80_.webp', 2),
(71, 9, 'O1CN011rRD7u2hDhmJFCs_1715535627.jpg_640x0q80_.webp', 3),
(72, 9, 'O1CN011rRD7w6GU3Gurvj_1715535627.jpg_640x0q80_.webp', 4),
(73, 9, 'O1CN011rRD7w6WOtC8J9c_1715535627.jpg_640x0q80_.webp', 5),
(74, 9, 'O1CN011rRD7w6XGu4vk8r_1715535627.jpg_640x0q80_.webp', 6),
(75, 9, 'O1CN011rRD7vTqLVcvJzk_1715535627.jpg_640x0q80_.webp', 7),
(76, 9, 'O1CN011rRD7vm5Zrs1HWK_1715535627.jpg_640x0q80_.webp', 8),
(77, 9, 'O1CN011rRD7tfcqkx34yc_1715535627.jpg_640x0q80_.webp', 9),
(78, 9, 'TB1d0h2qVYqK1RjSZLeXXbXppXa-1125-960.png', 10),
(79, 10, 'TB2AT1.dhrI8KJjy0FpXXb5hVXa_1715535627.jpg_640x0q80_.webp', 1),
(80, 10, 'O1CN01v9rExh1rRDD9kBmD7_1715535627.jpg_640x0q80_.webp', 2),
(81, 10, 'TB2FkzaddnJ8KJjSszdXXaxuFXa_1715535627.jpg_640x0q80_.webp', 3),
(82, 10, 'TB2_9aWdlfH8KJjy1XbXXbLdXXa_1715535627.jpg_640x0q80_.webp', 4),
(83, 10, 'TB22We7dcjI8KJjSsppXXXbyVXa_1715535627.jpg_640x0q80_.webp', 5),
(84, 10, 'TB2tN17dhHI8KJjy1zbXXaxdpXa_1715535627.jpg_640x0q80_.webp', 6),
(85, 10, 'TB1d0h2qVYqK1RjSZLeXXbXppXa-1125-960.png', 7),
(86, 11, 'O1CN01feSP471rRDEEIhvkU_1715535627.jpg_640x0q80_.webp', 1),
(87, 11, 'O1CN01tOImmo1rRDEGXGbLY_1715535627.jpg_640x0q80_.webp', 2),
(88, 11, 'O1CN01Kn8IN31rRDE6K5j6w_1715535627.jpg_640x0q80_.webp', 3),
(89, 11, 'O1CN01AIQgGN1rRDFEu83M3_1715535627.jpg_640x0q80_.webp', 4),
(90, 11, 'O1CN01qZcWWJ1rRDFE0FqPx_1715535627.jpg_640x0q80_.webp', 5),
(91, 11, 'O1CN01lSvOvU1rRDEDWYzln_1715535627.jpg_640x0q80_.webp', 6),
(92, 11, 'O1CN01qlsrE21rRDEEIhzxE_1715535627.jpg_640x0q80_.webp', 7),
(93, 11, 'O1CN01ExLNYd1rRDEEIRM2P_1715535627.jpg_640x0q80_.webp', 8),
(94, 11, 'TB1d0h2qVYqK1RjSZLeXXbXppXa-1125-960.png', 9),
(95, 12, 'O1CN010Lsw9U1rRDAcNXf3N_1715535627.jpg_640x0q80_.webp', 1),
(96, 12, 'O1CN013XvP7K1rRDEJHuxDb_1715535627.jpg_640x0q80_.webp', 2),
(97, 12, 'O1CN018KX5Uw1rRDAcRnhsy_1715535627.jpg_640x0q80_.webp', 3),
(98, 12, 'O1CN01LGXq2q1rRDAaf2Zdk_1715535627.jpg_640x0q80_.webp', 4),
(99, 12, 'TB1d0h2qVYqK1RjSZLeXXbXppXa-1125-960.png', 5),
(100, 13, 'O1CN01GE7RGI1rRDGTbN1lI_1715535627.jpg_640x0q80_.webp', 1),
(101, 13, 'O1CN019IypuW1rRDGPJnQGz_1715535627.jpg_640x0q80_.webp', 2),
(102, 13, 'O1CN0107s8Y91rRDGPJo5pM_1715535627.jpg_640x0q80_.webp', 3),
(103, 13, 'O1CN016ueS5h1rRDGQrmDnD_1715535627.jpg_640x0q80_.webp', 4),
(104, 13, 'TB1d0h2qVYqK1RjSZLeXXbXppXa-1125-960.png', 5),
(105, 14, 'O1CN01SDn3Xo1rRD9teauyp_1715535627.jpg_640x0q80_.webp', 1),
(106, 14, 'O1CN01CcuIxP1rRD9voJuBE_1715535627.jpg_640x0q80_.webp', 2),
(107, 14, 'O1CN01WiqwtF1rRD9uOgITV_1715535627.jpg_640x0q80_.webp', 3),
(108, 14, 'O1CN01OVRyhX1rRD9uOdx1g_1715535627.jpg_640x0q80_.webp', 4),
(109, 14, 'O1CN01D2YUyS1rRD9v2D6U8_1715535627.jpg_640x0q80_.webp', 5),
(110, 14, 'O1CN01gIaEyi1rRD9xFNazB_1715535627.jpg_640x0q80_.webp', 6),
(111, 14, 'O1CN01gIaEyi1rRD9xFNazB_1715535627.jpg_640x0q80_.webp', 7),
(112, 14, 'O1CN01qRkmSf1rRD9xFOCPF_1715535627.jpg_640x0q80_.webp', 8),
(113, 14, 'O1CN01JniNwU1rRD9v2EytS_1715535627.jpg_640x0q80_.webp', 9),
(114, 14, 'TB1d0h2qVYqK1RjSZLeXXbXppXa-1125-960.png', 10),
(115, 15, 'TB2W8SWJaSWBuNjSsrbXXa0mVXa_1715535627.jpg_640x0q80_.webp', 1),
(116, 15, 'TB2NrT4JXGWBuNjy0FbXXb4sXXa_1715535627.jpg_640x0q80_.webp', 2),
(117, 15, 'TB2QLsiJgmTBuNjy1XbXXaMrVXa_1715535627.jpg_640x0q80_.webp', 3),
(118, 15, 'TB2Z.3DJeuSBuNjy1XcXXcYjFXa_1715535627.jpg_640x0q80_.webp', 4),
(119, 15, 'TB26F4rJACWBuNjy0FaXXXUlXXa_1715535627.jpg_640x0q80_.webp', 5),
(120, 15, 'TB2f7yrcjfguuRjSszcXXbb7FXa_1715535627.jpg_640x0q80_.webp', 6),
(121, 15, 'TB27nnCAZyYBuNkSnfoXXcWgVXa_1715535627.jpg_640x0q80_.webp', 7),
(122, 15, 'TB2zb24JXGWBuNjy0FbXXb4sXXa_1715535627.jpg_640x0q80_.webp', 8),
(123, 15, 'TB2_R1WJaSWBuNjSsrbXXa0mVXa_1715535627.jpg_640x0q80_.webp', 9),
(124, 15, 'TB1d0h2qVYqK1RjSZLeXXbXppXa-1125-960.png', 10),
(125, 16, 'O1CN01fApUQj1rRDDJvXkqj_1715535627.jpg_640x0q80_.webp', 1),
(126, 16, 'O1CN01iAObO21rRDDJvauHF_1715535627.jpg_640x0q80_.webp', 2),
(127, 16, 'O1CN01xiwZ591rRDDGVpwdf_1715535627.jpg_640x0q80_.webp', 3),
(128, 16, 'O1CN01MIWZwD1rRDDHAUAv3_1715535627.jpg_640x0q80_.webp', 4),
(129, 16, 'O1CN015C6VM31rRDDIXj4ef_1715535627.jpg_640x0q80_.webp', 5),
(130, 16, 'O1CN01Ra5bo01rRDDGPa1m9_1715535627.jpg_640x0q80_.webp', 6),
(131, 16, 'O1CN01QyNiJd1rRDDEMLaya_1715535627.jpg_640x0q80_.webp', 7),
(132, 16, 'O1CN01wpg0jR1rRDDEMJiWi_1715535627.jpg_640x0q80_.webp', 8),
(133, 16, 'TB1d0h2qVYqK1RjSZLeXXbXppXa-1125-960.png', 9),
(134, 17, 'O1CN019mWKgQ1rRDGJnyvs1_1715535627.jpg_640x0q80_.webp', 1),
(135, 17, 'O1CN01Q73dVV1rRDDgXySho_1715535627.jpg_640x0q80_.webp', 2),
(136, 17, 'O1CN01XOKSkG1rRDDhQ8Xtc_1715535627.jpg_640x0q80_.webp', 3),
(137, 17, 'O1CN01ocyWDn1rRDDjr1wQa_1715535627.jpg_640x0q80_.webp', 4),
(138, 17, 'O1CN01RabFAC1rRDDYuJvUk_1715535627.jpg_640x0q80_.webp', 5),
(139, 17, 'O1CN01HxiHHt1rRDDYuHqcN_1715535627.jpg_640x0q80_.webp', 6),
(140, 17, 'O1CN01uEO1Na1rRDDkIgHym_1715535627.jpg_640x0q80_.webp', 7),
(141, 17, 'O1CN01huJe7w1rRDDdUhQjo_1715535627.jpg_640x0q80_.webp', 8),
(142, 17, 'O1CN01BSvRvQ1rRDDhvUtWl_1715535627.jpg_640x0q80_.webp', 9),
(143, 17, 'O1CN01BAAmCz1rRDDefzd8P_1715535627.jpg_640x0q80_.webp', 10),
(144, 17, 'O1CN01BWjiOK1rRDDis79rB_1715535627.jpg_640x0q80_.webp', 11),
(145, 17, 'TB1d0h2qVYqK1RjSZLeXXbXppXa-1125-960.png', 12),
(146, 18, 'O1CN01LWZK6k1rRDA3ppizo_1715535627.jpg_640x0q80_.webp', 1),
(147, 18, 'O1CN01H6GgiJ1rRDBCciMzM_1715535627.jpg_640x0q80_.webp', 2),
(148, 18, 'O1CN01o2YmxM1rRDA4VAvTL_1715535627.jpg_640x0q80_.webp', 3),
(149, 18, 'O1CN01QXELID1rRDA1LCEmj_1715535627.jpg_640x0q80_.webp', 4),
(150, 18, 'O1CN012Qw1OZ1rRDA3pqb3F_1715535627.jpg_640x0q80_.webp', 5),
(151, 18, 'O1CN01jcDoA61rRDA5byBL6_1715535627.jpg_640x0q80_.webp', 6),
(152, 18, 'TB1d0h2qVYqK1RjSZLeXXbXppXa-1125-960.png', 7),
(153, 19, 'O1CN01AQ9gYu1rRDGMV5RyO_1715535627.jpg_640x0q80_.webp', 1),
(154, 19, 'O1CN01M1PJbe1rRDGFefXyS_1715535627.jpg_640x0q80_.webp', 2),
(155, 19, 'O1CN01Y0aRo21rRDGEKAAmX_1715535627.jpg_640x0q80_.webp', 3),
(156, 19, 'O1CN01cwHT4s1rRDGI1HpMs_1715535627.jpg_640x0q80_.webp', 4),
(157, 19, 'O1CN01Z16TKL1rRDGJxpa08_1715535627.jpg_640x0q80_.webp', 5),
(158, 19, 'TB1d0h2qVYqK1RjSZLeXXbXppXa-1125-960.png', 6);



-- --------------------------------------------------------

--
-- 表的结构 xgj_laptop_family`
--

DROP TABLE IF EXISTS `xgj_laptop_family`;
CREATE TABLE `xgj_laptop_family` (
  `fid` int(11) NOT NULL,                      
  `fname` varchar(32) DEFAULT NULL             
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 插入之前先把表清空（truncate） `xgj_laptop_family`
--

TRUNCATE TABLE `xgj_laptop_family`;
--
-- 转存表中的数据 `xgj_laptop_family`
--

INSERT INTO `xgj_laptop_family` (`fid`, `fname`) VALUES
(1, '饼干薯片'),
(2, '辣条豆干'),
(3, '肉类卤味'),
(4, '面包糕点'),
(5, '鱼仔海苔'),
(6, '枣类果干'),
(7, '坚果炒货'),
(8, '火锅小面'),
(9, '糖果果冻'),
(10, '饮料');

-- --------------------------------------------------------

--
-- 表的结构 `xgj_order`
--

DROP TABLE IF EXISTS `xgj_order`;
CREATE TABLE `xgj_order` (
  `aid` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `order_time` bigint(20) DEFAULT NULL,
  `pay_time` bigint(20) DEFAULT NULL,
  `deliver_time` bigint(20) DEFAULT NULL,
  `received_time` bigint(20) DEFAULT NULL,
	`orderId` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 插入之前先把表清空（truncate） `xgj_order`
--

TRUNCATE TABLE `xgj_order`;
-- --------------------------------------------------------

--
-- 表的结构 `xgj_order_detail`
--

DROP TABLE IF EXISTS `xgj_order_detail`;
CREATE TABLE `xgj_order_detail` (
  `did` int(11) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 插入之前先把表清空（truncate） `xgj_order_detail`
--

TRUNCATE TABLE `xgj_order_detail`;
-- --------------------------------------------------------

--
-- 表的结构 `xgj_receiver_address`
--

DROP TABLE IF EXISTS `xgj_receiver_address`;
CREATE TABLE `xgj_receiver_address` (
  `aid` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `receiver` varchar(16) DEFAULT NULL,
  `province` varchar(16) DEFAULT NULL,
  `city` varchar(16) DEFAULT NULL,
  `county` varchar(16) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `cellphone` varchar(16) DEFAULT NULL,
  `fixedphone` varchar(16) DEFAULT NULL,
  `postcode` char(6) DEFAULT NULL,
  `tag` varchar(16) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 插入之前先把表清空（truncate） `xgj_receiver_address`
--

TRUNCATE TABLE `xgj_receiver_address`;
-- --------------------------------------------------------

--
-- 表的结构 `xgj_shoppingcart_item`
--

DROP TABLE IF EXISTS `xgj_shoppingcart_item`;
CREATE TABLE `xgj_shoppingcart_item` (
  `iid` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `is_checked` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 插入之前先把表清空（truncate） `xgj_shoppingcart_item`
--

TRUNCATE TABLE `xgj_shoppingcart_item`;
-- --------------------------------------------------------

--
-- 表的结构 `xgj_user`
--

DROP TABLE IF EXISTS `xgj_user`;
CREATE TABLE `xgj_user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  `email` varchar(64) DEFAULT '',
  `phone` varchar(16) DEFAULT '',
  `avatar` varchar(128) DEFAULT '',
  `user_name` varchar(32) DEFAULT '',
  `gender` int(11) DEFAULT '2',
	`nickname` varchar(32) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 插入之前先把表清空（truncate） `xgj_user`
--

TRUNCATE TABLE `xgj_user`;
--
-- 转存表中的数据 `xgj_user`
--

INSERT INTO `xgj_user` (`uid`, `uname`, `upwd`, `email`, `phone`, `avatar`, `user_name`, `gender`, `nickname`) VALUES
(1, 'dingding', '123456', 'ding@qq.com', '13501234567', '00adca5a0d93daa80121985c9ef05f.jpg', '丁伟', 1, null),
(2, 'dangdang', '123456', 'dang@qq.com', '13501234568', '00b2e259575a7da8012193a331099a.jpg', '林当', 1, null),
(3, 'doudou', '123456', 'dou@qq.com', '13501234569', '00b3755b2b6eb6a8012034f78d8b5b.jpg', '窦志强', 1, null),
(4, 'yaya', '123456', 'ya@qq.com', '13501234560', '00c1d55af1178ca801206abad941b6.jpg', '秦小雅', 0, null);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `xgj_index_carousel`
--
ALTER TABLE `xgj_index_carousel`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `xgj_index_product`
--
ALTER TABLE `xgj_index_product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `xgj_laptop`
--
ALTER TABLE `xgj_laptop`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `xgj_laptop_family`
--
ALTER TABLE `xgj_laptop_family`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `xgj_laptop_pic`
--
ALTER TABLE `xgj_laptop_pic`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `xgj_order`
--
ALTER TABLE `xgj_order`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `xgj_order_detail`
--
ALTER TABLE `xgj_order_detail`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `xgj_receiver_address`
--
ALTER TABLE `xgj_receiver_address`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `xgj_shoppingcart_item`
--
ALTER TABLE `xgj_shoppingcart_item`
  ADD PRIMARY KEY (`iid`);

--
-- Indexes for table `xgj_user`
--
ALTER TABLE `xgj_user`
  ADD PRIMARY KEY (`uid`);
	
	--
	-- Indexes for table `xgj_laptop_top_pic`
	--
	ALTER TABLE `xgj_laptop_top_pic`
	  ADD PRIMARY KEY (`tid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `xgj_index_carousel`
--
ALTER TABLE `xgj_index_carousel`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `xgj_index_product`
--
ALTER TABLE `xgj_index_product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `xz_laptop`
--
ALTER TABLE `xgj_laptop`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `xgj_laptop_family`
--
ALTER TABLE `xgj_laptop_family`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `xgj_laptop_pic`
--
ALTER TABLE `xgj_laptop_pic`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `xgj_order`
--
ALTER TABLE `xgj_order`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `xz_order_detail`
--
ALTER TABLE `xgj_order_detail`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `xgj_receiver_address`
--
ALTER TABLE `xgj_receiver_address`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `xgj_shoppingcart_item`
--
ALTER TABLE `xgj_shoppingcart_item`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `xgj_user`
--
ALTER TABLE `xgj_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

--
-- 使用表AUTO_INCREMENT `xgj_laptop_top_pic`
--
ALTER TABLE `xgj_laptop_top_pic`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
