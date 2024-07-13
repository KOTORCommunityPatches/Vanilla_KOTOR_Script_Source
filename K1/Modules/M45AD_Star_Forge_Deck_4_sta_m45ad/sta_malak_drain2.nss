// Byte code does not match. Original appears to use an earlier version of ActionStartConversation with one less input variable.

void main() {
	
	object oCaptive = GetNearestObjectByTag("sta_jedi_conv", OBJECT_SELF, 1);
	object oDrain = GetNearestObjectByTag("sta_malak_drain", OBJECT_SELF, 1);
	object oMalak = GetObjectByTag("sta_45darthMalak", 0);
	object oPC = GetFirstPC();
	int nTalk = GetGlobalNumber("STA_MALAK_TALK");
	int nDrain = GetGlobalBoolean("STA_MALAK_DRAIN");
	
	if (nDrain == 1 && GetIsObjectValid(oDrain))
		{
			if (GetDistanceToObject(oDrain) > 2.0)
				{
					AssignCommand(oMalak, ActionMoveToObject(oDrain, TRUE));
				}
				else if (!GetIsInConversation(oCaptive))
					{
						AssignCommand(oPC, ClearAllActions());
						AssignCommand(oCaptive, ActionStartConversation(oCaptive, "", FALSE, CONVERSATION_TYPE_CINEMATIC, FALSE));
					}
		}
}
