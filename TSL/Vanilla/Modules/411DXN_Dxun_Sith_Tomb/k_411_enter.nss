// Prototypes
int sub1(object objectParam1);

int sub1(object objectParam1) {
	int int1 = 1;
	while ((int1 <= 3)) {
		if ((((GetClassByPosition(int1, GetFirstPC()) == 4) || (GetClassByPosition(int1, GetFirstPC()) == 3)) || (GetClassByPosition(int1, GetFirstPC()) == 5))) {
			return 1;
		}
		(int1++);
	}
	return 0;
}

void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering != GetFirstPC())) {
		return;
	}
	object oExit_door = GetObjectByTag("exit_door", 0);
	object oPC = GetFirstPC();
	object oXarga = GetObjectByTag("xarga", 0);
	DelayCommand(0.1, PlayRoomAnimation("411dxnr", 1));
	if (GetLoadFromSaveGame()) {
		return;
	}
	if (GetLocalBoolean(oExit_door, 40)) {
		return;
	}
	if ((GetTag(GetEnteringObject()) == "ritual_follower")) {
		AssignCommand(GetEnteringObject(), ActionPlayAnimation(3, 1.0, (-1.0)));
	}
	if ((GetIsObjectValid(oXarga) && GetIsObjectValid(oEntering))) {
		DelayCommand(1.0, AssignCommand(oXarga, ActionStartConversation(oPC, "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
		SetLocalBoolean(oExit_door, 40, 1);
	}
	if ((GetIsObjectValid(oEntering) && GetIsObjectValid(GetObjectByTag("taint_ds", 0)))) {
		if ((!sub1(oEntering))) {
			DestroyObject(GetObjectByTag("taint_ds", 0), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("taint_ds2", 0), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("tr_mira_talk_4", 0), 0.0, 0, 0.0, 0);
			DestroyObject(GetObjectByTag("tr_mira_talk_4", 1), 0.0, 0, 0.0, 0);
		}
	}
}
