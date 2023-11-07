void main() {
	
	object oPLC = GetNearestObjectByTag("tar08_ceilingfall", OBJECT_SELF, 1);
	object oPM;
	object oWP;
	int nIdx;
	int bResume = FALSE;
	
	nIdx = 0;
	
	while (nIdx < GetPartyMemberCount())
		{
			oPM = GetPartyMemberByIndex(nIdx);
			
			if (GetDistanceBetween(oPM, OBJECT_SELF) < 10.0)
				{
					oWP = GetNearestObjectByTag("tar08_wpflee", oPM, 1);
					
					SetCommandable(TRUE, oPM);
					AssignCommand(oPM, ClearAllActions());
					AssignCommand(oPM, ActionMoveToLocation(GetLocation(oWP), TRUE));
					
					bResume = TRUE;
				}
			
			nIdx++;
		}
	
	if (bResume)
		{
			ActionPauseConversation();
			ActionWait(3.0);
			ActionResumeConversation();
		}
}
