// Prototypes
object sub1(string stringParam1, int intParam2);

object sub1(string stringParam1, int intParam2) {
	string string1;
	if ((intParam2 == 0)) {
		string1 = ("sp_" + stringParam1);
	}
	else {
		string1 = (("sp_" + stringParam1) + IntToString(intParam2));
	}
	return CreateObject(1, stringParam1, GetLocation(GetObjectByTag(string1, 0)), 0);
}

void main() {
	SetGlobalNumber("403DXN_Camp_Visited", 1);
	int nParam1 = GetScriptParameter(1);
	object oG_mandalore;
	object oWp_mcs1_mand;
	switch (nParam1) {
		case 0:
			oG_mandalore = GetObjectByTag("zuka", 0);
			oWp_mcs1_mand = GetObjectByTag("wp_mcs1_zuka", 0);
			AssignCommand(oG_mandalore, ClearAllActions());
			SetLocalBoolean(oG_mandalore, 40, 0);
			AssignCommand(oG_mandalore, ActionJumpToObject(oWp_mcs1_mand, 1));
			oG_mandalore = GetObjectByTag("kreia", 0);
			oWp_mcs1_mand = GetObjectByTag("sp_mcs1_kreia", 0);
			if (GetIsObjectValid(oG_mandalore)) {
				AssignCommand(oG_mandalore, ClearAllActions());
				AssignCommand(oG_mandalore, ActionJumpToObject(oWp_mcs1_mand, 1));
			}
			else {
				SetGlobalBoolean("403DXN_Kreia_Spawned", 1);
				object object7 = SpawnAvailableNPC(6, GetLocation(oWp_mcs1_mand));
			}
			break;
		case 1:
			oG_mandalore = GetObjectByTag("kreia", 0);
			oWp_mcs1_mand = GetObjectByTag("wp_mcs1_kreia", 0);
			DelayCommand(1.0, AssignCommand(oG_mandalore, ActionMoveToObject(oWp_mcs1_mand, 0, 1.0)));
			break;
		case 2:
			oG_mandalore = GetObjectByTag("kreia", 0);
			oWp_mcs1_mand = GetObjectByTag("wp_mcs1_kreia2", 0);
			DelayCommand(0.3, AssignCommand(oG_mandalore, ActionMoveToObject(oWp_mcs1_mand, 0, 1.0)));
			oG_mandalore = GetObjectByTag("kex_work", 0);
			oWp_mcs1_mand = GetObjectByTag("wp_mcs1_kex", 0);
			DelayCommand(0.3, AssignCommand(oG_mandalore, ActionMoveToObject(oWp_mcs1_mand, 0, 1.0)));
			break;
		case 3:
			oG_mandalore = GetObjectByTag("kex_work", 0);
			DestroyObject(oG_mandalore, 0.0, 0, 0.0, 0);
			oG_mandalore = GetObjectByTag("g_mandalore", 0);
			AssignCommand(oG_mandalore, ClearAllActions());
			AssignCommand(oG_mandalore, ActionJumpToObject(GetObjectByTag("wp_end_mand", 0), 1));
			oG_mandalore = GetObjectByTag("zuka", 0);
			oWp_mcs1_mand = GetObjectByTag("wp_zuka", 0);
			AssignCommand(oG_mandalore, ActionJumpToObject(oWp_mcs1_mand, 1));
			SetLocalBoolean(oG_mandalore, 40, 1);
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			SetGlobalFadeIn(1.0, 0.0, 0.0, 0.0, 0.0);
			AssignCommand(GetObjectByTag("g_mandalore", 0), ActionStartConversation(GetFirstPC(), "sith_att", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			break;
		case 10:
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			SetGlobalFadeIn(1.0, 0.0, 0.0, 0.0, 0.0);
			if ((GetJournalEntry("missingm") < 50)) {
				AddJournalQuestEntry("missingm", 50, 0);
			}
			sub1("kex_work", 0);
			AurPostString("Starting mand_cs_1", 5, 5, 5.0);
			oWp_mcs1_mand = GetObjectByTag("wp_mcs1_mand", 0);
			ClearAllActions();
			ActionJumpToObject(oWp_mcs1_mand, 1);
			DelayCommand(0.5, ActionStartConversation(GetFirstPC(), "mand_cs1", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
			break;
	}
}

