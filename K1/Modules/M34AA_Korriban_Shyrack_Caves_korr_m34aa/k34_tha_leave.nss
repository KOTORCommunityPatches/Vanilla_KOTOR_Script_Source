// Original could not recompile. DeNCS failed to declare EventUserDefined as an event.

void main() {
	
	object oRebel1 = GetObjectByTag("kor34_sithrebel1", 0);
	object oRebel2 = GetObjectByTag("kor34_sithrebel2", 0);
	object oExit = GetObjectByTag("K34_WAY_K33", 0);
	event eUser = EventUserDefined(34);
	
	SignalEvent(oRebel1, eUser);
	DelayCommand(1.0, SignalEvent(oRebel2, eUser));
	
	ActionMoveToObject(oExit, TRUE, 1.0);
	ActionDoCommand(DestroyObject(OBJECT_SELF));
	SetCommandable(FALSE, OBJECT_SELF);
	
	SetGlobalNumber("KOR_RENEGADE_DEAL", 1);
}
