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
	object oWallt_ring = GetObjectByTag("wallt_ring", 0);
	object oKreia;
	object oWp_bed_pc;
	SetLocalBoolean(GetObjectByTag("203_Bed", 0), 30, 0);
	SoundObjectPlay(oWallt_ring);
	oKreia = GetObjectByTag("atton", 0);
	oWp_bed_pc = GetWaypointByTag("wp_bed_atton");
	AssignCommand(oKreia, ActionJumpToObject(oWp_bed_pc, 1));
	oKreia = GetObjectByTag("kreia", 0);
	oWp_bed_pc = GetWaypointByTag("wp_bed_kreia");
	AssignCommand(oKreia, ActionPlayAnimation(19, 1.0, 1.0));
	AssignCommand(oKreia, ActionJumpToObject(oWp_bed_pc, 1));
	oWp_bed_pc = GetWaypointByTag("wp_bed_pc");
	AssignCommand(GetFirstPC(), ActionJumpToObject(oWp_bed_pc, 1));
	SetLocalBoolean(GetObjectByTag("atton", 0), 39, 1);
	object oComputerPanel = GetObjectByTag("ComputerPanel", 0);
	AssignCommand(GetFirstPC(), ClearAllActions());
	DelayCommand(30.0, AssignCommand(GetFirstPC(), sub1()));
}

