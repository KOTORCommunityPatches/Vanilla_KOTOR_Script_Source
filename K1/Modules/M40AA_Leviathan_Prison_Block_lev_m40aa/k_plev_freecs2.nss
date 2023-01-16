#include "k_inc_utility"
#include "k_inc_debug"

void AddNPCs() {
	object oBastila = GetObjectByTag("bastila", 0);
	object oCarth = GetObjectByTag("carth", 0);
	
	AddPartyMember(NPC_CARTH, oCarth);
	AddPartyMember(NPC_BASTILA, oBastila);
	
	Db_PostString("ADDED PARTY MEMBERS", 5, 5, 5.0);
}

void main() {
	
	object oWP02 = GetObjectByTag("lev40_wpequiproom", 0);
	object oWP03 = GetObjectByTag("lev40_wpequiprooma", 0);
	object oWP04 = GetObjectByTag("lev40_wpequiproomb", 0);
	object oBastila = GetObjectByTag("bastila", 0);
	object oCarth = GetObjectByTag("carth", 0);
	object oLev40_ptylocker = GetObjectByTag("lev40_ptylocker", 0);
	
	DestroyObject(oCarth, 0.0, TRUE);
	DestroyObject(oBastila, 0.0, TRUE);
	
	UT_SpawnAvailableNPC(NPC_BASTILA, GetLocation(oWP02));
	UT_SpawnAvailableNPC(NPC_CARTH, GetLocation(oWP03));
	
	DelayCommand(2.0, AddNPCs());
	
	SetGlobalFadeIn(1.0, 1.0);
}
