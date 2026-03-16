//:: FileName a_addbaodur
//:: CFA 1/24/04
//:: This script adds Bao-Dur to the party.
//:: Initially written as a cheat script to check CNPC dialogue break-ins.
void main()
{

  AddAvailableNPCByObject(NPC_BAO_DUR,GetObjectByTag("Baodur"));

  AddPartyMember(NPC_BAO_DUR,GetObjectByTag("Baodur"));

}
