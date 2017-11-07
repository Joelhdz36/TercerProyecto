void ruleta()
{

  pushMatrix();
  beginShape();
  fill(#D1D2D3);
  rect(x, y-70, w, h);
  fill(0);
  textSize(30);
  text("GIRAR", 420, 465);
  fill(0);
  textSize(20);
  text("ATACAR", 420, 535);
  endShape();
  popMatrix();
  strokeWeight(3);
  stroke(#FFFFFF);
  pushMatrix();
  translate(width/2, 200);
  beginShape();
  vertex(0, -101);
  vertex(-10, -115);
  vertex(10, -115);
  endShape(CLOSE);
  rotate(radians(pos));
  ellipseMode(CENTER);
  ellipse(0, 0, 200, 200);
  line(0, 0, 0, -100);
  line(0, 0, 95, -32);
  line(0, 0, 59, 81);
  line(0, 0, -59, 81);
  line(0, 0, -95, -32);
  popMatrix();
  if (turn == 2)
  {
    textSize(30);
    text("Jugador 2 ataca", 650, 200);
  } else
  {
    textSize(30);
    text("Jugador 1 ataca", 90, 200);
  }

  giro();
  resultao();
}

void giro() {
  pos += vel;
  vel *= dacel;

  if (((mousePressed) & (mouseX >= 375 & mouseX <= 525) && (mouseY >= 430 & mouseY <= 480)))
  {
    vel += acel;
  }
  if (vel <= 0.1) {
    vel = 0;
  }
  if (pos >= 360) {
    pos = 0;
  }
}

void resultao() {
  if (pos >= 0 & pos <= 72) {
    fill(0);
    text("ataque -5", 420, 400);
    if (turn == 1)
    {
      suerte = -5;
    }
    if (turn ==2)
    {
      suerte = -5;
    }
  }
  if (pos >= 73 & pos <= 144) {
    fill(0);
    text("ataque -2", 420, 400);
    if (turn == 1)
    {
      suerte = -2;
    }
    if (turn ==2)
    {
      suerte = -2;
    }
  }
  if (pos >= 145 & pos <= 216) {
    fill(0);
    text("ataque +0", 420, 400);
    if (turn == 1)
    {
      suerte = 0;
    }
    if (turn ==2)
    {
      suerte = 0;
    }
  }
  if (pos >= 217 & pos <= 288) {
    fill(0);
    text("ataque +2", 420, 400);
    if (turn == 1)
    {
      suerte = 2;
    }
    if (turn ==2)
    {
      suerte = 2;
    }
  }
  if (pos >= 289 & pos < 360) {
    fill(0);
    text("ataque +5", 420, 400);
    if (turn == 1)
    {
      suerte = 5;
    }
    if (turn ==2)
    {
      suerte = 5;
    }
  }
}

void turno()
{

  if (turn == 1)
  {
    turn = 2;
  } else
  {
    turn = 1;
  }
}

void atacar()
{
  if (turn == 1)
  {
    vidaDos[P2] -= atq[P1];
    if (vidaDos[P2] <= 0)
    {
      S++;
    }
    if (vidaDos[P2] >= 140)
    {
      S++;
    }
  }
  if (turn == 2)
    vida[P1] -= atqDos[P2];
  if (vida[P1] <= 0)
  {
    S++;
  }
  if (vida[P1] >= 140)
  {
    S++;
  }
}

void resultado()
{
  background(Final);
  if (vida[P1] >= 140 && vidaDos[P2] < 140)
  {
    textSize(50);
    fill(#FFFFFF);
    text("Jugador 1 has ganado", 160, height/2);
  }
  if (vidaDos[P2] >= 140 && vida[P1] < 140)
  {
    textSize(50);
    fill(#FFFFFF);
    text("Jugador 2 has ganado", 160, height/2);
  }

  if (vidaDos[P2] <= 0)
  {
    textSize(50);
    fill(#FFFFFF);
    text("Jugador 1 has ganado", 160, height/2);
  }
  if (vida[P1] <= 0)
  {
    textSize(50);
    fill(#FFFFFF);
    text("Jugador 2 has ganado", 160, height/2);
  }

  textSize(15);
  fill(#FFFFFF);
  text("Presiona Q para ir al inicio", 130, 500);

  textSize(15);
  fill(#FFFFFF);
  text("Presiona E para elegir otro escenario", 500, 500);
  
  textSize(15);
  fill(#FFFFFF);
  text("Presiona P  para elegir otro personaje", 300, 400);

  if (key == 'q' | key == 'Q')
  {
    S = 0;
    key = 'f';
  }

  if (key == 'p' | key == 'P')
  {
    S = 2; 
    P1 = 0;
    P2 = 0;
    vida[1] = indiferente.hp;
    vida[2] = broken.hp;
    vida[3] = Iny.hp;
    vida[4] = leche.hp;
    vida[5] = panal.hp;
    vida[6] = cartera.hp;
    atq[1] = indiferente.atk;
    atq[2] = broken.atk;
    atq[3] = Iny.atk;
    atq[4] = leche.atk;
    atq[5] = panal.atk;
    atq[6] = cartera.atk;
    vidaDos[1] = indiferente.hp;
    vidaDos[2] = broken.hp;
    vidaDos[3] = Iny.hp;
    vidaDos[4] = leche.hp;
    vidaDos[5] = panal.hp;
    vidaDos[6] = cartera.hp;
    atqDos[1] = indiferente.atk;
    atqDos[2] = broken.atk;
    atqDos[3] = Iny.atk;
    atqDos[4] = leche.atk;
    atqDos[5] = panal.atk;
    atqDos[6] = cartera.atk;
    key = 'f';
  }
   if (key == 'e' | key == 'E')
  {
    S = 3; 
    vida[1] = indiferente.hp;
    vida[2] = broken.hp;
    vida[3] = Iny.hp;
    vida[4] = leche.hp;
    vida[5] = panal.hp;
    vida[6] = cartera.hp;
    atq[1] = indiferente.atk;
    atq[2] = broken.atk;
    atq[3] = Iny.atk;
    atq[4] = leche.atk;
    atq[5] = panal.atk;
    atq[6] = cartera.atk;
    vidaDos[1] = indiferente.hp;
    vidaDos[2] = broken.hp;
    vidaDos[3] = Iny.hp;
    vidaDos[4] = leche.hp;
    vidaDos[5] = panal.hp;
    vidaDos[6] = cartera.hp;
    atqDos[1] = indiferente.atk;
    atqDos[2] = broken.atk;
    atqDos[3] = Iny.atk;
    atqDos[4] = leche.atk;
    atqDos[5] = panal.atk;
    atqDos[6] = cartera.atk;
    key = 'f';
  }
}