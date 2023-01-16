//:: FileName a_addvisas
//:: CFA 1/24/04
//:: This script adds Visas to the party.
//:: Initially written as a cheat script to check CNPC dialogue break-ins.
void main()
{

  AddAvailableNPCByObject(NPC_VISAS,GetObjectByTag("VisasMarr"));

  AddPartyMember(NPC_VISAS,GetObjectByTag("VisasMarr"));

}
