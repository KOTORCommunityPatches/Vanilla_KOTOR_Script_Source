#include "k_inc_unk"

void main() {
	
	object oRak1 = GetObjectByTag("rakspawn1", 0);
	object oRak2 = GetObjectByTag("rakspawn2", 0);
	
	UNK_SetRedRakataHostile();
	
	CreateObject(OBJECT_TYPE_CREATURE, "g_rakatan04", GetLocation(oRak1), FALSE);
	CreateObject(OBJECT_TYPE_CREATURE, "g_rakatan05", GetLocation(oRak2), FALSE);
	DelayCommand(1.0, GN_DetermineCombatRound(OBJECT_INVALID));
}
