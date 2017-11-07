void imagenSeleccion()
{
  if (S==2)
  {
    switch(P1)
    {
    case 1:
      image(lego, 1250, 50);
      break;

    case 2:
      image(botella, 1050, 50);
      break;

    case 3:
      image(inye, 600, 50);
      break;

    case 4:
      image(carte, 1300, 200);
      break;

    case 5:
      image(ppanal, 1300, 200);
      break;

    case 6:
      image(leshe, 1300, 150);
      break;
    }

    switch(P2)
    {
    case 1:
      image(lego, 150, 550);
      break;

    case 2:
      image(botella, 50, 550);
      break;

    case 3:
      image(inye, -400, 550);
      break;

    case 4:
      image(carte, 170, 650);
      break;

    case 5:
      image(ppanal, 170, 650);
      break;

    case 6:
      image(leshe, 170, 650);
      break;
    }
  }
}

void EleccionJugador()
{

  if ( S == 2 & (mouseX > 50 & mouseX < 200) & (mouseY > 100 & mouseY < 250) & P1 == 0)
  {
    P1=1;
    key='b';
  }
  if ( S == 2 & (mouseX > 225 & mouseX < 375) & (mouseY > 100 & mouseY < 250) & P1 == 0)
  {
    P1=2;
    key='b';
  }
  if ( S == 2 & (mouseX > 400 & mouseX < 550) & (mouseY > 100 & mouseY < 250) & P1 == 0)
  {
    P1=3;
    key='b';
  }
  if ( S == 2 & (mouseX > 700 & mouseX < 850) & (mouseY > 350 & mouseY < 500) & P1 == 0)
  {
    P1=4;
    key='b';
  }
  if ( S == 2 & (mouseX > 525 & mouseX < 625) & (mouseY > 350 & mouseY < 500) & P1 == 0)
  {
    P1=5;
    key='b';
  }
  if ( S == 2 & (mouseX > 350 & mouseX < 500) & (mouseY > 350 & mouseY < 500) & P1 == 0)
  {
    P1=6;
    key='b';
  }

  if ( S == 2 & (mouseX > 50 & mouseX < 200) & (mouseY > 100 & mouseY < 250) & P1 != 0 & key=='a')
  {
    P2=1;
  }
  if ( S == 2 & (mouseX > 225 & mouseX < 375) & (mouseY > 100 & mouseY < 250) & P1 !=0 & key=='a')
  {
    P2=2;
  }
  if ( S == 2 & (mouseX > 400 & mouseX < 550) & (mouseY > 100 & mouseY < 250) & P1 != 0 & key=='a')
  {
    P2=3;
  }
  if ( S == 2 & (mouseX > 700 & mouseX < 850) & (mouseY > 350 & mouseY < 500) & P1 != 0& key=='a')
  {
    P2=4;
  }
  if ( S == 2 & (mouseX > 525 & mouseX < 625) & (mouseY > 350 & mouseY < 500) & P1 != 0& key=='a')
  {
    P2=5;
  }
  if ( S == 2 & (mouseX > 350 & mouseX < 500) & (mouseY > 350 & mouseY < 500) & P1 != 0& key=='a')
  {
    P2=6;
  }
}

void elecionStage()
{
  if ((S== 3) & (mouseX > 100 & mouseX < 250) & (mouseY > 100 & mouseY < 250))
  {
    Stage = 1; 
    S = 4;
  }

  if ((S== 3) &(mouseX > 300 & mouseX < 450) & (mouseY > 100 & mouseY < 250))
  {
    Stage = 2;
    S = 4;
  }
  if ((S== 3) &(mouseX > 500 & mouseX < 650) & (mouseY > 100 & mouseY < 250))
  {
    Stage = 3;
    S = 4;
  }
  if ((S== 3) &(mouseX > 700 & mouseX < 850) & (mouseY > 100 & mouseY < 250))
  {
    Stage = 4;
    S = 4;
  }
  if (S == 3 & (mouseX > 140.394  & mouseX < 140.394 + 178.535 ) & (mouseY > 432.495  & mouseY < 432.495 + 45.455))
  {
    Rand=(random(1, 4));
    if (Rand <= 1)
    {
      Stage = 1;
    }
    if (Rand >= 1 & Rand < 2)
    {
      Stage = 2;
    }
    if (Rand >= 2 & Rand < 3)
    {
      Stage = 3;
    }
    if (Rand >= 3)
    {
      Stage = 4;
    }


    S = 4;
  }
}