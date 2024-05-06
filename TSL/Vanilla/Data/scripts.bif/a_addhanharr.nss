//:: FileName a_addhanharr
//:: CFA 1/24/04
//:: This script adds Hanharr to the party.
//:: Initially written as a cheat script to check CNPC dialogue break-ins.
void main()
{

  AddAvailableNPCByObject(NPC_HANHARR,GetObjectByTag("Hanharr"));
  SetGlobalNumber ("000_Hanharr_Joined", 1);
  AddPartyMember(NPC_HANHARR,GetObjectByTag("Hanharr"));

}
