Lego indiferente;
Botella broken;
Needle Iny;
Milk leche;
Diaper panal;
Wallet cartera;
float pos, vel,  Rand;
float acel = 1.5;
float dacel = 0.99;
int turn = 1;
int suerte, x, y, w, h, z, colorButton;
PImage titulo, instrucciones, eleccion, lego, botella, inye, leshe, ppanal, carte, FPer, FPerS , Fes, Final, E1, E2, E3, E4, e1, e2, e3, e4;
PGraphics lgo, btella, iny, lche, diapr, crtra, es1, es2, es3, es4;
int S, P1, P2, Stage;
int[] vida = new int[7];
int[] atq = new int[7];
int[] vidaDos = new int[7];
int[] atqDos = new int[7];

void setup()
{

  size(900, 600);
  //Personajes
  indiferente = new Lego(130, 10);
  broken = new Botella(100, 15);
  Iny = new Needle(90, 13);
  leche = new Milk(100, 12);
  panal = new Diaper(110, 11);
  cartera = new Wallet(120, 10);
  //Valores
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
  //Imagenes
  eleccion = loadImage("eleccionP.jpg");
  FPer = loadImage("Fpersonaje.png");
  FPerS = loadImage("FpersonajeS.png");
  Fes = loadImage("Fes.png");
  Final = loadImage("Final.png");
  instrucciones = loadImage("instrucciones.jpg");
  titulo = loadImage("titulo.jpg");
  //ImagenesPersonajes
  lego = loadImage("Lego-01.png"); 
  botella = loadImage("botella.png");
  inye = loadImage("needle.png");
  leshe = loadImage("leche.png");
  ppanal = loadImage("pañal.png");
  carte = loadImage("cartera.png");
  //Escenarios
  E1 = loadImage("e900.jpg");
  e1 = loadImage("e1.jpg");
  E2 = loadImage("e2.png");
  e2 = loadImage("e300.png");
  E3 = loadImage("e3900.png");
  e3 = loadImage("e3150.png");
  E4 = loadImage("e4900.png");
  e4 = loadImage("e4150.png");
  //PGraphics
  es1 = createGraphics(150, 150);
  es2 = createGraphics(150, 150);
  es3 = createGraphics(151,151);
  es4 = createGraphics(150,150);
  lgo = createGraphics(300, 300);
  btella = createGraphics(300, 300);
  iny = createGraphics(300, 300);
  lche = createGraphics(300, 300);
  diapr = createGraphics(300, 300);
  crtra = createGraphics(300, 300);
}

void draw()
{

  screens();
  imagenSeleccion();
  println(Rand);
  if (P1 != 0 & P2 !=0 & S==2)
  {
    pushMatrix();

    fill(0);
    textSize(50);
    text("PRESIONA ENTER PARA INICIAR", 800, 1100);
    popMatrix();
    if (P1 != 0 & P2 != 0 & key == ENTER)
      S=3;
  }
 
}

void mouseReleased()
{
  if (S == 1 & (mouseX > 94.98 & mouseX < 94.98+157.843) & (mouseY > 490.89  & mouseY < 490.89  + 41.482))
  {
    S=2;
  }
  if (S==2)
  {
    key='a';
  }
  EleccionJugador();

  elecionStage();

  if ((S == 4) & (mouseX >= 400 & mouseX <= 400+119) & (mouseY >= 512 & mouseY <= 512+39))
  {
    turno();
    if (turn == 1 && S == 4)
    {
      atq[P1] += suerte;
      atacar();
    }
    if (turn == 2 && S == 4)
    {
      atqDos[P2] += suerte; 
      atacar();
    }
  }
}