// Prototypes
void sub2();
void sub1();

void sub2() {
	object oDarthSion = GetObjectByTag("DarthSion", 0);
	AssignCommand(oDarthSion, ClearAllActions());
	AssignCommand(oDarthSion, ActionStartConversation(GetFirstPC(), "903kreia", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	SetNPCSelectability(1, 0);
}

void sub1() {
	SwitchPlayerCharacter((-1));
}

void main() {
	if ((GetEnteringObject() == GetFirstPC())) {
		if (((!GetLocalBoolean(OBJECT_SELF, 30)) && GetGlobalBoolean("MAL_TURNINTO_REMOTE"))) {
			SetGlobalBoolean("MAL_TURNINTO_REMOTE", 0);
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			SetFadeUntilScript();
			sub1();
			DelayCommand(1.0, sub2());
			SetLocalBoolean(OBJECT_SELF, 30, 1);
		}
	}
}