// Prototypes
void sub2();
void sub1();

void sub2() {
	object oHK47 = GetObjectByTag("HK47", 0);
	object oPC = GetFirstPC();
	AssignCommand(oHK47, ClearAllActions());
	AssignCommand(oHK47, ActionStartConversation(oPC, "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

void sub1() {
	object oWP_CREATE_HK47 = GetObjectByTag("WP_CREATE_HK47", 0);
	CreateObject(1, "p_hk47", GetLocation(oWP_CREATE_HK47), 0);
}

void main() {
	SetGlobalFadeOut(0.5, 1.0, 0.0, 0.0, 0.0);
	DelayCommand(0.5, sub1());
	SetGlobalNumber("000_HK_Alive", 1);
	DelayCommand(0.8, sub2());
}
