interface Monstruo
{
  void display();
}

class Lego implements Monstruo
{
  int hp, atk;

  Lego(int hp_, int atk_)
  {
    hp = hp_;
    atk = atk_;
  }

  void display()
  {
    pushMatrix();
    lgo.beginDraw();
    lgo.image(lego, -50, -250);
    lgo.endDraw();
    popMatrix();
    image(lego, 0, 0);
  }
}

class Botella implements Monstruo
{
  int hp, atk;

  Botella(int hp_, int atk_)
  {
    hp = hp_;
    atk = atk_;
  }
  void display()
  {
    pushMatrix();
    btella.beginDraw();
    btella.image(botella, -50, -250);
    btella.endDraw();
    popMatrix();
    image(botella, 0, 0);
  }
}

class Needle implements Monstruo
{
  int hp, atk;

  Needle(int hp_, int atk_)
  {
    hp = hp_;
    atk = atk_;
  }
  void display()
  {
    pushMatrix();
    iny.beginDraw();
    iny.image(inye, -50, 200);
    iny.endDraw();
    popMatrix();
    image(inye, 0, 0);
  }
}

class Milk implements Monstruo
{
  int hp, atk;

  Milk(int hp_, int atk_)
  {
    hp = hp_;
    atk = atk_;
  }
  void display()
  {
    pushMatrix();
    lche.beginDraw();
    lche.image(leshe, -50, 200);
    lche.endDraw();
    popMatrix();
    image(leshe, 0, 0);
  }
}

class Diaper implements Monstruo
{
  int hp, atk;

  Diaper(int hp_, int atk_)
  {
    hp = hp_;
    atk = atk_;
  }
  void display()
  {
    pushMatrix();
    diapr.beginDraw();
    diapr.image(ppanal, -50, 200);
    diapr.endDraw();
    popMatrix();
    image(ppanal, 0, 0);
  }
}

class Wallet implements Monstruo
{
  int hp, atk;

  Wallet(int hp_, int atk_)
  {
    hp = hp_;
    atk = atk_;
  }
  void display()
  {
    pushMatrix();
    crtra.beginDraw();
    crtra.image(carte, -50, 200);
    crtra.endDraw();
    popMatrix();
    image(carte, 0, 0);
  }
}