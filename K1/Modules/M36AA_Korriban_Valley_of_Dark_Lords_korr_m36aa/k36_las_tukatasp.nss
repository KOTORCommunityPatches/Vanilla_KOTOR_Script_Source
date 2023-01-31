#include "k_inc_debug"

void ToggleAI(int nIndex, int nState) {
	SetLocalBoolean(OBJECT_SELF, nIndex, nState);
}

void main() {
	
	object oPC = GetFirstPC();
	object oTukQueen = GetObjectByTag("kor36_tukataquee", 0);
	object oTukMook1 = GetObjectByTag("kor36_tukatahen1", 0);
	object oTukMook2 = GetObjectByTag("kor36_tukatahen2", 0);
	object oSaber = GetItemPossessedBy(OBJECT_SELF, "g_w_lghtsbr01");
	
	SetPlotFlag(OBJECT_SELF, TRUE);
	
	ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_FRIENDLY_1);
	
	ChangeToStandardFaction(oTukQueen, STANDARD_FACTION_HOSTILE_1);
	ChangeToStandardFaction(oTukMook1, STANDARD_FACTION_HOSTILE_1);
	ChangeToStandardFaction(oTukMook2, STANDARD_FACTION_HOSTILE_1);
	
	AssignCommand(oTukQueen, ActionAttack(oPC));
	AssignCommand(oTukMook2, ActionAttack(oPC));
	
	if (GetIsObjectValid(oSaber))
		{
			object oEquipped = GetItemInSlot(INVENTORY_SLOT_RIGHTWEAPON, OBJECT_SELF);
			
			if ((!GetIsObjectValid(oEquipped)))
				{
					ClearAllActions();
					ActionEquipItem(oSaber, INVENTORY_SLOT_RIGHTWEAPON);
					
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
	
	DelayCommand(0.5, ActionAttack(oTukMook1));
}