//:: c_inprty_npc_or
/*

Checks to see if ANY of a set of NPCs are currently in the party.
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
//:: Created By: Kevin Saunders
//:: Copyright 2004 Obsidian Entertainment
int StartingConditional()
{

int number = GetScriptParameter (1) + 1;

int i;
int count = 0;
float maxNPCDistance = 12.0;

for (i = 2; i <= number; i++)

{

int nNPC = GetScriptParameter (i);

switch (nNPC)
{
    case 0:
        count = count + (IsNPCPartyMember(NPC_ATTON) &&
        (GetDistanceBetween(GetPCSpeaker(),GetObjectByTag("Atton")) <= maxNPCDistance));
        break;
    case 1:
        count = count + (IsNPCPartyMember(NPC_BAO_DUR) &&
        (GetDistanceBetween(GetPCSpeaker(),GetObjectByTag("Baodur")) <= maxNPCDistance));
        break;
    case 2:
        count = count + (IsNPCPartyMember(NPC_CANDEROUS) &&
        (GetDistanceBetween(GetPCSpeaker(),GetObjectByTag("Mand")) <= maxNPCDistance));
        break;
    case 3:
        count = count + (IsNPCPartyMember(NPC_G0T0) &&
        (GetDistanceBetween(GetPCSpeaker(),GetObjectByTag("G0T0")) <= maxNPCDistance));
        break;
    case 4:
        count = count + (IsNPCPartyMember(NPC_HANDMAIDEN) &&
        (GetDistanceBetween(GetPCSpeaker(),GetObjectByTag("Handmaiden")) <= maxNPCDistance));
        break;
    case 5:
        count = count + (IsNPCPartyMember(NPC_HK_47) &&
        (GetDistanceBetween(GetPCSpeaker(),GetObjectByTag("HK47")) <= maxNPCDistance));
        break;
    case 6:
        count = count + (IsNPCPartyMember(NPC_KREIA) &&
        (GetDistanceBetween(GetPCSpeaker(),GetObjectByTag("Kreia")) <= maxNPCDistance));
        break;
    case 7:
        count = count + (IsNPCPartyMember(NPC_MIRA) &&
        (GetDistanceBetween(GetPCSpeaker(),GetObjectByTag("Mira")) <= maxNPCDistance));
        break;
    case 8:
        count = count + (IsNPCPartyMember(NPC_T3_M4) &&
        (GetDistanceBetween(GetPCSpeaker(),GetObjectByTag("T3M4")) <= maxNPCDistance));
        break;
    case 9:
        count = count + (IsNPCPartyMember(NPC_VISAS) &&
        (GetDistanceBetween(GetPCSpeaker(),GetObjectByTag("VisasMarr")) <= maxNPCDistance));
        break;
    case 10:
        count = count + (IsNPCPartyMember(NPC_HANHARR) &&
        (GetDistanceBetween(GetPCSpeaker(),GetObjectByTag("Hanharr")) <= maxNPCDistance));
    case 11:
        count = count + (IsNPCPartyMember(NPC_DISCIPLE) &&
        (GetDistanceBetween(GetPCSpeaker(),GetObjectByTag("Disciple")) <= maxNPCDistance));
}
}

if (count > 0) return 1;
return 0;

}
