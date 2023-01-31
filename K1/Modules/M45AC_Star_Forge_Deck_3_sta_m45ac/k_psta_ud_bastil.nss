#include "k_inc_debug"
#include "k_inc_endgame"

void CombatEnd(object oNPC) {
	object oPC = GetPartyMemberByIndex(0);
	object oPM1 = GetPartyMemberByIndex(1);
	object oPM2 = GetPartyMemberByIndex(2);
	CancelCombat(oNPC);
	CancelCombat(oPC);
}

void CombatSurrender(object oNPC) {
	DelayCommand(0.3, ClearAllActions());
	DelayCommand(0.4, SurrenderRetainBuffs());
	DelayCommand(0.5, CancelCombat(oNPC));
	DelayCommand(0.5, CancelCombat(OBJECT_SELF));
}

void main() {
	
	int nUser = GetUserDefinedEventNumber();

	if (nUser == 1001) // ON HEARTBEAT
		{

		}
	else if (nUser == 1002) // ON PERCEIVE
		{

		}
	else if (nUser == 1003) // ON END OF COMBAT
		{

		}
	else if (nUser == 1004) // ON DIALOGUE
		{

		}
	else if (nUser == 1005) // ON ATTACKED
		{

		}
	else if (nUser == 1006) // ON DAMAGED
		{
			int nCurHP = GetCurrentHitPoints(OBJECT_SELF);
			int nGlobal = GetGlobalNumber("Sta_BastTalk");
			object oPC = GetFirstPC();
			int nHPStart = GetCurrentHitPoints(OBJECT_SELF);
			int nMaxHP = GetMaxHitPoints(OBJECT_SELF);
			int nUser1 = nMaxHP / 2 - nHPStart;
			
			if (nCurHP <= 10 && nGlobal == 3)
				{
					CombatSurrender(oPC);
					DelayCommand(1.0, AssignCommand(GetObjectByTag("sta_bastlast_talk", 0), ActionStartConversation(OBJECT_SELF)));
				}
				else if (nCurHP <= 70 && nGlobal == 2)
					{
						CombatSurrender(oPC);
						DelayCommand(1.0, ActionStartConversation(oPC));
					}
					else if (nCurHP <= 80 && nGlobal == 1)
						{
							CombatSurrender(oPC);
							DelayCommand(1.0, ActionStartConversation(oPC));
						}
						else
							{
								Db_PostString("Current=" + IntToString(nCurHP) + " Bast=" + IntToString(nGlobal), 10, 10, 2.0);
							}
		}
	else if (nUser == 1007) // ON DEATH
		{
			SetGlobalBoolean("STA_BASTILA_DEAD", TRUE);
			
			object oPM1 = GetPartyMemberByIndex(1);
			object oPM2 = GetPartyMemberByIndex(2);
			location location1 = GetLocation(OBJECT_SELF);
			
			if (GetIsObjectValid(oPM1))
				{
					
				}
			if (GetIsObjectValid(oPM2))
				{
					
				}
			
			object oDoor1 = GetObjectByTag("k45_door_bast1", 0);
			object oDoor2 = GetObjectByTag("k45_door_bast2", 0);
			
			CreateObject(OBJECT_TYPE_WAYPOINT, "g_lastlocal", location1);
			DelayCommand(1.9, CombatEnd(OBJECT_SELF));
			SetLocked(oDoor1, FALSE);
			SetLocked(oDoor2, FALSE);
			DelayCommand(2.0, SetGlobalFadeOut(0.0, 2.0));
			AssignCommand(GetModule(), DelayCommand(3.0, ST_PlayBastilaLight()));
		}
	else if (nUser == 1008) // ON DISTURBED
		{

		}
	else if (nUser == 1009) // ON BLOCKED
		{

		}
	else if (nUser == 1010) // ON SPELL CAST AT
		{

		}
	else if (nUser == 8888)
		{
			PlayAnimation(ANIMATION_LOOPING_WORSHIP, 1.0, -1.0);
			DelayCommand(2.0, ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_PRO_FORCE_SHIELD), OBJECT_SELF));
		}
}