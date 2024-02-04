#include "k_inc_generic"
#include "k_inc_tar"

void main() {
	
	int nUser = GetUserDefinedEventNumber();
	
	if (nUser == 1001) // HEARTBEAT
		{

		}
	else if (nUser == 1002) // PERCEIVE
		{

		}
	else if (nUser == 1003) // END OF COMBAT
		{

		}
	else if (nUser == 1004) // ON DIALOGUE
		{

		}
	else if (nUser == 1005) // ATTACKED
		{

		}
	else if (nUser == 1006) // DAMAGED
		{

		}
	else if (nUser == 1007) // DEATH
		{

		}
	else if (nUser == 1008) // DISTURBED
		{

		}
	else if (nUser == 1009) // BLOCKED
		{

		}
	else if (nUser == 1010) // SPELL CAST AT
		{

		}
	else if (nUser == 2000)
		{
			object oGuard = GetObjectByTag("tar03_bastguard", 0);
			object oVulkar = GetObjectByTag("tar03_vulkguard", 0);
			object oSword;
			
			ClearAllActions();
			
			ActionUseTalentOnObject(TalentSpell(FORCE_POWER_SLOW), oGuard);
			DelayCommand(0.5, ApplyEffectToObject(DURATION_TYPE_TEMPORARY, EffectForcePushTargeted(GetLocation(OBJECT_SELF)), oGuard, 0.5));
			DelayCommand(0.5, ApplyEffectToObject(DURATION_TYPE_TEMPORARY, EffectForcePushTargeted(GetLocation(OBJECT_SELF)), oVulkar, 0.5));
			DelayCommand(0.5, DestroyObject(GetItemInSlot(INVENTORY_SLOT_RIGHTWEAPON, oGuard), 0.0, TRUE));
			
			oSword = CreateObject(OBJECT_TYPE_ITEM, "G_w_Vbroshort01", GetLocation(GetObjectByTag("tar03_wpsword", 0)));
			
			if (GetIsObjectValid(oSword))
				{
					Db_PostString("PICKING UP SWORD", 5, 5, 5.0);
				}
			
			ActionPlayAnimation(ANIMATION_LOOPING_GET_LOW, 1.0, 3.0);
			DelayCommand(1.0, SetDialogPlaceableCamera(9));
			DelayCommand(3.0, DestroyObject(oSword));
			ActionEquipItem(GetItemPossessedBy(OBJECT_SELF, "G_w_Vbroshort01"), INVENTORY_SLOT_RIGHTWEAPON, FALSE);
		}
	else if (nUser == 3000)
		{
			ClearAllActions();
			ActionEquipMostDamagingMelee();
		}
	else if (nUser == HOSTILE_RETREAT)
		{
			UT_ReturnToBase("wp_homebase");
		}
}
