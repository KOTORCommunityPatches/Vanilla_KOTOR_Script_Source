// Prototypes
void sub1();

void sub1() {
	SwitchPlayerCharacter(0xFFFFFFFF);
	AddPartyMember(0, GetObjectByTag("atton", 0));
	object object2 = SpawnAvailableNPC(6, GetLocation(GetObjectByTag("WP_DRDITH1", 0)));
	AddPartyMember(6, object2);
}

void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		CreateItemOnObject("czerkadatapad", GetPCSpeaker(), 1, 0);
	}
	else {
		if ((nParam1 == 2)) {
			if (GetIsXBox()) {
				DestroyObject(GetItemPossessedBy(GetPCSpeaker(), "CzerkaDatapad"), 0.0, 0, 0.0, 0);
				SetGlobalNumber("203TEL_Habat", 12);
				SetGlobalNumber("203TEL_B-4D4_PC", 0);
				SetGlobalNumber("203TEL_T1N1_Done", 2);
				SetGlobalFadeIn(0.7, 0.2, 0.0, 0.0, 0.0);
				SetGlobalBoolean("203TEL_Mainframe_Seal", 1);
				DelayCommand(0.5, sub1());
				RemoveAvailableNPC(1);
				DelayCommand(1.0, AssignCommand(GetObjectByTag("203_Habat", 0), ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
			}
			else {
				DestroyObject(GetItemPossessedBy(GetPCSpeaker(), "CzerkaDatapad"), 0.0, 0, 0.0, 0);
				SetGlobalNumber("203TEL_Habat", 12);
				SetGlobalNumber("203TEL_B-4D4_PC", 0);
				SetGlobalNumber("203TEL_T1N1_Done", 2);
				SetGlobalFadeIn(0.7, 0.2, 0.0, 0.0, 0.0);
				SetGlobalBoolean("203TEL_Mainframe_Seal", 1);
				MusicBackgroundChangeDay(GetArea(OBJECT_SELF), 15, 0);
				MusicBackgroundChangeNight(GetArea(OBJECT_SELF), 15, 0);
				RemoveAvailableNPC(1);
				sub1();
			}
		}
	}
}

