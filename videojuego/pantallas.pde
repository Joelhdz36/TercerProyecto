void screens()
{
  switch(S)
  {
  case 0:
    titulo();
    break;

  case 1:
    instrucciones();
    break;

  case 2:
    eleccion();
    break;

  case 3:
    stage();
    break;

  case 4:
    batalla();
    if (S==4)
    {
      fill(255);
      rect(400, 432, 119, 39);
      rect(400, 512, 119, 39);
    }
    ruleta();
    break;

  case 5:
    background(255);
    resultado();
    break;
  }
}

void titulo()
{
  background(titulo); 
  if (key == ENTER)
  {
    S=1;
  }
}

void instrucciones()
{
  background(instrucciones);
}

void eleccion()
{
  background(eleccion);
  scale(0.5);
  //LEGO
  lgo.beginDraw();
  if ((mouseX > 50 & mouseX < 200) & (mouseY > 100 & mouseY < 250))
  {
    lgo.scale(1.05);
    lgo.background(FPerS);

    if (P1==0)
    {
      image(lego, 1250, 50);
    } else if (P2==0)
    {
      image(lego, 150, 550);
    }
  } else
  {

    lgo.background(FPer);
  }
  lgo.image(lego, -45, -180);
  lgo.endDraw();
  image(lgo, 100, 200);
  //BOTELLA
  btella.beginDraw();
  if ((mouseX > 225 & mouseX < 375) & (mouseY > 100 & mouseY < 250))
  {

    if (P1==0)
    {
      image(botella, 1050, 50);
    } else if (P2==0)
    {
      image(botella, 50, 550);
    }

    btella.scale(1.05);
    btella.background(FPerS);
  } else
  {
    btella.background(FPer);
  }
  btella.image(botella, -220, -150);
  btella.endDraw();
  image(btella, 450, 200);

  //AGUJA
  iny.beginDraw();
  if ((mouseX > 400 & mouseX < 550) & (mouseY > 100 & mouseY < 250))
  {
    iny.scale(1.05);
    iny.background(FPerS);
    pushMatrix();
    if (P1==0)
    {
      image(inye, 600, 50);
    } else if (P2==0)
    {
      image(inye, -400, 550);
    }
    popMatrix();
  } else
  {
    iny.background(FPer);
  }
  iny.image(inye, -630, -150);
  iny.endDraw();
  image(iny, 800, 200);

  //LECHE
  lche.beginDraw();
  if ((mouseX > 350 & mouseX < 500) & (mouseY > 350 & mouseY < 500))

  {


    lche.scale(1.05);
    lche.background(FPerS);
    pushMatrix();

    if (P1==0)
    {
      image(leshe, 1300, 150);
    } else if (P2==0)
    {
      image(leshe, 170, 650);
    }
    popMatrix();
  } else
  {
    lche.background(FPer);
    lche.image(leshe, 0, 0);
  }
  lche.image(leshe, 0, 0);
  lche.endDraw();
  //
  image(lche, 700, 700);


  //PAÑAL
  diapr.beginDraw();
  if ((mouseX > 525 & mouseX < 675) & (mouseY > 350 & mouseY < 500))
  {

    diapr.scale(1.05);
    diapr.background(FPerS);
    if (P1==0)
    {
      image(ppanal, 1300, 200);
    } else if (P2==0)
    {
      image(ppanal, 170, 650);
    }
  } else
  {
    diapr.background(FPer);
  }
  diapr.image(ppanal, 0, 0);

  diapr.endDraw();
  image(diapr, 1050, 700);


  //CARTERA
  crtra.beginDraw();
  if ((mouseX > 700 & mouseX < 850) & (mouseY > 350 & mouseY < 500))
  {
    pushMatrix();
    crtra.scale(1.05);
    crtra.background(FPerS);
    popMatrix();
    if (P1==0)
    {
      image(carte, 1300, 200);
    } else if (P2==0)
    {
      image(carte, 170, 650);
    }
  } else
  {
    crtra.background(FPer);
  }
  crtra.image(carte, 0, 0);
  crtra.endDraw();

  image(crtra, 1400, 700);
}

