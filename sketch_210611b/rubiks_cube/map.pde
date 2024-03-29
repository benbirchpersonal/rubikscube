char checkCol(int num, int i){
  if(cube[i].colours[num] == green){
    return 'G';
  }
  else if(cube[i].colours[num] == blue){
    return 'B';
  }
  else if(cube[i].colours[num] == red){
    return 'R';
  }
  else if(cube[i].colours[num] == orange){
    return 'O';
  }
  else if(cube[i].colours[num] == white){
    return 'W';
  }
  else{
    return 'Y';
  }
  
}


int pieceType(int i){
  cubes c = cube[i];
  if((c.x==1 || c.x==-1) && (c.y==1 || c.y==-1) && (c.z==1 || c.z==-1)){
    return corner;
  }
  else if(c.x==0 && c.y==0 && c.z==0){
    return core;
  }
  else if(((c.x==1 || c.x==-1)^(c.y==1 || c.y==-1)) ^ (c.z==1 || c.z==-1)){
    return centre;
  }
  else{
    return edge;
  }

}

void menu(){
  
    if(l){
    text("Up", 120, 40, 280, 320);
    text("Down", 120, 270, 280, 320);
    text("Left", 20, 140, 280, 320);
    text("Right", 240, 140, 280, 320);
    }
    
    text("Shuffle cube: s", 0, 0, 280, 320);
    text("Label sides: l", 0, 20, 280, 320);
}
