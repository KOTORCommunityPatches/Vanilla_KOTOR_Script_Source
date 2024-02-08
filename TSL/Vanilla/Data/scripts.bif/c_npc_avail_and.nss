//:: c_avail_npc_and
/*
    Checks to see if ALL of a set of NPCs are available party members.
    Returns 1 if yes, 0 if no.

first parameter is the number of NPC to be checked.
parameters 2 through 5 are the NPC numbers, as specified in NPC.2da

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
//:: Created By: Kevin Saunders, 05/06
//:: Copyright 2004 Obsidian Entertainment
int StartingConditional()
{

int number = GetScriptParameter (1) + 1;

int i;
int count = 0;

for (i = 2; i <= number; i++)

{

int nNPC = GetScriptParameter (i);

switch (nNPC)
{
    case 0:
        count = count + (IsAvailableCreature(NPC_ATTON));
        break;
    case 1:
        count = count + (IsAvailableCreature(NPC_BAO_DUR));
        break;
    case 2:
        count = count + (IsAvailableCreature(NPC_CANDEROUS));
        break;
    case 3:
        count = count + (IsAvailableCreature(NPC_G0T0));
        break;
    case 4:
        count = count + (IsAvailableCreature(NPC_HANDMAIDEN));
        break;
    case 5:
        count = count + (IsAvailableCreature(NPC_HK_47));
        break;
    case 6:
        count = count + (IsAvailableCreature(NPC_KREIA));
        break;
    case 7:
        count = count + (IsAvailableCreature(NPC_MIRA));
        break;
    case 8:
        count = count + (IsAvailableCreature(NPC_T3_M4));
        break;
    case 9:
        count = count + (IsAvailableCreature(NPC_VISAS));
        break;
    case 10:
        count = count + (IsAvailableCreature(NPC_HANHARR));
        break;
    case 11:
        count = count + (IsAvailableCreature(NPC_DISCIPLE));
        break;
}
}

if (count+1 == number) return 1;
return 0;

}
