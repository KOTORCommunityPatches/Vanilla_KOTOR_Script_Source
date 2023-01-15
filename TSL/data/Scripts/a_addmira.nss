//:: FileName a_addmira
//:: CFA 1/24/04
//:: This script adds Mira to the party.
//:: Initially written as a cheat script to check CNPC dialogue break-ins.
void main()
{

  AddAvailableNPCByObject(NPC_MIRA,GetObjectByTag("Mira"));

  AddPartyMember(NPC_MIRA,GetObjectByTag("Mira"));

}
