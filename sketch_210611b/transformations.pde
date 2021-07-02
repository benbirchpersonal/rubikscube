
  void turnX(float angle, int side){
   for(int i=0; i<3; i++){
     for(int j=0; j<3; j++){
       for(int k=0; k<3; k++){
         cube current = cubies[i][j][k];
         if(i == 0){
           PMatrix2D matrix = new PMatrix2D();
           matrix.rotate(PI/2);
           matrix.translate(j, k);
           current.turnX(angle);
           current.reset(i, matrix.m01, matrix.m02);
         }
       }
     }
   }
  }
  
    void turnY(float angle, int side){
   for(int i=0; i<3; i++){
     for(int j=0; j<3; j++){
       for(int k=0; k<3; k++){
         cube current = cubies[i][j][k];
         if(j == 0){
           PMatrix2D matrix = new PMatrix2D();
           matrix.rotate(PI/2);
           matrix.translate(i, k);
           current.turnY(angle);
           current.reset(matrix.m00, j, matrix.m02);
         }
       }
     }
   }
  
  }
  
  void turnZ(float angle, int side){
   for(int i=0; i<3; i++){
     for(int j=0; j<3; j++){
       for(int k=0; k<3; k++){
         cube current = cubies[i][j][k];
         if(k == 0){
           PMatrix2D matrix = new PMatrix2D();
           matrix.rotate(PI/2);
           matrix.translate(i, j);
           current.turnZ(angle);
           current.reset(matrix.m00, matrix.m01, k);
         }
       }
     }
   }
    
  
  }
  
