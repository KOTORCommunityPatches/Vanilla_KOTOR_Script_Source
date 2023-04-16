int StartingConditional() {
	
	object oPC = GetFirstPC();
	
	return (GetLevelByClass(CLASS_TYPE_SOLDIER, oPC) > 0 && GetGender(oPC) == GENDER_MALE);
}
