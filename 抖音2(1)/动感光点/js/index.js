// init canvas
let canvas = document.createElement("canvas"),
  ctx = canvas.getContext("2d"),
  H = (canvas.height = 600),
  W = (canvas.width = 600);
document.body.appendChild(canvas);

//document.body.addEventListener("mousemove", event => mousemove(event), false);
let cursor = new Vector(W/2,H/2);
function mousemove(event) {
  cursor.x = event.pageX - canvas.offsetLeft;
  cursor.y = event.pageY - canvas.offsetTop;
}

class Point {
  constructor(x, y) {
    this.position = new Vector(x, y);
    this.acceleration = new Vector(0, 0).fromAngle(Util.random(0,TWO_PI));
    this.velocity = new Vector(0, 0);
    this.radius = Util.random(6,30);
    this.zone = this.radius + 40;
    this.c = Util.random(0,360);
    this.min_radius = 0.2;
    this.max_radius = this.radius;
  }
  display() {
    let color = "hsl("+ Util.map(this.velocity.mag(), 2, 0, 0, 360)+",70%,"+Util.map(this.radius, this.min_radius, this.max_radius, 100, 20)+"%)";
    ctx.globalAlpha = Util.map(this.radius, this.min_radius, this.max_radius, 1, 0);
    ctx.fillStyle = color;
    ctx.beginPath();
    ctx.arc(this.position.x, this.position.y, this.radius, 0, 2 * Math.PI);
    ctx.fill();
  }
  integrate() {
    let force  = new Vector(0,0).fromAngle(this.position.angle(cursor));
    force.setMag(0.1);
    this.addForce(force);
    
    this.radius = Util.map(this.velocity.mag(), 0, 2, this.min_radius, this.max_radius);
    this.velocity.add(this.acceleration);
    //this.velocity.mult(0.98);
    this.velocity.limit(2);
    this.position.add(this.velocity);
    this.acceleration.reset();
  }
  addForce(force) {
    this.acceleration.add(force);
  }
  detection(others) {
    for (let i = 0; i < others.length; i++) {
      let other = others[i];
      if (this === other) continue;
      let dist = this.position.dist(other.position),
        max_dist = this.zone + other.radius;
      if ( max_dist - dist >= 0) {
        let angle = other.position.angle(this.position);
        let force = new Vector().fromAngle(angle);
        force.setMag(Util.map(dist, 0, max_dist, 0.2, 0));
        this.addForce(force);
      }
    }
  }
  bound() {
    let dist = this.position.dist(cursor);
    if (dist > W/3) {
      let force = new Vector(0,0).fromAngle(this.position.angle(cursor));
      force.setMag(Util.map(dist,0,W/3,0,0.02));
      this.addForce(force);
    }
  }
}

let points = [];

for (let i = 0; i < 80; i++) {
  points.push(new Point(cursor.x,cursor.y));
}

function loop() {
  ctx.globalCompositeOperation = "source-over";
  ctx.globalAlpha = 0.16;
  ctx.fillStyle= "black";
  ctx.fillRect(0, 0, W, H);
  ctx.globalAlpha = 1;
  ctx.globalCompositeOperation = "lighter";
  points.forEach(point => {
    point.detection(points);
  });
  points.forEach(point => {
    point.display();
    //point.bound();
    point.integrate();
  });
  requestAnimationFrame(loop);
}
loop();