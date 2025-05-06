//:: FileName a_adddisciple
//:: CFA 1/24/04
//:: This script adds the Disciple to the party.
//:: Initially written as a cheat script to check CNPC dialogue break-ins.
void main()
{

  AddAvailableNPCByObject(NPC_DISCIPLE,GetObjectByTag("Disciple"));
  SetGlobalNumber ("000_Disciple_Joined", 1);
  AddPartyMember(NPC_DISCIPLE,GetObjectByTag("Disciple"));

}
