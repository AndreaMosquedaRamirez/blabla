class PiezaTetris {
  int N;
  PVector origen;
  PVector [] puntos;

  PiezaTetris( int escala) {
    N = 10;
    origen = new PVector(0, 0);
    puntos = new PVector[N];
    // Inicialización de los puntos
    puntos[0] = new PVector(1* escala, 1* escala);
    puntos[1] = new PVector(2* escala, 1* escala);
    puntos[2] = new PVector(3* escala, 1* escala);
    puntos[3] = new PVector(4* escala, 1* escala);
    puntos[4] = new PVector(4* escala, 2* escala);

    puntos[5] = new PVector(3* escala, 2* escala);
    puntos[6] = new PVector(3* escala, 3* escala);
    puntos[7] = new PVector(2* escala, 3* escala);
    puntos[8] = new PVector(2* escala, 2* escala);
    puntos[9] = new PVector(1* escala, 2* escala);
  }
  void Trasladar(PVector dxy) {
    //for (int i = 0; i < N; i++) { 
    origen.add(dxy);
    //}
  }
  
  void Mover(PVector xy) {
    origen.x = xy.x;
    origen.y = xy.y;
  }
  void Draw () {
    for (int i = 0; i < N-1; i++) {
      PVector a = PVector.add(origen, puntos[i]);
      PVector b = PVector.add(origen, puntos[i+1]);
      line(a.x, a.y, b.x, b.y);
    }
    PVector a = PVector.add(origen, puntos[9]);
    PVector b = PVector.add(origen, puntos[0]);
    line(a.x, a.y, b.x, b.y);

    a = PVector.add(origen, puntos[8]);
    b = PVector.add(origen, puntos[1]);  
    line(a.x, a.y, b.x, b.y);

    a = PVector.add(origen, puntos[2]);
    b = PVector.add(origen, puntos[5]);
    line(a.x, a.y, b.x, b.y);

    a = PVector.add(origen, puntos[8]);
    b = PVector.add(origen, puntos[5]);  
    line(a.x, a.y, b.x, b.y);
  }
}