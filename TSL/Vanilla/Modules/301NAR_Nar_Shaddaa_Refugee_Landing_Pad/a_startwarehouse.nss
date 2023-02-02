// Prototypes
void sub1();

void sub1() {
	AddAvailableNPCByTemplate(8, "p_t3m4");
	SwitchPlayerCharacter(8);
}

void main() {
	object oWp_t3m4_sp = GetWaypointByTag("wp_t3m4_sp");
	SetGlobalBoolean("303NAR_T3M4_Solo", 1);
	if ((GetGlobalNumber("300NAR_T3M4") < 2)) {
		SetGlobalNumber("300NAR_T3M4", 1);
	}
	SetGlobalFadeOut(1.0, 1.0, 0.0, 0.0, 0.0);
	DelayCommand(1.5, sub1());
	DelayCommand(2.0, AssignCommand(GetFirstPC(), ActionJumpToObject(oWp_t3m4_sp, 0)));
}
