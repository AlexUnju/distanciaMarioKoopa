int posicionMario, posicionKoopa, distanciaMK;
PImage bg;
PImage marioImage;
PImage koopaImage;

void setup() {
  size(1280,720);
  bg = loadImage("fondo.jpg");
  bg.resize(width, height);
  marioImage = loadImage("Mario.png");
  koopaImage = loadImage("Koopa.png"); 
  marioImage.resize(50, 0);
  koopaImage.resize(160, 0);
  posicionMario=5;
  posicionKoopa=10;
  calcularDistancia();
  mostrarDistancia();
}

void draw() {
  image(bg, 0, 0);
  image(marioImage, 100, height / 2 + 170);
  image(koopaImage, 400, height / 2 + 170);
}


public void calcularDistancia() {
  distanciaMK = posicionKoopa - posicionMario;
}

//comentario
public void mostrarDistancia() {
  println("Distancia: " + distanciaMK);
}
