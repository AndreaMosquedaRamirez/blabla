PiezaTetris pieza;
Linea l1, l2;
Triangulo t;
void setup () {
  size(500, 500);
  l1 = new Linea (50, 100, 400, 100);
  l2 = new Linea (20, 30, 100, 400);
  t = new Triangulo(10, 10, 30 ,40, 20,10);
  pieza = new PiezaTetris(10);
  //pieza.Mover(new PVector(150,0));
     t.Trasladar(new PVector(200,200));
  frameRate(10);
}

void draw() {
    //background(255,255,255);
     t.Trasladar(new PVector(10,10));
     t.Trasladar(new PVector(100,100));
     t.RotarGrados(10);
     
     t.Draw();
    /*l1.RotarGrados(1.0);
    l1.Trasladar(new PVector(0,0.1));
    l1.Draw();*/
}


/*
PVector d = new PVector(0,5);
  pieza.Trasladar(d);
  pieza.Draw();  
  
  if( pieza.origen.y > height) {
    pieza.Mover(new PVector(pieza.origen.x+50,0));
  }
*/

/*
PVector d1 = new PVector(0,-5);
  PVector d2 = new PVector(-5,0);
  PVector d3 = new PVector(5,5);
  l1.Trasladar(d1);
  l2.Trasladar(d2);
  t.Trasladar(d3);
  l1.Draw();
  l2.Draw();
  t.Draw();

*/