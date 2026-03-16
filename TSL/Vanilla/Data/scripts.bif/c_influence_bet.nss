// c_influence_lt
/* Parameter Count: 2

Checks to see if an NPC's Param2 <= influence <= Param3

Param1 - The NPC value of the player whose influence is increased.
Param2 - lower bound (inclusive)
Param3 - upper bound (inclusive)

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
int nInfluenceLower = GetScriptParameter(2);
int nInfluenceUpper = GetScriptParameter(3);

if((GetInfluence(nNPC) <= nInfluenceUpper) &&
   (GetInfluence(nNPC) >= nInfluenceLower)) return 1;
else return 0;

}
