void main() {
	
	object oWP = GetObjectByTag("k35_way_torturer", 0);
	
	ActionMoveToObject(oWP);
	SetCommandable(FALSE, OBJECT_SELF);
}
