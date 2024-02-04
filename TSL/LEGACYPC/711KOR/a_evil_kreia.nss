struct structtype1 {
	float float1;
	float float3;
};

void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			ActionPauseConversation();
			{
				object oP_atton = SpawnAvailableNPC(0, GetLocation(GetObjectByTag("sp_atton", 0)));
				if ((!GetIsObjectValid(oP_atton))) {
					AurPostString("Atton not in party table, WTF.", 5, 18, 10.0);
				oP_atton = CreateObject(1, "p_atton", GetLocation(GetObjectByTag("sp_atton", 0)), 0);
					IncrementGlobalNumber("711KOR_Party_Count", 1);
				}
				AssignCommand(oP_atton, ClearAllActions());
				AssignCommand(oP_atton, ActionMoveToObject(GetObjectByTag("wp_atton", 0), 0, 1.0));
				AssignCommand(oP_atton, ActionDoCommand(AssignCommand(GetFirstPC(), SetFacingPoint(GetPosition(oP_atton)))));
				DelayCommand(2.0, ActionResumeConversation());
			}
			break;
		case 1:
			DelayCommand(1.0, CreatureFlourishWeapon(GetObjectByTag("Atton", 0)));
			DelayCommand(1.0, CreatureFlourishWeapon(GetObjectByTag("KreiaEvil", 0)));
			break;
		case 2:
			ActionPauseConversation();
			{
				object oP_baodur = SpawnAvailableNPC(1, GetLocation(GetObjectByTag("sp_baodur", 0)));
				if ((!GetIsObjectValid(oP_baodur))) {
					AurPostString("Bao-Dur not in party table, WTF.", 5, 18, 10.0);
				oP_baodur = CreateObject(1, "p_baodur", GetLocation(GetObjectByTag("sp_baodur", 0)), 0);
					IncrementGlobalNumber("711KOR_Party_Count", 1);
				}
				AssignCommand(oP_baodur, ClearAllActions());
				AssignCommand(oP_baodur, ActionMoveToObject(GetObjectByTag("wp_baodur", 0), 0, 1.0));
				DelayCommand(2.0, ActionResumeConversation());
			}
			break;
		case 3:
			ActionPauseConversation();
			{
				object oP_t3m4 = SpawnAvailableNPC(8, GetLocation(GetObjectByTag("sp_t3m4", 0)));
				if ((!GetIsObjectValid(oP_t3m4))) {
					AurPostString("T3 not in party table, WTF.", 5, 18, 10.0);
				oP_t3m4 = CreateObject(1, "p_t3m4", GetLocation(GetObjectByTag("sp_t3m4", 0)), 0);
					IncrementGlobalNumber("711KOR_Party_Count", 1);
				}
				AssignCommand(oP_t3m4, ClearAllActions());
				AssignCommand(oP_t3m4, ActionMoveToObject(GetObjectByTag("wp_t3m4", 0), 0, 1.0));
				DelayCommand(2.0, ActionResumeConversation());
			}
			break;
		case 4:
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			SetGlobalFadeIn(0.5, 1.5, 0.0, 0.0, 0.0);
			ActionPauseConversation();
			{
				int nValid = 0;
				object object22 = OBJECT_INVALID;
				object22 = SpawnAvailableNPC(4, GetLocation(GetObjectByTag("wp_handmaiden", 0)));
				nValid = GetIsObjectValid(object22);
				if ((!nValid)) {
				object22 = SpawnAvailableNPC(11, GetLocation(GetObjectByTag("wp_disciple", 0)));
				nValid = GetIsObjectValid(object22);
				}
				if ((!nValid)) {
				object22 = SpawnAvailableNPC(9, GetLocation(GetObjectByTag("wp_visas", 0)));
				nValid = GetIsObjectValid(object22);
				}
				if ((!nValid)) {
				object22 = SpawnAvailableNPC(7, GetLocation(GetObjectByTag("wp_mira", 0)));
				nValid = GetIsObjectValid(object22);
				}
				if ((!nValid)) {
				object22 = SpawnAvailableNPC(2, GetLocation(GetObjectByTag("wp_mandalore", 0)));
				nValid = GetIsObjectValid(object22);
				}
				DelayCommand(2.0, ActionResumeConversation());
			}
			break;
		case 5:
			DelayCommand(1.0, CreatureFlourishWeapon(GetObjectByTag("BaoDur", 0)));
			break;
		case 6:
			ChangeToStandardFaction(GetObjectByTag("KreiaEvil", 0), 1);
			ChangeToStandardFaction(GetObjectByTag("Atton", 0), 2);
			ChangeToStandardFaction(GetObjectByTag("Disciple", 0), 2);
			ChangeToStandardFaction(GetObjectByTag("T3M4", 0), 2);
			ChangeToStandardFaction(GetObjectByTag("Mira", 0), 2);
			ChangeToStandardFaction(GetObjectByTag("Handmaiden", 0), 2);
			ChangeToStandardFaction(GetObjectByTag("Mand", 0), 2);
			ChangeToStandardFaction(GetObjectByTag("BaoDur", 0), 2);
			ChangeToStandardFaction(GetObjectByTag("VisasMarr", 0), 2);
			break;
		case 7:
			ChangeToStandardFaction(GetObjectByTag("KreiaEvil", 0), 2);
			ChangeToStandardFaction(GetObjectByTag("Atton", 0), 1);
			ChangeToStandardFaction(GetObjectByTag("Disciple", 0), 1);
			ChangeToStandardFaction(GetObjectByTag("T3M4", 0), 1);
			ChangeToStandardFaction(GetObjectByTag("Mira", 0), 1);
			ChangeToStandardFaction(GetObjectByTag("Handmaiden", 0), 1);
			ChangeToStandardFaction(GetObjectByTag("Mand", 0), 1);
			ChangeToStandardFaction(GetObjectByTag("BaoDur", 0), 1);
			ChangeToStandardFaction(GetObjectByTag("VisasMarr", 0), 1);
			break;
		case 8:
			ChangeToStandardFaction(GetObjectByTag("KreiaEvil", 0), 1);
			ChangeToStandardFaction(GetObjectByTag("Atton", 0), 1);
			ChangeToStandardFaction(GetObjectByTag("Disciple", 0), 1);
			ChangeToStandardFaction(GetObjectByTag("T3M4", 0), 1);
			ChangeToStandardFaction(GetObjectByTag("Mira", 0), 1);
			ChangeToStandardFaction(GetObjectByTag("Handmaiden", 0), 1);
			ChangeToStandardFaction(GetObjectByTag("Mand", 0), 1);
			ChangeToStandardFaction(GetObjectByTag("BaoDur", 0), 1);
			ChangeToStandardFaction(GetObjectByTag("VisasMarr", 0), 1);
			break;
	}
}

