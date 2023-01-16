//:: FileName a_addt3m4
//:: CFA 1/24/04
//:: This script adds T3-M4 to the party.
//:: Initially written as a cheat script to check CNPC dialogue break-ins.
void main()
{

  AddAvailableNPCByObject(NPC_T3_M4,GetObjectByTag("T3M4"));

  AddPartyMember(NPC_T3_M4,GetObjectByTag("T3M4"));

}
