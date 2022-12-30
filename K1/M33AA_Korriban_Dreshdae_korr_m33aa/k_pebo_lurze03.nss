void GoToExit() {
	
	object oWP_5th = GetObjectByTag("k33a_way_lurze", 0);
	object oWP_4th = GetObjectByTag("k33a_way_shaarda", 0);
	object oWP_3rd = GetObjectByTag("k33a_way_shaar2", 0);
	object oWP_2nd = GetObjectByTag("k33a_way_shaar3", 0);
	object oWP_1st = GetObjectByTag("k33a_way_shaar4", 0);
	
	ClearAllActions();
	ActionMoveToObject(oWP_1st, TRUE);
	ActionMoveToObject(oWP_2nd, TRUE);
	ActionMoveToObject(oWP_3rd, TRUE);
	ActionMoveToObject(oWP_4th, TRUE);
	ActionMoveToObject(oWP_5th, TRUE);
	ActionDoCommand(DestroyObject(OBJECT_SELF, 0.0, TRUE));
	SetCommandable(0, OBJECT_SELF);
}

void main() {
	GoToExit();
}
