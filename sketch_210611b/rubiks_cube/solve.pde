//this does absolutely nothing yet
/*

//G=<L, R, F, B, U, D>
//all possible moves 

for each of the 12 edge pieces check if good or bad
if good: can return home w/o quarter turns of up or down faces
if bad: needs quarter turns of up or down faces
to go from good to bad a quarter turn of the up or down face is done
if all edge pieces are good it will now be in G1

//G1=<L, R, F, B, U2, D2>
//no quarter turns of the up or down faces



//G2=<L, R, F2, B2, U2, D2>
//no quarter turns of up, down, front or bad faces

//G3=<L2, R2, F2, B2, U2, D2>
//no quarter turns at all 


*/
  /*
 for each cube read the data on the faces
 corners: ULF, URF, ULB, URB, DLF, DRF, DLB, DRB
 edges: UF, UB, UL, UR, LF, LB, LD, RF, RB, RD, BL, BR 
 int[][] edges = new int[12][12];
 edges[up][front]
 int[][][] corners = new int[8][8][8];  


 */