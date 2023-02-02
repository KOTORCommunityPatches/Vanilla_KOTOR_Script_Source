// Prototypes
void sub1();

void sub1() {
	SwitchPlayerCharacter(0xFFFFFFFF);
}

void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		CreateItemOnObject("czerkadatapad", GetPCSpeaker(), 1, 0);
		SetGlobalBoolean("203TEL_Mainframe_Seal", 1);
	}
	if ((nParam1 == 2)) {
		DestroyObject(GetItemPossessedBy(GetPCSpeaker(), "CzerkaDatapad"), 0.0, 0, 0.0, 0);
		SetGlobalNumber("203TEL_Habat", 12);
		SetGlobalNumber("203TEL_B-4D4_PC", 0);
		SetGlobalFadeIn(0.7, 0.2, 0.0, 0.0, 0.0);
		DelayCommand(0.5, sub1());
	}
}
