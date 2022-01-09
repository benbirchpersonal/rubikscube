//PERMUTATIONS & ORIENTATIONS
int[] PermIC = {1, 2, 3, 4, 5, 6, 7, 8};
int[] PermIE = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12};
int[] OrIC = {1,1,1,1,1,1,1,1};
int[] OrIE = {1,1,1,1,1,1,1,1,1,1,1,1};

Move Identity = new Move("I", OrIE, OrIC, PermIE, PermIC);


int[] PermFC = {1, 7, 3, 5, 2, 6, 4, 8};
int[] PermFE = {1, 2, 3, 4, 5, 10, 9, 8, 6, 7, 11, 12};
int[] OrFC = {0,1,0,1,-1,0,-1,0};
int[] OrFE = {0,0,0,0,0,0,0,0,0,0,0,0};

Move Front = new Move("F", OrFE, OrFC, PermFE, PermFC);

int[] PermBC = {6, 5, 3, 4, 1, 2, 7, 8};
int[] PermBE = {1, 2, 3, 4, 12, 6, 7, 11, 9, 10, 5, 8};
int[] OrBC = {1,0,1,0,0,-1,0,-1};
int[] OrBE = {0,0,0,0,0,0,0,0,0,0,0,0}; 

Move Back = new Move("B", OrBE, OrBC, PermBE, PermBC);

int[] PermLC = {6, 5, 3, 4, 1, 2, 7, 8};
int[] PermLE = {5, 6, 3, 4, 2, 1, 7, 8, 9, 10, 11, 12};

Move Left = new Move("L", OrIE, OrIC, PermLE, PermLC);

int[] PermRC = {1, 2, 8, 7, 5, 6, 3, 4};
int[] PermRE = {1, 2, 7, 8, 5, 6, 4, 3, 9, 10, 11, 12};

Move Right = new Move("R", OrIE, OrIC, PermRE, PermRC);

int[] PermUC = {5, 2, 3, 8, 4, 6, 7, 1};
int[] PermUE = {9, 2, 12, 4, 5, 6, 7, 8, 3, 10, 11, 1};
int[] OrUC = {-1,0,0,-1,1,0,0,1};
int[] OrUE = {1,0,1,0,0,0,0,0,1,0,0,1};

Move Up = new Move("U", OrUE, OrUC, PermUE, PermUC);

int[] PermDC = {1, 6, 7, 4, 5, 3, 2, 8};
int[] PermDE = {1, 11, 3, 10, 5, 6, 7, 8, 9, 2, 4, 12};
int[] OrDC = {0,-1,-1,0,0,1,1,0};
int[] OrDE = {0,1,0,1,0,0,0,0,0,1,1,0};

Move Down = new Move("D", OrDE, OrDC, PermDE, PermDC);

StringList moveCombos = new StringList(); 


Move ApplyMove(Move currentM, Move mov){
    int[] newOrME = new int[mov.OrME.length];
    int[] newOrMC = new int[mov.OrMC.length];
    int[] newPermME = new int[mov.PermME.length];
    int[] newPermMC = new int[mov.PermMC.length];
    
    
    for(int i=0; i<(mov.PermME.length); i++){
        newPermME[i] = currentM.PermME[mov.PermME[i]-1];
    }

    for(int i=0; i<(mov.PermMC.length); i++){
        newPermMC[i] = currentM.PermMC[mov.PermMC[i]-1];
    }

    for(int i=0; i<(mov.OrME.length); i++){
        newOrME[i] = (currentM.OrME[i] + mov.OrME[i]) % 2;
    }

    for(int i=0; i<(mov.OrMC.length); i++){
        newOrMC[i] = (currentM.OrMC[i] + mov.OrMC[i]) % 3;
    }

    Move newM = new Move(currentM.Name + mov.Name, newOrME, newOrMC, newPermME, newPermMC);
    return newM;

}

  Move getMove(String mov){
  Move theMove = null;
  for(Move m : allMoves){
    if(m.Name == mov){
      theMove = m;
    }
  }
  return theMove;
}

  Move getState(StringList movShuffle){
    Move state = Identity;
    for(String mov : movShuffle){
      state = ApplyMove(state, getMove(mov));
    }
    
    return state;
  }


class Move{
    int[] OrME;
    int[] OrMC;
    int[] PermME;
    int[] PermMC;
    String Name;
    
    
    Move(String name, int[] orme, int[] ormc, int[] perme, int[] permc){
        this.OrME = orme;
        this.OrMC = ormc;
        this.PermME = perme;
        this.PermMC = permc;
        this.Name = name;
    }
}
