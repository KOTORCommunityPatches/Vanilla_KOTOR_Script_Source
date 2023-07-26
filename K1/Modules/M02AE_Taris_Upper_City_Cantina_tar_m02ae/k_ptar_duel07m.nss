int StartingConditional() {
	
	int nGlobal = GetGlobalNumber("Tar_Duel") == 7 && GetGender(GetPCSpeaker()) == GENDER_MALE;
	
	return nGlobal;
}
