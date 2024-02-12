//::///////////////////////////////////////////////
//:: FileName a_addkreia
//:://////////////////////////////////////////////
//:://////////////////////////////////////////////
//:: Created By: Chris Avellone
//:: Created On: 11/23/2003 10:19:00 PM
//:: This script adds Kreia to the party and sets a flag to let everyone know.
//:://////////////////////////////////////////////
void main()
{

  SetGlobalNumber("101PER_Kreia_Joined", 1);

  AddAvailableNPCByObject(NPC_KREIA,GetObjectByTag("kreia"));

  AddPartyMember(NPC_KREIA,GetObjectByTag("kreia"));

}
