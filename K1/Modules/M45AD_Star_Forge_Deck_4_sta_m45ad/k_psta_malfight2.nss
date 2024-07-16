#include "k_inc_generic"
#include "k_inc_debug"

void main() {
	
	ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_HOSTILE_1);
	
	object oRWeap = GetItemInSlot(INVENTORY_SLOT_RIGHTWEAPON, OBJECT_SELF);
	object oSaber = GetItemPossessedBy(OBJECT_SELF, "G_W_DBLSBR001");
	
	if (GetIsObjectValid(oSaber))
		{
			if (!GetIsObjectValid(oRWeap))
				{
					ClearAllActions();
					ActionEquipItem(oSaber, INVENTORY_SLOT_RIGHTWEAPON, FALSE);
					Db_PostString("Sword valid", 10, 10, 4.0);
				}
				else
					{
						Db_PostString("Sword already in slot", 10, 10, 5.0);
					}
		}
		else
			{
				Db_PostString("Sword not valid", 10, 10, 4.0);
			}
	
	object oPC = GetFirstPC();
	
	DelayCommand(0.5, GN_DetermineCombatRound(oPC));
}
