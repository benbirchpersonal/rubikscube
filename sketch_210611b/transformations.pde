 void LeftRight(int side){
   for(int i=0; i<3; i++){
     for(int j=0; j<3; j++){
       for(int k=0; k<3; k++){
         cube current = cubies[i][j][k];
         
         if(i == side){
           current.face[4].c = current.colors[3];
           current.face[2].c = current.colors[4];
           current.face[5].c = current.colors[2];
           current.face[3].c = current.colors[5];
/*
           current.face[3] = new planes(0, 0, 0.5, white); 
           current.face[3].show();
           current.face[4] = new planes(0, 0.5, 0, red);
           current.face[4].show();
           current.face[5] = new planes(0, 0, -0.5, yellow);
           current.face[5].show();
           current.face[2] = new planes(0, -0.5, 0, orange);
           current.face[2].show();
           */
           }
         }
         

       }
   }
     
   }

  
    void UpDown(int side){
   for(int i=0; i<3; i++){
     for(int j=0; j<3; j++){
       for(int k=0; k<3; k++){
         cube current = cubies[i][j][k];
         if(j == side){
           /*
           current.face[1] = new planes(0.5, 0, 0, red); 
           current.face[1].show();
           current.face[2] = new planes(0, 0, -0.5, blue);
           current.face[2].show();
           current.face[0] = new planes(-0.5, 0, 0, orange);
           current.face[0].show();
           current.face[3] = new planes(0, 0, 0.5, green); 
           current.face[3].show();
           */
           
         }
         }
       }
     
     }
   }
  

  
   void FrontBack(int side){
   for(int i=0; i<3; i++){
     for(int j=0; j<3; j++){
       for(int k=0; k<3; k++){
         cube current = cubies[i][j][k];
         if(k == side){
           /*
           current.face[1] = new planes(0.5, 0, 0, white); 
           current.face[1].show();
           current.face[5] = new planes(0, 0.5, 0, blue);
           current.face[5].show();
           current.face[0] = new planes(-0.5, 0, 0, yellow);
           current.face[0].show();
           current.face[4] = new planes(0, -0.5, 0, green);
           current.face[4].show();
*/
       }
     }
     
   }
    
  
  }
  
   }
