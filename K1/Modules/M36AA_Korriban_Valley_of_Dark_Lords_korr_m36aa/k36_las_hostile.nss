#include "k_inc_generic"
#include "k_inc_debug"

void main() {
	
	object oSaber = GetItemPossessedBy(OBJECT_SELF, "g_w_lghtsbr01");
	object oPC = GetPartyMemberByIndex(0);
	
	ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_HOSTILE_1);
	
	if (GetIsObjectValid(oSaber))
		{
			object oEqipped = GetItemInSlot(INVENTORY_SLOT_RIGHTWEAPON, OBJECT_SELF);
			
			if ((!GetIsObjectValid(oEqipped)))
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
	
	DelayCommand(0.5, GN_DetermineCombatRound(oPC));
}