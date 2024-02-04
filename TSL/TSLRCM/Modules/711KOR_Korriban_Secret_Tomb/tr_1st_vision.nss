void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 55)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 55, 1);
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	SetGlobalFadeIn(0.5, 1.5, 0.0, 0.0, 0.0);
	object oWp_1st_pc = GetObjectByTag("wp_1st_pc", 0);
	AssignCommand(oEntering, ClearAllActions());
	DelayCommand(0.2, AssignCommand(oEntering, ActionForceMoveToObject(oWp_1st_pc, 0, 1.0, 30.0)));
	SetMinOneHP(oEntering, 1);
	SetGlobalNumber("711KOR_Vision_Track", 1);
	AssignCommand(GetObjectByTag("npc_v_malak", 0), ActionStartConversation(oEntering, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	int int3 = 0;
	object o711_1st_door = GetObjectByTag("711_norm_door", int3);
	while (GetIsObjectValid(o711_1st_door)) {
		AssignCommand(o711_1st_door, ActionCloseDoor(o711_1st_door));
		SetLocked(o711_1st_door, 1);
		(int3++);
		o711_1st_door = GetObjectByTag("711_norm_door", int3);
	}
	o711_1st_door = GetObjectByTag("711_1st_door", 0);
	DelayCommand(1.5, AssignCommand(o711_1st_door, ActionCloseDoor(o711_1st_door)));
	DelayCommand(1.5, SetLocked(o711_1st_door, 1));
}