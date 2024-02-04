// Prototypes
void sub4();
void sub3();
void sub2();
void sub1();

void sub4() {
	AssignCommand(OBJECT_SELF, ActionJumpToObject(GetObjectByTag("mn_bridge", 0), 1));
}

void sub3() {
	object object1 = SpawnAvailableNPC(GetGlobalNumber("351NAR_Party2"), GetLocation(GetObjectByTag("wp_start", 0)));
	AddPartyMember(GetGlobalNumber("351NAR_Party2"), object1);
	SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0);
}

void sub2() {
	SwitchPlayerCharacter(GetGlobalNumber("351NAR_Party1"));
}

void sub1() {
	AssignCommand(GetFirstPC(), ClearAllActions());
	AssignCommand(GetFirstPC(), ActionJumpToObject(GetObjectByTag("wp_start", 0), 1));
}

void main() {
	DestroyObject(GetNearestObjectByTag("gotodroids", OBJECT_SELF, 1), 0.0, 0, 0.0, 0);
	DestroyObject(GetNearestObjectByTag("gotodroids", OBJECT_SELF, 2), 0.0, 0, 0.0, 0);
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	DelayCommand(0.5, sub1());
	DelayCommand(1.0, sub2());
	DelayCommand(1.5, sub3());
	DelayCommand(3.0, sub4());
	DelayCommand(3.5, AssignCommand(GetObjectByTag("hk502", 0), ActionStartConversation(GetFirstPC(), "hk50", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}