#include "k_inc_generic"
#include "k_inc_debug"

void SetShardNum(int nGlobal) {
	SetGlobalNumber("KOR33_SHAARDAN", nGlobal);
}

void main() {
	
	object oSpeaker = GetPCSpeaker();
	
	ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_HOSTILE_1);
	
	object oSword = GetItemPossessedBy(OBJECT_SELF, "G_w_VbrDblswd01");
	
	if (GetIsObjectValid(oSword))
		{
			ClearAllActions();
			ActionEquipItem(oSword, INVENTORY_SLOT_RIGHTWEAPON, FALSE);
			Db_PostString("Sword valid", 10, 10, 4.0);
		}
		else
			{
				Db_PostString("Sword not valid", 10, 10, 4.0);
			}
	
	DelayCommand(0.5, GN_DetermineCombatRound(oSpeaker));
	
	SetShardNum(4);
	
	Db_PostString("Shaardan Hostile", 8, 8, 10.0);
}