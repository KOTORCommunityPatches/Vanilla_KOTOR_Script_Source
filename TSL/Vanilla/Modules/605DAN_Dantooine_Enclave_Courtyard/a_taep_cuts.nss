// Prototypes
void sub2(string stringParam1, string stringParam2, int intParam3);
void sub1(string stringParam1, string stringParam2, int intParam3);

void sub2(string stringParam1, string stringParam2, int intParam3) {
	AssignCommand(GetObjectByTag(stringParam1, intParam3), ActionJumpToObject(GetObjectByTag((stringParam1 + stringParam2), 0), 1));
}

void sub1(string stringParam1, string stringParam2, int intParam3) {
	AssignCommand(GetObjectByTag(stringParam1, intParam3), ActionMoveToObject(GetObjectByTag((stringParam1 + stringParam2), 0), 1, 1.0));
}

void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			sub1("npc_taepalae", "_1", 0);
			sub1("g_salvager_tae", "_1", 0);
			sub1("g_salvager_tae2", "0_1", 0);
			sub1("g_salvager_tae2", "1_1", 1);
			break;
		case 1:
			sub1("npc_taepalae", "_2", 0);
			DelayCommand(0.5, sub1("g_salvager_tae", "_2", 0));
			DelayCommand(1.0, sub1("g_salvager_tae2", "0_2", 0));
			DelayCommand(1.5, sub1("g_salvager_tae2", "1_2", 1));
			break;
		case 2:
			sub2("npc_taepalae", "_3", 0);
			sub2("g_salvager_tae", "_3", 0);
			sub2("g_salvager_tae2", "0_3", 0);
			sub2("g_salvager_tae2", "1_3", 1);
			AssignCommand(GetFirstPC(), SetFacing(0.0));
			break;
		case 3:
			AssignCommand(GetFirstPC(), ActionForceMoveToObject(GetObjectByTag("wp_taep_pc_1", 0), 0, 1.0, 30.0));
			break;
	}
}
