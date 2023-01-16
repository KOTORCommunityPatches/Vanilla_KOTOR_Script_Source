//::///////////////////////////////////////////////
//:: FileName a_addatton
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Chris Avellone
//:: Created On: 11/23/2003 10:19:00 PM
//:: This script adds Atton to the party and sets a flag so he uses a different
//:: conversation node when he's good to go.
//:://////////////////////////////////////////////
void main()
{

  AddAvailableNPCByObject(NPC_ATTON,GetObjectByTag("atton"));

  AddPartyMember(NPC_ATTON,GetObjectByTag("atton"));

  SetGlobalNumber("101PER_Atton_Joined", 1);
}
