void main() {
	
	object oDatapad = GetObjectByTag("datapad", 0);
	object oExitWP = GetObjectByTag("k35_way_entrance", 0);
	
	SetGlobalNumber("KOR_DANEL", 4);
	
	ActionTakeItem(oDatapad, GetPCSpeaker());
	
	ActionMoveToObject(oExitWP, 1, 1.0);
	ActionDoCommand(DestroyObject(OBJECT_SELF, 0.0, TRUE));
	SetCommandable(FALSE, OBJECT_SELF);
}