class Triangulo {
  PVector a;
  PVector b;
  PVector c;

  Triangulo(float x1, float y1, 
            float x2, float y2,
            float x3, float y3) {
    a = new PVector(x1, y1);
    b = new PVector(x2, y2);
    c = new PVector(x3, y3);
  }
  void Trasladar(PVector dxy) {
    a.add(dxy);
    b.add(dxy);
    c.add(dxy);
  }
   void RotarGrados(float angulo) {
    float [][] R = CalcularMatRot(radians(angulo));
    a = MultiplicacionMatVec(R,a);
    b = MultiplicacionMatVec(R,b);
    c = MultiplicacionMatVec(R,c);
  }
  
  void Draw () {
    line(a.x, a.y, b.x, b.y);
    line(b.x, b.y, c.x, c.y);
    line(a.x, a.y, c.x, c.y);
  }
}