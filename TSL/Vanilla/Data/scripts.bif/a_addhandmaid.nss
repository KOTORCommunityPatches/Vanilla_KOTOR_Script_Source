//:: FileName a_addhandmaid
//:: CFA 1/24/04
//:: This script adds Handmaiden to the party.
//:: Initially written as a cheat script to check CNPC dialogue break-ins.
void main()
{

  AddAvailableNPCByObject(NPC_HANDMAIDEN,GetObjectByTag("Handmaiden"));

  AddPartyMember(NPC_HANDMAIDEN,GetObjectByTag("Handmaiden"));

}
