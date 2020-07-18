const express = require('express');
const cors = require('cors');
const mysql = require('mysql');
const bodyParser = require('body-parser');
const pool = mysql.createPool({
  host: '127.0.0.1',
  port: 3306,
  user: 'root',
  password: '',
  database: 'xgj',
  connectionLimit: 15
});
const server = express();

server.use(cors({
  origin: ['http://127.0.0.1:8080', 'http://localhost:8080','http://wangdong.applinzi.com']
}));
server.use(bodyParser.urlencoded({
  extended: false
}));

//用户是否注册api
server.post('/checkuname', (req, res) => {
  var username = req.body.username;
  var sql = 'SELECT uid FROM xgj_user WHERE uname=?';
  pool.query(sql, [username], (err, result) => {
    if (err) throw err;
    if (result.length != 0) {
      res.send({ message: '该用户已注册', code: 201 })
    } else {
      res.send({ message: 'ok', code: 200 })
    }
  });
});

//注册api
server.post('/register', (req, res) => {
  var username = req.body.username;
  var password = req.body.password;
  var sql = 'INSERT INTO xgj_user(uname,upwd) VALUES (?,MD5(?))';
  pool.query(sql, [username, password], (err, result) => {
    if (err) throw err;
    if (result.affectedRows == 0) {
      res.send({ message: '注册失败', code: 202 });
    } else {
      res.send({ message: '注册成功', code: 200 });
    }
  });
});

//登录api
server.post('/login', (req, res) => {
  var username = req.body.username;
  var password = req.body.password;
  var sql = 'SELECT * FROM xgj_user WHERE uname=? AND upwd=MD5(?)';
  pool.query(sql, [username, password], (err, result) => {
    if (err) throw err;
    if (result.length == 0) {
      res.send({ message: '用户名或密码有误', code: 202 });
    } else {
      res.send({ message: '登录成功', code: 200, info: result[0] });
    }
  });
});

//更新个人信息api
server.post('/updateInfo', (req, res) => {
  var uname = req.body.uname;
  var nickname = req.body.nickname;
  var email = req.body.email;
  var phone = req.body.phone;
  var gender = req.body.gender;
  var user_name = req.body.user_name;
  var sql = 'UPDATE xgj_user SET nickname=?,email=?,phone=?,gender=?,user_name=? WHERE uname=?';
  pool.query(sql, [nickname, email, phone, gender, user_name, uname], (err, result) => {
    if (err) throw err;
    if (result.affectedRows == 0) {
      res.send({ message: '更新失败', code: 202 });
    } else {
      res.send({ message: '更新成功', code: 200 });
    }
  });
});

//获取所有用户信息api
server.post('/allInfo', (req, res) => {
  var uname = req.body.uname;
  var sql = 'SELECT * FROM xgj_user WHERE uname = ?';
  pool.query(sql, [uname], (err, result) => {
    if (err) throw err;
    res.send({ code: 200, info: result[0] });
  });
});

//修改密码时验证密码是否正确api
server.post('/oldPwd', (req, res) => {
  var upwd = req.body.oldPwd;
  var uname = req.body.uname;
  var sql = 'SELECT * FROM xgj_user WHERE uname = ? AND upwd = MD5(?)';
  pool.query(sql, [uname, upwd], (err, result) => {
    if (err) throw err;
    if (result.length == 0) {
      res.send({ message: '当前登录密码有误，请重新输入', code: 202 });
    } else {
      res.send({ message: 'ok', code: 200 });
    }
  });
});

//修改密码api
server.post('/changePwd', (req, res) => {
  var upwd = req.body.newPwd;
  var uname = req.body.uname;
  var sql = 'UPDATE xgj_user SET upwd = MD5(?) WHERE uname = ?';
  pool.query(sql, [upwd, uname], (err, result) => {
    if (err) throw err;
    res.send({ message: '修改密码成功', code: 200 });
  });
});

//根据用户uid查询地址信息api
server.get('/address', (req, res) => {
  var uid = req.query.uid;
  var sql = 'SELECT * FROM xgj_receiver_address WHERE user_id=? ORDER BY is_default DESC,aid DESC';
  pool.query(sql, [uid], (err, result) => {
    if (err) throw err;
    if (result.length == 0) {
      res.send({ message: '查询失败', code: 202 });
    } else {
      res.send({ message: '查询成功', code: 200, result: result });
    }
  });
});

//更新地址信息api
server.post('/updateAddr', (req, res) => {
  var data = req.body;
  var aid = req.body.aid;
  var sql = 'UPDATE xgj_receiver_address SET ? WHERE aid = ?';
  pool.query(sql, [data, aid], (err, result) => {
    if (err) throw err;
    res.send({ message: '更新成功', code: 200 });
  });
});

//根据aid删除地址信息api
server.get('/deleteAddr', (req, res) => {
  var aid = req.query.aid;
  var sql = 'DELETE FROM xgj_receiver_address WHERE aid = ?';
  pool.query(sql, [aid], (err, result) => {
    if (err) throw err;
    res.send({ message: '删除成功', code: 200 });
  });
});

