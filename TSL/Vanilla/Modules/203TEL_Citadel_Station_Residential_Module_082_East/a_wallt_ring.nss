// Prototypes
void sub1();

void sub1() {
	if ((!GetLocalBoolean(GetObjectByTag("203_Bed", 0), 30))) {
		if (GetLocalBoolean(GetObjectByTag("atton", 0), 39)) {
			AssignCommand(GetObjectByTag("atton", 0), ClearAllActions());
			AssignCommand(GetObjectByTag("atton", 0), ActionStartConversation(GetFirstPC(), "203Atton", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
}

void main() {
	object oAtton;
	object oKreia;
	object oWp_bed_pc;
	object oPC = GetFirstPC();
	SetLocalBoolean(GetObjectByTag("203_Bed", 0), 30, 0);
	oAtton = GetObjectByTag("atton", 0);
	oWp_bed_pc = GetWaypointByTag("wp_bed_atton");
	AssignCommand(oAtton, ClearAllActions());
	AssignCommand(oAtton, ActionJumpToObject(oWp_bed_pc, 1));
	oKreia = GetObjectByTag("kreia", 0);
	oWp_bed_pc = GetWaypointByTag("wp_bed_kreia");
	AssignCommand(oKreia, ClearAllActions());
	AssignCommand(oKreia, ActionPlayAnimation(19, 1.0, 1.0));
	AssignCommand(oKreia, ActionJumpToObject(oWp_bed_pc, 1));
	oWp_bed_pc = GetWaypointByTag("wp_bed_pc");
	AssignCommand(oPC, ClearAllActions());
	AssignCommand(oPC, ActionJumpToObject(oWp_bed_pc, 1));
	SetLocalBoolean(oAtton, 39, 1);
	object oComputerPanel = GetObjectByTag("ComputerPanel", 0);
	DelayCommand(1.0, AssignCommand(oPC, ClearAllActions()));
	DelayCommand(30.0, AssignCommand(oPC, sub1()));
}
