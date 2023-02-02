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
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if ((GetGlobalNumber("500OND_DarkSide_Iziz") == 1)) {
		if ((!GetLocalBoolean(GetObjectByTag("To_504", 0), 42))) {
			SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
			SetFadeUntilScript();
			object oWp_no_exit_npc1 = GetObjectByTag("wp_no_exit_npc1", 0);
			object oNPC = GetPartyMemberByIndex(0);
			if (GetIsObjectValid(oNPC)) {
				AssignCommand(oNPC, ClearAllActions());
				AssignCommand(oNPC, ActionJumpToLocation(GetLocation(oWp_no_exit_npc1)));
			}
			SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0);
			DelayCommand(0.1, AssignCommand(GetFirstPC(), ClearAllActions()));
			DelayCommand(0.1, AssignCommand(GetFirstPC(), ActionBarkString(128414)));
		}
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 40, 1);
	object object10 = sub1("npc_bostuco", 0);
	object oWp_cs_bostuco = GetObjectByTag("wp_cs_bostuco", 0);
	AssignCommand(object10, ActionMoveToObject(oWp_cs_bostuco, 1, 1.0));
	DelayCommand(0.1, AssignCommand(object10, ActionStartConversation(GetFirstPC(), "cs_tal_3", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}
