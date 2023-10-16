void main() {
	
	ActionPauseConversation();
	
	ActionWait(4.0);
	
	ActionResumeConversation();
	
	object oObject;
	int nCnt = 1;
	
	while (nCnt <= 3)
		{
			
			SignalEvent(GetObjectByTag("man27_seljed" + IntToString(nCnt), 0), EventUserDefined(20));
			
			nCnt++;
		}
}
