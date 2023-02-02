// Prototypes
void sub6();
void sub5();
void sub4();
void sub3(string stringParam1);
void sub2();
void sub1();

void sub6() {
	SwitchPlayerCharacter(0xFFFFFFFF);
}

void sub5() {
	SwitchPlayerCharacter(10);
}

void sub4() {
	CreateObject(1, "p_mira001", GetLocation(GetWaypointByTag("WP_JMP_PC_MIRA")), 0);
}

void sub3(string stringParam1) {
	object object1 = GetObjectByTag(stringParam1, 0);
	if (GetIsObjectValid(object1)) {
		DestroyObject(object1, 0.0, 1, 0.0, 0);
	}
	else {
		AurPostString((("a_305switch: " + stringParam1) + " does not exist."), 5, 5, 2.0);
	}
}

void sub2() {
	SwitchPlayerCharacter(7);
}

void sub1() {
	CreateObject(1, "p_hanharr002", GetLocation(GetWaypointByTag("WP_JMP_PC_HAN")), 0);
}

void main() {
	int nParam1 = GetScriptParameter(1);
	object oMira = GetObjectByTag("Mira", 0);
	object oHanharr = GetObjectByTag("Hanharr", 0);
	object oVisquis = GetObjectByTag("Visquis", 0);
	if ((nParam1 == 0)) {
		SetNPCSelectability(7, 1);
		NoClicksFor(1.5);
		DelayCommand(0.5, sub1());
		DelayCommand(0.5, sub2());
		DelayCommand(1.0, sub3("Hanharr"));
		DelayCommand(1.0, sub3("Mira"));
		SetGlobalFadeIn(1.5, 1.0, 0.0, 0.0, 0.0);
	}
	if ((nParam1 == 1)) {
		AddAvailableNPCByTemplate(10, "p_hanharr");
		RemoveAvailableNPC(7);
		NoClicksFor(1.5);
		DelayCommand(0.5, sub4());
		DelayCommand(0.5, sub5());
		DelayCommand(1.0, sub3("Hanharr"));
		DelayCommand(1.0, sub3("Mira"));
		SetGlobalFadeIn(1.5, 1.0, 0.0, 0.0, 0.0);
	}
	if ((nParam1 == 2)) {
		DelayCommand(0.5, AssignCommand(oVisquis, ActionJumpToLocation(GetLocation(GetWaypointByTag("WP_JMP_PC_MIRA")))));
		DelayCommand(1.0, sub6());
		DelayCommand(1.5, AssignCommand(GetFirstPC(), ClearAllActions()));
		DelayCommand(1.5, AssignCommand(GetFirstPC(), ActionStartConversation(GetObjectByTag("HighSecurityDoorInterior", 0), "pcenter", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	}
}
