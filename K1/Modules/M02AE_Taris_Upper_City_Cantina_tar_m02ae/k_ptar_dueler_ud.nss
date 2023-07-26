// Byte code does not match
#include "k_inc_tar"
#include "k_inc_generic"

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
			object oInvis = GetObjectByTag("k_ptar_invis_speaker", 0);
			
			Db_PostString("END OF ROUND", 5, 5, 2.0);
			
			if (GetCurrentHitPoints(GetFirstPC()) == 1 && !UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01))
				{
					Db_PostString("YOU ARE DEAD", 5, 5, 5.0);
					
					UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, TRUE);
					
					ClearAllActions();
					SurrenderToEnemies();
					SetPlotFlag(OBJECT_SELF, TRUE);
					
					SetGlobalBoolean("TAR_DUELOVER", TRUE);
					SetGlobalBoolean("TAR_DUELLOST", TRUE);
					
					AssignCommand(GetFirstPC(), ActionPlayAnimation(ANIMATION_LOOPING_DEAD, 1.0, 60.0));
					
					NoClicksFor(3.2);
					
					DelayCommand(3.0, AssignCommand(oInvis, ActionStartConversation(oInvis, "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE)));
					
					SetCommandable(FALSE, OBJECT_SELF);
				}
		}
	else if (nUser == 1004) // ON DIALOGUE
		{

		}
	else if (nUser == 1005) // ATTACKED
		{
			object oGerlon = GetObjectByTag("GerlonTwof021", 0);
			object oAttacker = GetLastAttacker(OBJECT_SELF);
			
			if (oGerlon == oAttacker)
				{
					Db_PostString("FIRING UD ATTACKED", 5, 5, 5.0);
					CancelCombat(OBJECT_SELF);
				}
		}
	else if (nUser == 1006) // DAMAGED
		{
			object oInvis = GetObjectByTag("k_ptar_invis_speaker", 0);
			
			Db_PostString("HITPOINTS-" + IntToString(GetCurrentHitPoints(OBJECT_SELF)), 5, 6, 5.0);
			
			if (GetCurrentHitPoints(OBJECT_SELF) == 1 && !UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01))
				{
					Db_PostString("FIRING UD DAMAGED", 5, 5, 5.0);
					
					UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, TRUE);
					
					ClearAllActions();
					SurrenderToEnemies();
					
					SetPlotFlag(OBJECT_SELF, TRUE);
					
					ActionPlayAnimation(ANIMATION_LOOPING_DEAD, 1.0, 360.0);
					
					if (GetGlobalBoolean("TAR_DUELINPROGRESS"))
						{
							SetGlobalNumber("Tar_Duel", GetGlobalNumber("Tar_Duel") + 1);
							SetGlobalBoolean("TAR_DUELOVER", TRUE);
							SetGlobalBoolean("TAR_DUELLOST", FALSE);
							
							NoClicksFor(3.2);
							
							DelayCommand(3.0, AssignCommand(oInvis, ActionStartConversation(oInvis, "", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE)));
							
							SetCommandable(FALSE, OBJECT_SELF);
						}
				}
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
			SurrenderToEnemies();
			ClearAllActions();
		}
	else if (nUser == 3000)
		{
			SurrenderToEnemies();
			ClearAllActions();
			ActionPlayAnimation(ANIMATION_LOOPING_PRONE, 1.0, 1000.0);
		}
	else if (nUser == 4000)
		{
			effect eEffect;
			
			UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, FALSE);
			
			eEffect = GetFirstEffect(OBJECT_SELF);
			
			while (GetIsEffectValid(eEffect))
				{
					RemoveEffect(OBJECT_SELF, eEffect);
					
					eEffect = GetNextEffect(OBJECT_SELF);
				}
			
			ActionEquipMostDamagingRanged(OBJECT_INVALID);
		}
	else if (nUser == 5000)
		{
			ClearAllActions();
			ActionPlayAnimation(ANIMATION_LOOPING_PAUSE, 1.0, 0.1);
			ActionJumpToLocation(GetGlobalLocation("TAR_DUELIST_START"));
		}
	else if (nUser == 6000)
		{
			ChangeToStandardFaction(OBJECT_SELF, STANDARD_FACTION_HOSTILE_1);
			DelayCommand(0.5, GN_DetermineCombatRound(GetFirstPC()));
		}
}
