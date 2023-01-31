void main() {
	
	object oYuthura = GetObjectByTag("kor39_yuthura", 0);
	object oWP_Uthar = GetObjectByTag("k39_way_uthar", 0);
	object oWP_Yuthura = GetObjectByTag("k39_way_yuthura", 0);
	object oDoor = GetObjectByTag("k39_door_uthar", 0);
	
	SetGlobalNumber("KOR_FINAL_TEST", 1);
	
	SetLocked(oDoor, FALSE);
	
	AssignCommand(oYuthura, ActionMoveToObject(oWP_Yuthura));
	AssignCommand(oYuthura, ActionDoCommand(SetFacing(DIRECTION_EAST)));
	
	DelayCommand(0.5, ActionMoveToObject(oWP_Uthar));
	DelayCommand(2.0, ActionDoCommand(SetFacing(DIRECTION_EAST)));
}