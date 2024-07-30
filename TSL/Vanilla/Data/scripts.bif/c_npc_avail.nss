//:: c_avail_npc
/*
    Checks to see if an NPC is an available party member.
    Returns 1 if yes, 0 if no.

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
int StartingConditional()
{

int nNPC = GetScriptParameter (1);

switch (nNPC)
{
    case 0:
        return IsAvailableCreature(NPC_ATTON);
    case 1:
        return IsAvailableCreature(NPC_BAO_DUR);
    case 2:
        return IsAvailableCreature(NPC_CANDEROUS);
    case 3:
        return IsAvailableCreature(NPC_G0T0);
    case 4:
        return IsAvailableCreature(NPC_HANDMAIDEN);
    case 5:
        return IsAvailableCreature(NPC_HK_47);
    case 6:
        return IsAvailableCreature(NPC_KREIA);
    case 7:
        return IsAvailableCreature(NPC_MIRA);
    case 8:
        return IsAvailableCreature(NPC_T3_M4);
    case 9:
        return IsAvailableCreature(NPC_VISAS);
    case 10:
        return IsAvailableCreature(NPC_HANHARR);
    case 11:
        return IsAvailableCreature(NPC_DISCIPLE);
}

return 0;

}
