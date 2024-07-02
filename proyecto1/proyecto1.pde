import processing.sound.*;

//declaro variable de sonidos
SoundFile sonido1;
SoundFile sonido2;
SoundFile sonido3;
SoundFile sonido4;
SoundFile sonido5;
SoundFile sonido6;

// declaro variable de imagen
PImage felicidad_1;

PImage preocupacion_2;

PImage tristeza_3;

PImage dolor_4;

PImage faltaenergia_5;

PImage aislamiento_6;

PImage soledad_7;

PImage esperanza_8;

PImage depresion_9;

PImage fin_10;

void setup() {
  //tamaño completo de lienzo
  fullScreen();
  noCursor(); // ocultar cursor
  //carga de imagenes desde la carpeta ssets
  felicidad_1 = loadImage("assets/felicidad_1.jpg");
  
  preocupacion_2 = loadImage("assets/preocupacion_2.jpg");
  
  tristeza_3 = loadImage("assets/tristeza_3.jpg");
  
  dolor_4 = loadImage("assets/dolor_4.jpg");
  
  faltaenergia_5 = loadImage("assets/faltaenergia_5.jpg");
  
  aislamiento_6 = loadImage("assets/aislamiento_6.jpg");
  
  soledad_7 = loadImage("assets/soledad_7.jpg");
  
  esperanza_8 = loadImage("assets/esperanza_8.jpg");
  
  depresion_9 = loadImage("assets/depresion_9.jpg");
  
  fin_10 = loadImage("assets/fin_10.jpg");
  
  // Cargar sonidos desde la carpeta sonidos
sonido1 = new SoundFile(this, "sonidos/sonido1.mp3");
sonido2 = new SoundFile(this, "sonidos/sonido2.mp3");
sonido3 = new SoundFile(this, "sonidos/sonido3.mp3");
sonido4 = new SoundFile(this, "sonidos/sonido4.mp3");
sonido5 = new SoundFile(this, "sonidos/sonido5.mp3");
sonido6 = new SoundFile(this, "sonidos/sonido6.mp3");
  
}
void draw() {
  background(255, 255, 255); //dibuja el fondo blanco
  
  fill(0);
  textSize(28);
  text("Escribe la palabra 'dxpresion' en el teclado", width-510, height-500);
  image(felicidad_1, 500, 10);
}
void keyPressed() {
  if (key=='d' || key == 'D') {
    background(234, 234, 234);
    
    image(preocupacion_2, 500, 10);
    sonido1.play(); // Reproducir el primer sonido
  }                       
  else if (key=='x' || key == 'X') {
    background(198, 198, 198);
    
  image(tristeza_3, 500, 10);
  sonido1.stop();
  sonido2.play();
  }
  if (key=='p' || key == 'P') {
    background(175, 175, 175);
    
    image(dolor_4, 500, 10);
    sonido2.stop();
    sonido3.play();
  }
  if (key=='r' || key == 'R') {
    background(157, 157, 157);
    
    image(faltaenergia_5, 500, 10);
    sonido3.stop();
    sonido4.play();
  }
  if (key=='e' || key == 'E') {
    background(137, 137, 137);
    
    image(aislamiento_6, 500, 10);
    sonido4.stop();
    sonido5.play();
  }
  if (key=='s' || key == 'S') {
    background(116, 116, 116);
    
    image(soledad_7, 500, 10);
  }
  if (key=='i' || key == 'I') {
    background(95, 95, 95);
    
    image(esperanza_8, 500, 10);
    sonido6.play();
    sonido5.stop();
  }
  if (key=='o' || key == 'O') {
    background(80, 80, 80);
    
    image(depresion_9, 500, 10);
  }
  if (key=='n' || key == 'N') {
    background(0, 0, 0);
    
    image(fin_10, 500, 10);
    sonido6.stop();
  }
}
