void SetGlobal(int nGlobal) {
	SetGlobalNumber("KOR_YUTHURA1", nGlobal);
}

void main() {
	
	SetGlobal(1);
	
	object oExit = GetObjectByTag("k33_way_yuthuraexit", 0);
	
	ActionMoveToObject(oExit);
	DelayCommand(12.0, DestroyObject(OBJECT_SELF));
}