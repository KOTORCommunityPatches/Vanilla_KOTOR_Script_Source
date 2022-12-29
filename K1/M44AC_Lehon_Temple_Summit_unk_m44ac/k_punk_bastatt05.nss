// Globals
	int intGLOB_1 = 0;
	int intGLOB_2 = 1;
	int intGLOB_3 = 2;
	int intGLOB_4 = 3;
	int intGLOB_5 = 4;
	int intGLOB_6 = 5;
	int intGLOB_7 = 6;
	int intGLOB_8 = 7;
	int intGLOB_9 = 8;
	int intGLOB_10 = 9;
	int intGLOB_11 = 10;
	int intGLOB_12 = 11;
	int intGLOB_13 = 12;
	int intGLOB_14 = 13;
	int intGLOB_15 = 14;
	int intGLOB_16 = 15;
	int intGLOB_17 = 16;
	int intGLOB_18 = 17;
	int intGLOB_19 = 18;
	int intGLOB_20 = 19;
	int intGLOB_21 = 1100;
	int intGLOB_22 = (-6);
	int intGLOB_23 = (-5);
	int intGLOB_24 = (-4);
	int intGLOB_25 = (-2);
	int intGLOB_26 = (-1);
	int intGLOB_27 = 0;

// Prototypes
void sub1(object objectParam1, location locationParam2);

void sub1(object objectParam1, location locationParam2) {
	if ((!GetIsObjectValid(objectParam1))) {
		return;
	}
	if ((GetCurrentHitPoints(objectParam1) < 1)) {
		ApplyEffectToObject(0, EffectResurrection(), objectParam1, 0.0);
		ApplyEffectToObject(0, EffectHeal(1), objectParam1, 0.0);
	}
	SetCommandable(1, objectParam1);
	AssignCommand(objectParam1, ClearAllActions());
	AssignCommand(objectParam1, ActionJumpToLocation(locationParam2));
}

void main() {
	if (GetIsObjectValid(GetObjectByTag("Jolee", 0))) {
		AddPartyMember(4, GetObjectByTag("Jolee", 0));
	}
	if (GetIsObjectValid(GetObjectByTag("Juhani", 0))) {
		AddPartyMember(5, GetObjectByTag("Juhani", 0));
	}
	ActionPauseConversation();
	ActionJumpToLocation(GetLocation(GetObjectByTag("bastend", 0)));
	AssignCommand(GetPartyMemberByIndex(0), sub1(GetPartyMemberByIndex(0), GetLocation(GetObjectByTag("playerend", 0))));
	AssignCommand(GetPartyMemberByIndex(1), sub1(GetPartyMemberByIndex(1), GetLocation(GetObjectByTag("joleeend", 0))));
	AssignCommand(GetPartyMemberByIndex(2), sub1(GetPartyMemberByIndex(2), GetLocation(GetObjectByTag("juhaniend", 0))));
	ApplyEffectToObject(0, EffectHeal(100), OBJECT_SELF, 0.0);
	ActionWait(3.0);
	ActionResumeConversation();
}
