//:: c_inprty_npc
/*
    Checks to see if an NPC is currently in the party.
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
float maxNPCDistance = 24.0;

switch (nNPC)
{
    case 0:
        return (IsNPCPartyMember(NPC_ATTON) &&
        (GetDistanceBetween(GetPCSpeaker(),GetObjectByTag("Atton")) <= maxNPCDistance));
    case 1:
        return (IsNPCPartyMember(NPC_BAO_DUR) &&
        (GetDistanceBetween(GetPCSpeaker(),GetObjectByTag("Baodur")) <= maxNPCDistance));
    case 2:
        return (IsNPCPartyMember(NPC_CANDEROUS) &&
        (GetDistanceBetween(GetPCSpeaker(),GetObjectByTag("Mand")) <= maxNPCDistance));
    case 3:
        return (IsNPCPartyMember(NPC_G0T0) &&
        (GetDistanceBetween(GetPCSpeaker(),GetObjectByTag("G0T0")) <= maxNPCDistance));
    case 4:
        return (IsNPCPartyMember(NPC_HANDMAIDEN) &&
        (GetDistanceBetween(GetPCSpeaker(),GetObjectByTag("Handmaiden")) <= maxNPCDistance));
    case 5:
        return (IsNPCPartyMember(NPC_HK_47) &&
        (GetDistanceBetween(GetPCSpeaker(),GetObjectByTag("HK47")) <= maxNPCDistance));
    case 6:
        return (IsNPCPartyMember(NPC_KREIA) &&
        (GetDistanceBetween(GetPCSpeaker(),GetObjectByTag("Kreia")) <= maxNPCDistance));
    case 7:
        return (IsNPCPartyMember(NPC_MIRA) &&
        (GetDistanceBetween(GetPCSpeaker(),GetObjectByTag("Mira")) <= maxNPCDistance));
    case 8:
        return (IsNPCPartyMember(NPC_T3_M4) &&
        (GetDistanceBetween(GetPCSpeaker(),GetObjectByTag("T3M4")) <= maxNPCDistance));
    case 9:
        return (IsNPCPartyMember(NPC_VISAS) &&
        (GetDistanceBetween(GetPCSpeaker(),GetObjectByTag("VisasMarr")) <= maxNPCDistance));
    case 10:
        return (IsNPCPartyMember(NPC_HANHARR) &&
        (GetDistanceBetween(GetPCSpeaker(),GetObjectByTag("Hanharr")) <= maxNPCDistance));
    case 11:
        return (IsNPCPartyMember(NPC_DISCIPLE) &&
        (GetDistanceBetween(GetPCSpeaker(),GetObjectByTag("Disciple")) <= maxNPCDistance));
}

return 0;

}
