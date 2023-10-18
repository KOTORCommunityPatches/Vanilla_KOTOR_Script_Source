void main() {
	
	int nCnt;
	object oDoor = GetObjectByTag("man28ac_door01", nCnt);
	
	while (GetIsObjectValid(oDoor))
		{
			SetLocked(oDoor, TRUE);
			AssignCommand(oDoor, ActionCloseDoor(oDoor));
			
			nCnt++;
			
			oDoor = GetObjectByTag("man28ac_door01", nCnt);
		}
	
	SetPlotFlag(OBJECT_SELF, FALSE);
	
	ActionPauseConversation();
	ActionWait(2.0);
	ActionResumeConversation();
	
	DelayCommand(2.0, SetDialogPlaceableCamera(3));
}
