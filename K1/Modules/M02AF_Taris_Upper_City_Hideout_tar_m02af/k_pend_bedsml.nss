int StartingConditional() {
	
	object oPC = GetFirstPC();
	
	return (GetLevelByClass(CLASS_TYPE_SCOUNDREL, oPC) > 0 && GetGender(oPC) == GENDER_MALE ||
			GetLevelByClass(CLASS_TYPE_SCOUT, oPC) > 0 && GetGender(oPC) == GENDER_FEMALE);
}
