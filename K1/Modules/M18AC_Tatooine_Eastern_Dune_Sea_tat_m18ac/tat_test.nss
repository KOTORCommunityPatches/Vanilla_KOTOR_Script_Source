#include "k_inc_utility"

void main() {
	
	object oInvis1 = GetObjectByTag("tat_invis_talker", 0);
	object oInvis2 = GetObjectByTag("tat_invis_talker2", 0);
	object oEntering = GetEnteringObject();
	int nCaloState = GetGlobalBoolean("TAT_CALO_TRIGGER_SET");
	int nBandState = GetGlobalBoolean("TAT_BANDON_TRIG_SET");
	int nCaloTriggered = GetLocalBoolean(OBJECT_SELF, SW_PLOT_BOOLEAN_02);
	int nBandTriggered = GetLocalBoolean(OBJECT_SELF, SW_PLOT_BOOLEAN_03);
	
	if (GetIsPC(oEntering) && nCaloState != FALSE && nCaloTriggered == FALSE)
		{
			SetGlobalBoolean("TAT_CALO_TRIGGER_SET", FALSE);
			
			AssignCommand(oInvis1, ActionStartConversation(OBJECT_SELF, "", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE));
			
			SetLocalBoolean(OBJECT_SELF, SW_PLOT_BOOLEAN_02, TRUE);
		}
		else if (GetIsPC(oEntering) && nBandState != FALSE && nBandTriggered == FALSE)
			{
				oInvis1 = GetObjectByTag("tat_bandon_talker", 0);
				
				SetGlobalBoolean("TAT_BANDON_TRIG_SET", FALSE);
				
				AssignCommand(oInvis2, ActionStartConversation(OBJECT_SELF, "", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE));
				
				SetLocalBoolean(OBJECT_SELF, SW_PLOT_BOOLEAN_03, TRUE);
			}
}