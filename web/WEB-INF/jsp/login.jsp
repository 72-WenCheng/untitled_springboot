<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<meta charset="UTF-8">
	<title>登录</title>
</head>
<style type="text/css">
	#box
	{
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%,-50%);
		width:400px;
		padding: 40px;
		background:rgba(0,0,0,.8);
		box-sizing:border-box;
		box-shadow:0 15px 25px rgba(0,0,0,.5);
		/*登录窗口边角圆滑*/
		border-radius: 10px;
	}
	#box{
		width: 600px;
		height: 300px;
		margin: 50px auto;
	}
	#box h1{
		text-align: center;
		color: black;
		font-family: "仿宋";
	}
	#box span{
		margin-left: 90px;
		font-family: "仿宋";
	}
	#box input{
		margin: 10px;
	}
	#btn{
		width: 60px;
		height: 35px;
		font-size: 20px;
		font-family: "仿宋";
	}
	#background {
		background-size: cover;
		opacity: 0.8;
	}
	body{
		background-size:100% 100%;
	}
</style>
<script src="../js/jquery-1.8.3.min.js"></script>
<body background=../img/1.jpg>
<div id="background">
	<canvas id="canvas"></canvas>
	<div id="box" style="background-color:deepskyblue">
		<h1>企业信息管理系统</h1>
		<form  id="form" method="post" action="Login" onsubmit="return false" name="run">
			<span>工号：</span><input type="text" id="jobnumber" name="jobnumber">
			<br>
			<span>密码：</span><input type="password" id="password" name="password">
			<br>
			<input type="submit" id="btn" value="登录">
		</form>
	</div>
</div>

<script type="text/javascript">
	//登录
	$("#btn").click(function(){
		var user = $("#jobnumber").val();
		var pwd = $("#password").val();
		if(user==""){
			alert("工号不能为空");
		}else if(pwd==""){
			alert("密码不能为空")
		}else{
			document.run.onsubmit="return true"
		}
	});
</script>
<script>
	// 设置div背景的宽高
	background = document.getElementById("background")
	background.style.width = innerWidth + 'px'
	background.style.height = innerHeight + 'px'

	// 获取canvas对象
	var canvas = document.getElementById("canvas")
	// 获取画笔
	var ctx = canvas.getContext("2d")

	// 设置canvas宽高
	canvas.height = innerHeight
	canvas.width = innerWidth

	// 定义一个粒子数组
	var particlesArray = []
	// 定义页面内粒子的数量
	var count = parseInt(canvas.width / 80 * canvas.height / 80)


	// 定义粒子类
	class Particle {
		constructor(x, y) {
			this.x = x
			this.y = y
			// x，y轴的移动速度  -0.5 -- 0.5
			this.directionX = Math.random() - 0.5
			this.directionY = Math.random() - 0.5
		}

		// 更新点的坐标
		update() {
			this.x += this.directionX
			this.y += this.directionY
		}

		// 绘制粒子
		draw() {
			ctx.beginPath()
			ctx.arc(this.x, this.y, 2, 0, Math.PI * 2)
			ctx.closePath()
			ctx.fillStyle = "white"
			ctx.fill()
		}
	}

	// 创建粒子
	function createParticle() {
		// 生成一个点的随机坐标
		var x = Math.random() * innerWidth
		var y = Math.random() * innerHeight

		particlesArray.push(new Particle(x, y))
	}

	// 处理粒子
	// 先更新坐标，再绘制出来
	function handleParticle() {
		for(var i = 0; i < particlesArray.length; i++) {
			var particle = particlesArray[i]
			particle.update()
			particle.draw()
			// 超出范围就将这个粒子删除
			if(particle.x < 0 || particle.x > canvas.width || particle.y < 0 || particle.y > canvas.height) {
				particlesArray.splice(i, 1)
			}

			// 绘制两个点之间的连线
			for(var j = i + 1; j < particlesArray.length; j++) {
				dx = particlesArray[j].x - particlesArray[i].x
				dy = particlesArray[j].y - particlesArray[i].y
				dist = Math.sqrt(Math.pow(dx, 2) + Math.pow(dy, 2))
				if(dist < 100) {
					ctx.beginPath()
					ctx.strokeStyle = "rgba(255, 255, 255, " + (1 - dist / 100)
					ctx.moveTo(particlesArray[i].x, particlesArray[i].y)
					ctx.lineTo(particlesArray[j].x, particlesArray[j].y)
					ctx.closePath()
					ctx.lineWidth = 1
					ctx.stroke()
				}
			}
		}
	}

	function draw() {
		// 首先清空画布
		ctx.clearRect(0, 0, canvas.width, canvas.height)
		// 如果粒子数量小于规定数量，就生成新的粒子
		if(particlesArray.length < count) {
			createParticle()
		}

		// 处理粒子
		handleParticle()
	}

	// 设置定时器
	setInterval(draw, 10)
</script>
</body>
</html>

