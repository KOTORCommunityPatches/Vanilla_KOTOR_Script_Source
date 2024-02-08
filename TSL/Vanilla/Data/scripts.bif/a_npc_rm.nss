//:: a_npc_rm
/*
    Removes an NPC from the available party.

first parameter is NPC number, as specified in NPC.2da

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
//:: Created By: Kevin Saunders
//:: Copyright 2004 Obsidian Entertainment
void main ()
{

int nNPC = GetScriptParameter (1);

switch (nNPC)
{
    case 0:
        RemoveAvailableNPC(NPC_ATTON);
	break;
    case 1:
        RemoveAvailableNPC(NPC_BAO_DUR);
	break;
    case 2:
        RemoveAvailableNPC(NPC_CANDEROUS);
	break;
    case 3:
        RemoveAvailableNPC(NPC_G0T0);
	break;
    case 4:
        RemoveAvailableNPC(NPC_HANDMAIDEN);
	break;
    case 5:
        RemoveAvailableNPC(NPC_HK_47);
	break;
    case 6:
        RemoveAvailableNPC(NPC_KREIA);
	break;
    case 7:
        RemoveAvailableNPC(NPC_MIRA);
	break;
    case 8:
        RemoveAvailableNPC(NPC_T3_M4);
	break;
    case 9:
        RemoveAvailableNPC(NPC_VISAS);
	break;
    case 10:
        RemoveAvailableNPC(NPC_HANHARR);
	break;
    case 11:
        RemoveAvailableNPC(NPC_DISCIPLE);
	break;
}

}
