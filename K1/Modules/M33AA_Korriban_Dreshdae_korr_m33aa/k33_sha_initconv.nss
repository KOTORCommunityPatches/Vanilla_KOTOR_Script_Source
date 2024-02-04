// Likely used a Korriban include that does not exist in the shipped game files.

#include "k_inc_utility"

void SetTriggered(int bState) {
	UT_SetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01, bState);
}

int GetTriggered() {
	return UT_GetPlotBooleanFlag(OBJECT_SELF, SW_PLOT_BOOLEAN_01);
}

void StartConvo(string sNPC, string sDLG, object oWP1, object oWP2, object oWP3) {
	object oNPC = GetObjectByTag(sNPC, 0);
	object oPC = GetFirstPC();
	
	UT_RestorePartyToOneHealth();
	
	if (GetIsObjectValid(oNPC) == TRUE)
		{
			if (oPC == GetPartyMemberByIndex(0))
				{
					AssignCommand(oPC, ClearAllActions());
					AssignCommand(oNPC, ClearAllActions());
					CancelCombat(oPC);
					AssignCommand(oNPC, ActionStartConversation(oPC, sDLG, FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
				}
				else
					{
						SetGlobalFadeOut();
						SetPartyLeader(NPC_PLAYER);
						object oPM1 = GetPartyMemberByIndex(1);
						object oPM2 = GetPartyMemberByIndex(2);
						NoClicksFor(0.7);
						AssignCommand(oPC, ClearAllActions());
						AssignCommand(oNPC, ClearAllActions());
						CancelCombat(oPC);
						AssignCommand(oPC, DelayCommand(0.2, JumpToObject(oWP1)));
						AssignCommand(oPC, DelayCommand(0.4, SetFacingPoint(GetPosition(oNPC))));
						AssignCommand(oPM1, DelayCommand(0.5, JumpToObject(oWP2)));
						AssignCommand(oPM2, DelayCommand(0.5, JumpToObject(oWP3)));
						AssignCommand(oNPC, ActionDoCommand(SetGlobalFadeIn(0.5, 2.0)));
						AssignCommand(oNPC, ActionStartConversation(oPC, sDLG, FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));
					}
		}
}

void main() {
	
	object oPC = GetPartyMemberByIndex(0);
	
	if (GetEnteringObject() == oPC && GetTriggered() == FALSE)
		{
			object oShaar = GetObjectByTag("kor33_shaardan", 0);
			object oWP_PC = GetObjectByTag("KPC_PC_WAY", 0);
			object oWP_PM1 = GetObjectByTag("KPC_NPC1_WAY", 0);
			object oWP_PM2 = GetObjectByTag("KPC_NPC2_WAY", 0);
			
			AssignCommand(oShaar, ClearAllActions());
			
			StartConvo("kor33_shaardan", "", oWP_PC, oWP_PM1, oWP_PM2);
			
			SetTriggered(TRUE);
		}
}
