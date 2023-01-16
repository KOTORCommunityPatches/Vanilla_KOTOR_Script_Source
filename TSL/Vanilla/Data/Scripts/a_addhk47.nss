//:: FileName a_addhk47
//:: CFA 1/24/04
//:: This script adds HK-47 to the party.
//:: Initially written as a cheat script to check CNPC dialogue break-ins.
void main()
{

  AddAvailableNPCByObject(NPC_HK_47,GetObjectByTag("HK47"));

  AddPartyMember(NPC_HK_47,GetObjectByTag("HK47"));

}