//添加地址信息api
server.post('/addAddr', (req, res) => {
  var data = req.body;
  var sql = 'INSERT INTO xgj_receiver_address SET ?';
  pool.query(sql, [data], (err, result) => {
    if (err) throw err;
    res.send({ message: '添加成功', code: 200 });
  });
});

//模糊查询获取商品标题搜索页的API
server.get('/searchs', (req, res) => {
  //获取地址栏请求标题参数
  var series = req.query.series;
  // console.log(series);

  var sql = "SELECT lid,series,title,pre_price,sales,freight,b.pic FROM xgj_laptop a INNER JOIN xgj_laptop_top_pic b ON b.laptop_id=a.lid WHERE series LIKE concat('%',?,'%') AND b.torder=1;";
  pool.query(sql, [series], (err, results) => {
    if (err) throw err;
    // console.log(results);
    res.send({ message: '查询成功', code: 200, series: results });
  })
});

//模糊查询获取商品标题搜索详情页的API
server.get('/searchpro', (req, res) => {
  //获取地址栏请求标题参数
  var seriespro = req.query.seriespro;
  // console.log(seriespro);
  //获取所需数据lid\series\title\pre_price\sales\freight
  var sql = "SELECT lid,series,title,pre_price,sales,freight,b.pic FROM xgj_laptop a INNER JOIN xgj_laptop_top_pic b ON b.laptop_id=a.lid WHERE series LIKE concat('%',?,'%') AND b.torder=1;";
  pool.query(sql, [seriespro], (err, results) => {
    if (err) throw err;
    res.send({ message: '查询成功', code: 200, series: results });
  })
});

// 
server.get('/searchpros', (req, res) => {
  //获取地址栏请求标题参数
  var family_id = req.query.family_id;

  var sql = "SELECT lid,series,title,pre_price,sales,freight,b.pic FROM xgj_laptop a INNER JOIN xgj_laptop_top_pic b ON b.laptop_id=a.lid WHERE family_id=? AND b.torder=1;";
  pool.query(sql, [family_id], (err, results) => {
    if (err) throw err;
    res.send({ message: '查询成功', code: 200, series: results });
  })
});

//查询购物车
server.post('/listbyuserid', (req, res) => {

  var userid = req.body.userid;
  //查询登录信息
  var sql = "select title,pre_price,spec,pic,count,user_id,iid,b.lid from ((xgj_shoppingcart_item a join xgj_laptop b on a.product_id=b.lid) join xgj_laptop_top_pic c on c.laptop_id=b.lid and torder=1) where user_id=?";

  pool.query(sql, [userid], (err, results) => {
      if (err) throw err;
      if (results.length == 0) {
          res.send({ message: '查询失败', code: 202 });
      } else {
          res.send({ message: '查询成功', code: 200, info: results });
      }
  })
})

//decartgoods
server.post('/delcartgoods', (req, res) => {
  var del_iid = req.body.del_iid;
  var del_uid = req.body.del_uid;
  var sql = "delete from xgj_shoppingcart_item where user_id=? and iid=?"
  pool.query(sql, [del_uid, del_iid], (err, results) => {
    if (err) throw err;
    res.send(results);
  })
});

//decartallgoods
server.post('/delcartallgoods', (req, res) => {
  var delall_uid = req.body.delall_uid;
  var sql = "delete from xgj_shoppingcart_item where user_id=?"
  pool.query(sql, [delall_uid], (err, results) => {
    if (err) throw err;
    res.send(results);
  })
});

//post订单信息
server.post('/postOrder', (req, res) => {
    var uid = req.body.uid;
    var address_id = req.body.address_id;
    var orderId = req.body.order_id;
    var status = req.body.status;
    var orderTime = req.body.order_time;
    var sql = "INSERT INTO xgj_order SET user_id=?,address_id=?,orderId=?,status=?,order_time=?";
    pool.query(sql, [uid, address_id, orderId, status,orderTime], (err, results) => {
        if (err) throw err;
        res.send(results);
    });
});
// post订单详情信息
server.post('/postOrderdetail', (req, res) => {
    var order_id = req.body.order_id;
    var count = req.body.count;
    var lid = req.body.lid;
    var sql = "INSERT INTO xgj_order_detail SET order_id=?,product_id=?,count=?";
    pool.query(sql, [order_id, lid, count], (err, results) => {
        if (err) throw err;
        res.send(results);
    });
});

//付款后更新订单状态
server.post('/setOrderStatus', (req, res) => {
  var status = req.body.status;
  var sql = "UPDATE xgj_order SET status=?";
  pool.query(sql, [status], (err, results) => {
      if (err) throw err;
      res.send({code:'200'});
  });
});

