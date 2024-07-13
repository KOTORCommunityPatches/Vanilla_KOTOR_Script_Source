// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.

void main() {
	
	object oDrain = GetNearestObjectByTag("sta_malak_drain", OBJECT_SELF, 1);
	int nCurHP = GetCurrentHitPoints(OBJECT_SELF);
	int nCurFP = GetCurrentForcePoints(OBJECT_SELF);
	object oInvis1 = GetNearestObjectByTag("sta_jedi_conv", OBJECT_SELF, 1);
	int nGlobal = GetGlobalNumber("STA_MALAK_JEDI");
	object oPC = GetFirstPC();
	object oInvis2 = GetObjectByTag("sta_invis_conv_2", 0);
	string sName = GetName(oDrain);
	object oCaptive = GetObjectByTag("sta_plc_captive" + sName, 0);
	
	if (GetIsObjectValid(oDrain)
		{
			if (GetDistanceToObject(oDrain) <= 5.0)
				{
					AssignCommand(oPC, ClearAllActions());
					AssignCommand(oInvis1, ActionStartConversation(oInvis1, "", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE));
				}
				else
					{
						ActionMoveToObject(oDrain, 1, 1.0);
					}
		}
		else if (nCurHP <= 10 && !GetIsInConversation(OBJECT_SELF))
			{
				DelayCommand(1.0, AssignCommand(oInvis2, ActionStartConversation(oInvis2, "", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE)));
			}
}
