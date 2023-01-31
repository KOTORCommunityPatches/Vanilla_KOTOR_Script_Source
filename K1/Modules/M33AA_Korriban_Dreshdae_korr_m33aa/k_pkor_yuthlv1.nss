void SetGlobal(int nGlobal) {
	SetGlobalNumber("KOR_YUTHURA1", nGlobal);
}

void main() {
	
	SetGlobal(3);
	
	object oWP01 = GetObjectByTag("K33_WAY_K35", 0);
	object oWP02 = GetObjectByTag("K33_WAY_SITH2", 0);
	object oExit = GetObjectByTag("k33_way_yuthuraexit", 0);
	location lSpwn01 = GetLocation(oWP01);
	location lSpwn02 = GetLocation(oWP02);
	
	CreateObject(OBJECT_TYPE_CREATURE, "k33_cre_sithgrd", lSpwn01);
	CreateObject(OBJECT_TYPE_CREATURE, "k33_cre_sithgrd", lSpwn02);
	
	ActionMoveToObject(oExit);
	DelayCommand(12.0, DestroyObject(OBJECT_SELF));
}