// 详情页的接口路由
server.get("/details", function (req, res) {
  var $lid = req.query.lid;
  var pic = {};

  var sql = " SELECT b.pic tpic,title,subtitle,price,pre_price,sales,ship_address,stock,spec FROM xgj_laptop a INNER JOIN xgj_laptop_top_pic b ON b.laptop_id=a.lid where lid=? and torder=1 ";
  pool.query(sql, [$lid], (err, results) => {
    if (err) throw err;
    // console.log(results);
    res.send({ message: "200", results: results[0] });
  });
});

//modify count
server.post('/count', (req, res) => {
  var count = req.body.count;
  var iid = req.body.iid;
  var sql = "update xgj_shoppingcart_item set count=? where iid=?";
  pool.query(sql, [count, iid], (err, results) => {
    if (err) throw err;
    if (results.affectedRows == 1) {
      res.send("1");
    } else {
      res.send("0");
    }
  });
});

//获取确认订单页商品信息
server.get('/getGoodsinfo', (req, res) => {
  var iid = req.query.iid;
  var sql = "select a.iid,a.product_id,title,pre_price,pic,count from ((xgj_shoppingcart_item a join xgj_laptop c on a.product_id=c.lid and a.iid=?) join xgj_laptop_top_pic d on d.laptop_id=c.lid and d.torder=1)"
  pool.query(sql, [iid], (err, results) => {
    if (err) throw err;
    res.send(results);
  });
});

//获取确认订单页收件人信息
server.get('/getReceiver', (req, res) => {
  var uid = req.query.uid;
  var sql = "select receiver,province,city,county,address,cellphone,is_default,aid from xgj_receiver_address where user_id=? and is_default=1";
  pool.query(sql, [uid], (err, results) => {
    if (err) throw err;
    res.send(results);
  });
});

// 详情页底部图片的请求路由
server.get("/detail", function (req, res) {
  var $lid = req.query.laptop_id;
  var sql = "SELECT porder,pic FROM xgj_laptop_pic join xgj_laptop ON lid=laptop_id WHERE lid=?";
  pool.query(sql, [$lid], (err, results) => {
    if (err) throw err;
    // console.log(results);
    res.send({ message: "200", results: results });
  });
});

// 将购物车的数据提交到购物车地址页面
server.post("/cart", (req, res) => {
  var $lid = req.body.product_id;
  var $user_id = req.body.user_id;
  var $counts = parseInt(req.body.counts);

  var sql = "SELECT count FROM  xgj_shoppingcart_item WHERE product_id=? AND user_id=?";
  pool.query(sql, [$lid, $user_id], (err, results) => {
    if (err) throw err;
    if (results.length > 0) {
      sql = "UPDATE xgj_shoppingcart_item set count=? WHERE product_id=? AND user_id=?";
      console.log(results[0].count, $counts);
      pool.query(sql, [results[0].count + $counts, $lid, $user_id], (err, results) => {
        if (err) throw err;
        res.send({ code: "200", message: "添加成功" });
      });
    }
    else {
      sql = "INSERT INTO xgj_shoppingcart_item VALUES(null,?,?,?,null)"
      pool.query(sql, [$user_id, $lid, $counts], (err, results) => {
        if (err) throw err;
        res.send({ code: "200", message: "添加成功" });
      });
    }
  });
});
// 添加商品的配料,以及相关的证明信息
server.get("/products_basic", (req, res) => {
  var $lid = req.query.lid;
  var sql = "SELECT series,brand,additives,quality,storage,ingredients,comp_tel,comp_address,comp_address,comp_name,product_gb,license_no,ldate FROM xgj_laptop WHERE lid=?";
  pool.query(sql, [$lid], (err, results) => {
    if (err) throw err;
    // console.log(results);
    res.send(results[0]);
  });
});


// 轮播
server.get('/getCarousel', (req, res) => {
  var sql = 'SELECT laptop_id,img FROM xgj_index_carousel';
  pool.query(sql, (err, results) => {
    if (err) throw err;
    res.send({ message: '查询成功', code: 200, imglist: results });
  });
});

server.get('/getProducts', (req, res) => {
  var category = req.query.category;
  sql = 'SELECT laptop_id,title,pic,price FROM xgj_index_product WHERE category=?';
  //执行SQL查询
  pool.query(sql, [category], (err, result) => {
    if (err) throw err;
    res.send({ message: '查询成功', code: 200, products: result });
  });
});

//查询订单页所有订单
server.get('/allOrder',(req,res)=>{
  var user_id = req.query.user_id;
  var sql = 'SELECT orderId,user_id,status,product_id,count,title,pre_price,pic FROM (((xgj_order JOIN xgj_order_detail ON orderId = order_id and user_id = ?) JOIN xgj_laptop ON product_id = lid ) JOIN xgj_laptop_top_pic ON lid = laptop_id AND torder = 1) ORDER BY aid DESC';
  pool.query(sql,[user_id],(err,result)=>{
    if(err)throw err;
    res.send({message:'查询成功',code:'200',info:result});
  });
})

server.listen(3000);