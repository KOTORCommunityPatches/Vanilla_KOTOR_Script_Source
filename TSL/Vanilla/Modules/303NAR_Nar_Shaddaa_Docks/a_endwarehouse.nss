// Prototypes
void sub1();

void sub1() {
	object oWp_t3m4_whend = GetWaypointByTag("wp_t3m4_whend");
	SwitchPlayerCharacter(0);
	CreateObject(1, "p_t3m4", GetLocation(oWp_t3m4_whend), 0);
}

void main() {
	SetGlobalBoolean("303NAR_T3M4_Solo", 0);
	SetGlobalNumber("303NAR_Got_Codes", 1);
	SetGlobalNumber("303NAR_T3_Mission", 1);
	object oWp_t3m4_whend = GetWaypointByTag("wp_t3m4_whend");
	SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
	SetFadeUntilScript();
	AssignCommand(GetPartyLeader(), ClearAllActions());
	DelayCommand(1.5, AssignCommand(GetPartyLeader(), ActionJumpToObject(oWp_t3m4_whend, 0)));
	DelayCommand(1.9, sub1());
	DelayCommand(2.0, SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0));
	object oMira;
	string string1;
	if ((GetGlobalNumber("303NAR_Hanharr_Side") > 0)) {
		oMira = GetObjectByTag("Hanharr", 0);
		string1 = "hanapt";
	}
	else {
		oMira = GetObjectByTag("Mira", 0);
		string1 = "miraapt";
	}
	DelayCommand(2.8, AssignCommand(oMira, ClearAllActions()));
	DelayCommand(2.8, AssignCommand(GetFirstPC(), ClearAllActions()));
	DelayCommand(3.0, AssignCommand(oMira, ActionStartConversation(GetFirstPC(), string1, 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}
