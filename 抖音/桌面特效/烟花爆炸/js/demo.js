window.requestAnimFrame = (function(){
	return window.requestAnimationFrame||
	window.webkitRequestAnimationFrame||
	window.mozRequestAnimationFrame||
	function(callback){
		window.setTimeout(callback,1000/60);
	}
})();

var can = document.getElementById("canvas"),
	ctx = can.getContext("2d"),
	cw = window.innerWidth,
	ch = window.innerHeight,
	fireworks = [],
	particles = [],
	hue = 120,
	limiterTotal = 5,
	limiterTick = 0,
	timerTotal = 80,
	timerTick = 0,
	mousedown = false,
	mx,my;
	can.width = cw;
	can.height = ch;
window.onresize = function(){
	cw = window.innerWidth;
	ch = window.innerHeight;
	can.width = cw;
	can.height = ch;
}
function calculateDistance(x1,y1,x2,y2){
	var xDistance = x1-x2,
		yDistance = y1-y2;
	return Math.sqrt(Math.pow(xDistance,2)+Math.pow(yDistance,2));
}
function random(min,max){
	return Math.random()*(max-min)+min
}
function Firework(sx,sy,tx,ty){
	this.x = sx;
	this.y = sy;
	this.sx = sx;
	this.sy = sy;
	this.tx = tx;
	this.ty = ty;
	this.distanceTotarget = calculateDistance(sx,sy,tx,ty);
	this.distanceTraveled = 0;
	this.coordinates = [];
	this.coordinateCount = 3;
	while (this.coordinateCount--)
	{
		this.coordinates.push([this.x,this.y]);
	}
	
	this.angle = Math.atan2(ty-sy,tx-sx);
	this.speed = 2;
	this.acceleration = 1.05;
	this.brightness = random(50,70);
	this.targetRadius = 1;
}
Firework.prototype.update = function(i){
	this.coordinates.pop();
	this.coordinates.unshift([this.x,this.y]);
	this.speed *= this.acceleration;
	var vx = Math.cos(this.angle)*this.speed;
	var vy = Math.sin(this.angle)*this.speed;
	this.distanceTraveled = calculateDistance(this.sx,this.sy,this.x+vx,this.y+vy);
	
	if (this.distanceTraveled >= this.distanceTotarget)
	{	
		
		createParticles(this.tx,this.ty);
		fireworks.splice(i,1);
	}else{
		this.x += vx;
		this.y += vy;
	}
	
	if (this.targetRadius < 8)
	{
		this.targetRadius += 0.3;
	}else{
		this.targetRadius = 1;
	}
}

Firework.prototype.draw = function(){
	
	ctx.beginPath();
	ctx.moveTo(this.coordinates[this.coordinates.length-1][0],this.coordinates[this.coordinates.length-1][1]);
	ctx.lineTo(this.x,this.y);
	ctx.closePath();
	ctx.strokeStyle = "hsl("+hue+",100%,"+this.brightness+"%)";
	ctx.stroke();
	ctx.beginPath();
	ctx.arc(this.tx,this.ty,this.targetRadius,0,360,false);
	ctx.stroke();
}

function Particles(x,y){
	this.x = x;
	this.y = y;
	this.coordinates = [];
	this.coordinateCount = 5;
	while (this.coordinateCount--)
	{
		this.coordinates.push([this.x,this.y]);
	}
	this.angle = random(0,Math.PI*2);
	this.speed = random(0,10);
	this.friction = 0.95;
	this.gravity = 1;
	this.hue = random(hue-20,hue+20);
	this.brightness = random(50,80);
	this.alpha = 1;
	this.decay = random(0.015,0.03);
}
Particles.prototype.update = function(n){
	this.coordinates.pop();
	this.coordinates.unshift([this.x,this.y]);
	this.speed *= this.friction;
	this.x += Math.cos(this.angle)*this.speed;
	this.y += Math.sin(this.angle)*this.speed;
	this.alpha -= this.decay;
	if (this.alpha <= this.decay)
	{
		particles.splice(n,1);
	}
}
Particles.prototype.draw = function(){
	ctx.beginPath();
	ctx.moveTo(this.coordinates[this.coordinates.length-1][0],this.coordinates[this.coordinates.length-1][1]);
	ctx.lineTo(this.x,this.y);
	ctx.strokeStyle = "hsla("+this.hue+",100%,"+this.brightness+"%,"+this.alpha+")";
	ctx.stroke();
} 
function createParticles(x,y){
	
	var particlesCount = parseInt(Math.random()*100)+10;
	while (particlesCount--)
	{
		particles.push(new Particles(x,y));
	}

}
function loop(){
	requestAnimFrame(loop);
	hue += 0.5;
	ctx.globalCompositeOperation = "destination-out";
	ctx.fillStyle = "rgba(0,0,0,1)";
	ctx.fillRect(0,0,cw,ch);
	ctx.globalCompositeOperation = "lighter";
	var i = fireworks.length;
	while (i--)
	{
		fireworks[i].draw();
		fireworks[i].update(i);
	}
	var n = particles.length;
	while (n--)
	{
		particles[n].draw();
		particles[n].update(n);
	}
	if (limiterTick >= limiterTotal)
	{
		if(mousedown){
			fireworks.push(new Firework(cw/2,ch,mx,my));
			limiterTick = 0;
		}
	}else{
		limiterTick++;
	}
	if (timerTick >= timerTotal )
	{
		if (!mousedown)
		{
			fireworks.push(new Firework(cw/2,ch,random(0,cw),random(0,ch/2)));
			timerTick = 0;
		}
	}else{
		timerTick++;
	}
}

can.addEventListener("mousemove",function(e){
	e.preventDefault();
	mx = e.pageX - can.offsetLeft;
	my = e.pageY - can.offsetTop;
},false);
can.addEventListener("mousedown",function(e){
	e.preventDefault();
	mousedown = true;
},false);
can.addEventListener("mouseup",function(e){
	e.preventDefault();
	mousedown = false;
},false);

window.onload = loop;