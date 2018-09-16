class Linea {
  PVector a;
  PVector b;

  Linea(float x1, float y1, float x2, float y2) {
    a = new PVector(x1,y1);
    b = new PVector(x2,y2);
  }
  void Trasladar(PVector dxy) {
    a.add(dxy);
    b.add(dxy);
  }
  
  void RotarGrados(float angulo) {
    float [][] R = CalcularMatRot(radians(angulo));
    a = MultiplicacionMatVec(R,a);
    b = MultiplicacionMatVec(R,b);
    println(a.x);
    println(b.x);
  }
  
  void Draw () {
    line(a.x, a.y, b.x, b.y);
  }
}