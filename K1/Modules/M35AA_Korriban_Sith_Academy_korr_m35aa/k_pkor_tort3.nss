void main() {
	
	SetGlobalNumber("KOR_TORT_END", 3);
	
	object oWP = GetObjectByTag("k35_way_entrance", 0);
	
	ActionMoveToObject(oWP, TRUE, 1.0);
	ActionDoCommand(DestroyObject(OBJECT_SELF));
	SetCommandable(FALSE, OBJECT_SELF);
}
