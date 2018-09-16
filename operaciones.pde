float [][] CalcularMatRot(float theta) {
  float [][] rot = new float[2][2]; 
  rot[0][0] = cos(theta); 
  rot[0][1] = sin(theta);
  rot[1][0] = -sin(theta);
  rot[1][1] = cos(theta);
  return rot;
}

PVector MultiplicacionMatVec(float [][] mat,PVector v) {
  PVector r = new PVector();
    r.x = mat[0][0] * v.x + mat[0][1] * v.y;
    r.y = mat[1][0] * v.x + mat[1][1] * v.y;
  return r;
}