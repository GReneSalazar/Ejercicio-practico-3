float circleX;
float circleY;
float circleSpeedX;
float circleSpeedY;
float circleRadius = 30;

void setup() {
  size(800, 600);
  circleX = width / 2;
  circleY = height / 2;
  circleSpeedX = 2;
  circleSpeedY = 2;
}

void draw() {
  background(255);
  
  // Actualizar la posición del círculo
  circleX += circleSpeedX;
  circleY += circleSpeedY;
  
  // Rebotar el círculo en los bordes
  if (circleX + circleRadius > width || circleX - circleRadius < 0) {
    circleSpeedX *= -1;
  }
  if (circleY + circleRadius > height || circleY - circleRadius < 0) {
    circleSpeedY *= -1;
  }
  
  // Dibujar el círculo
  fill(0, 0, 255);
  ellipse(circleX, circleY, circleRadius * 2, circleRadius * 2);
}
