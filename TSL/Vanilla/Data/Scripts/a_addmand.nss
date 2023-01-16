//:: FileName a_addmand
//:: Created By: Chris Avellone
//:: Created On: 11/23/2003 10:19:00 PM
//:: This script adds Mandalore to the party.
void main()
{

  AddAvailableNPCByObject(NPC_CANDEROUS,GetObjectByTag("mand"));

  AddPartyMember(NPC_CANDEROUS,GetObjectByTag("mand"));

}
