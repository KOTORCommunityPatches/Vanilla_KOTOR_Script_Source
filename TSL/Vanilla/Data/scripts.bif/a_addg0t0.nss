//:: FileName a_addg0t0
//:: CFA 1/24/04
//:: This script adds G0T0 to the party.
//:: Initially written as a cheat script to check CNPC dialogue break-ins.
void main()
{

  AddAvailableNPCByObject(NPC_G0T0,GetObjectByTag("G0T0"));

  AddPartyMember(NPC_G0T0,GetObjectByTag("G0T0"));

}
