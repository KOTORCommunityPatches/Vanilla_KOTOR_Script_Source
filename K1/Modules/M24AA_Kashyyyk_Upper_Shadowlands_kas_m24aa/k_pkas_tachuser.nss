#include "k_inc_utility"

void PlaySFX(string sSound) {
	PlaySound(sSound);
	SetFacingPoint(GetPosition(GetPCSpeaker()));
	ActionPlayAnimation(ANIMATION_FIREFORGET_VICTORY1);
}

void main() {
	
	int nUser = GetUserDefinedEventNumber();

	if (nUser == 1001) // HEARTBEAT
		{
			object oPC = GetPartyMemberByIndex(0);
			object oPM1 = GetPartyMemberByIndex(1);
			object oPM2 = GetPartyMemberByIndex(2);
			
			if (!GetIsInConversation(OBJECT_SELF))
				{
					if (GetIsEnemy(oPC, OBJECT_SELF) == FALSE)
						{
							if (GetIsObjectValid(oPC) == TRUE && GetDistanceToObject(oPC) < 40.0)
								{
									ClearAllActions();
									ActionMoveAwayFromObject(oPC, 1, 40.0);
									PlaySound("c_tach_bat1");
								}
								else if (GetIsObjectValid(oPM1) == TRUE && GetDistanceToObject(oPM1) < 40.0)
									{
										ClearAllActions();
										ActionMoveAwayFromObject(oPM1, 1, 40.0);
										PlaySound("c_tach_bat1");
									}
									else if (GetIsObjectValid(oPM2) == TRUE && GetDistanceToObject(oPM2) < 40.0)
										{
											ClearAllActions();
											ActionMoveAwayFromObject(oPM2, 1, 40.0);
											PlaySound("c_tach_bat1");
										}
						}
				}
		}
	else if (nUser == 1002) // PERCEIVE
		{

		}
	else if (nUser == 1003) // END OF COMBAT
		{

		}
	else if (nUser == 1004) // ON DIALOGUE
		{
			if (GetGlobalNumber("k_Rulan_morph") != 4)
				{
					PlaySFX("c_tach_bat1");
				}
		}
	else if (nUser == 1005) // ATTACKED
		{

		}
	else if (nUser == 1006) // DAMAGED
		{

		}
	else if (nUser == 1007) // DEATH
		{
			if (GetGlobalNumber("k_Rulan_morph") == 4)
				{
					BarkString(OBJECT_INVALID, 42260);
				}
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
	else if (nUser == HOSTILE_RETREAT)
		{
			UT_ReturnToBase("wp_homebase");
		}
}