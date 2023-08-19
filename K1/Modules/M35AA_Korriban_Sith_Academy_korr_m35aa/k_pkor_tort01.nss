#include "k_inc_debug"
#include "k_inc_generic"

void main() {
	
	SetGlobalNumber("KOR_TORT_END", 2);
	
	object oPC = GetFirstPC();
	
	ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_HOSTILE_1);
	
	object oSaber = GetItemPossessedBy(OBJECT_SELF, "G_W_DBLSBR002");
	
	if (GetIsObjectValid(oSaber))
		{
			ClearAllActions();
			ActionEquipItem(oSaber, INVENTORY_SLOT_RIGHTWEAPON);
			Db_PostString("Sword valid", 10, 10, 4.0);
		}
		else
			{
				Db_PostString("Sword not valid", 10, 10, 4.0);
			}
	
	DelayCommand(0.5, GN_DetermineCombatRound(oPC));
}
