// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.

void main() {
	
	object oEntering = GetEnteringObject();
	object oMalak = GetObjectByTag("sta_45darthMalak", 0);
	object oInvis1 = GetNearestObjectByTag("sta_jedi_conv", OBJECT_SELF, 1);
	object oPC = GetFirstPC();
	object oInvis2 = GetObjectByTag("sta_invis_conv_2", 0);
	int nCaptive = GetGlobalNumber("STA_MALAK_JEDI");
	int nDrain = GetGlobalBoolean("STA_MALAK_DRAIN");
	
	if (oEntering == oMalak)
		{
			if (nDrain == 1)
			{
				DelayCommand(0.4, AssignCommand(oPC, ClearAllActions()));
				DelayCommand(0.5, CancelCombat(oPC));
				
				if (nCaptive == 0)
					{
						DelayCommand(0.5, AssignCommand(oInvis2, ActionStartConversation(oInvis2, "", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE)));
					}
					else
						{
							DelayCommand(0.5, AssignCommand(oInvis1, ActionStartConversation(oInvis1, "", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE)));
						}
			}
		}
}
