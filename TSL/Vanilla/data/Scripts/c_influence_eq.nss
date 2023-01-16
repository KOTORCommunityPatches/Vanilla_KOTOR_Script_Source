// c_influence_eq
/* Parameter Count: 2

Checks to see if an NPC's influence equals Param2

Param1 - The NPC value of the player whose influence is increased.
Param2 - influence value to test against.

NPC numbers, as specified in NPC.2da

0       Atton
1       BaoDur
2       Mand
3       g0t0
4       Handmaiden
5       hk47
6       Kreia
7       Mira
8       T3m4
9       VisasMarr
10      Hanharr
11      Disciple

*/
//
// KDS 06/28/04
int StartingConditional()
{

int nNPC = GetScriptParameter(1);
int nInfluence = GetScriptParameter(2);

if(nInfluence == GetInfluence(nNPC)) return 1;
else return 0;

}