void stage()
{

  background(Fes);
  pushMatrix();
  es1.beginDraw();
  es1.background(e1);
  es1.endDraw();
  es2.beginDraw();
  es2.background(e2);
  es2.endDraw();
  es3.beginDraw();
  es3. background(e3);
  es3.endDraw();
  es4.beginDraw();
  es4.background(e4);
  es4.endDraw();
  popMatrix();
  image(es1, 100, 100);
  image(es2, 300, 100);
  image(es3, 500, 100);
  image(es4, 700, 100);
  if ((mouseX > 100 & mouseX < 250) & (mouseY > 100 & mouseY < 250))
  {
    noFill();
    stroke(#4198DB);
    rect(90, 90, 170, 170);
    image(es1, 550, 400);
  }
  if ((mouseX > 300 & mouseX < 450) & (mouseY > 100 & mouseY < 250))
  {
    noFill();
    stroke(#4198DB);
    rect(290, 90, 170, 170);
    image(es2, 550, 400);
  }
  if ((mouseX > 500 & mouseX < 650) & (mouseY > 100 & mouseY < 250))
  {
    noFill();
    stroke(#4198DB);
    rect(490, 90, 170, 170);
    image(es3, 550, 400);
  }
  if ((mouseX > 140.394  & mouseX < 140.394 + 178.535 ) & (mouseY > 432.495  & mouseY < 432.495 + 45.455))
  {
    noFill();
    stroke(#4198DB);
    rect(133, 425, 188, 55);
  }
  if ((mouseX > 700 & mouseX < 850) & (mouseY > 100 & mouseY < 250))
  {
    noFill();
    stroke(#4198DB);
    rect(690, 90, 170, 170);
    image(es4, 550, 400);
  }
}
void batalla()
{

  switch(Stage)
  {
  case 1:
    background(E1);
    key = 'f';
    break;

  case 2:
    background(E2);
    key = 'f';
    break;

  case 3:
    background(E3);
    key = 'f';
    break;

  case 4:
    background(E4);
    key = 'f';
    break;
  }

  switch(P1)
  {
  case 1:
    pushMatrix();
    translate(0, 200);
    indiferente.display();
    popMatrix();
    textSize(30);
    text("vida:", 130, 100);
    text("atq:", 130, 130);
    text(vida[P1], 200, 100);
    text(atq[P1], 200, 130);
    break;

  case 2:
    pushMatrix();
    translate(-220, 150);
    broken.display();
    popMatrix();
    textSize(30);
    text("vida:", 130, 100);
    text("atq:", 130, 130);
    text(vida[P1], 200, 100);
    text(atq[P1], 200, 130);
    break;

  case 3:
    pushMatrix();
    translate(-600, 150);
    Iny.display();
    popMatrix();
    textSize(30);
    text("vida:", 130, 100);
    text("atq:", 130, 130);
    text(vida[P1], 200, 100);
    text(atq[P1], 200, 130);
    break;

  case 4:
    pushMatrix();
    translate(0, 250);
    cartera.display();
    popMatrix();
    textSize(30);
    text("vida:", 130, 100);
    text("atq:", 130, 130);
    text(vida[P1], 200, 100);
    text(atq[P1], 200, 130);
    break;

  case 5:
    pushMatrix();
    translate(0, 300);
    panal.display();
    popMatrix();
    textSize(30);
    text("vida:", 130, 100);
    text("atq:", 130, 130);
    text(vida[P1], 200, 100);
    text(atq[P1], 200, 130);
    break;

  case 6:
    pushMatrix();
    translate(0, 250);
    leche.display();
    popMatrix();
    textSize(30);
    text("vida:", 130, 100);
    text("atq:", 130, 130);
    text(vida[P1], 200, 100);
    text(atq[P1], 200, 130);
    break;
  }

  switch(P2)
  {
  case 1:
    pushMatrix();
    translate(550, 200);
    indiferente.display();
    popMatrix();
    textSize(30);
    text("vida:", 700, 100);
    text("atq:", 700, 130);
    text(vidaDos[P2], 770, 100);
    text(atqDos[P2], 770, 130);
    break;

  case 2:
    pushMatrix();
    translate(350, 150);
    broken.display();
    popMatrix();
    textSize(30);
    text("vida:", 700, 100);
    text("atq:", 700, 130);
    text(vidaDos[P2], 770, 100);
    text(atqDos[P2], 770, 130);
    break;

  case 3:
    pushMatrix();
    translate(0, 150);
    Iny.display();
    popMatrix();
    textSize(30);
    text("vida:", 700, 100);
    text("atq:", 700, 130);
    text(vidaDos[P2], 770, 100);
    text(atqDos[P2], 770, 130);
    break;

  case 4:
    pushMatrix();
    translate(600, 250);
    cartera.display();
    popMatrix();
    textSize(30);
    text("vida:", 700, 100);
    text("atq:", 700, 130);
    text(vidaDos[P2], 770, 100);
    text(atqDos[P2], 770, 130);
    break;

  case 5:
    pushMatrix();
    translate(600, 300);
    panal.display();
    popMatrix();
    textSize(30);
    text("vida:", 700, 100);
    text("atq:", 700, 130);
    text(vidaDos[P2], 770, 100);
    text(atqDos[P2], 770, 130);
    break;

  case 6:
    pushMatrix();
    translate(600, 250);
    leche.display();
    popMatrix();
    textSize(30);
    text("vida:", 700, 100);
    text("atq:", 700, 130);
    text(vidaDos[P2], 770, 100);
    text(atqDos[P2], 770, 130);
    break;
  }
}