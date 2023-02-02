void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 40, 1);
	AurPostString("tr_att_rep: entering..", 5, 5, 5.0);
	object object3 = SpawnAvailableNPC(0, GetLocation(GetObjectByTag("wp_atton_ebo", 0)));
	if (GetIsObjectValid(object3)) {
		AurPostString("Atton is there", 5, 6, 5.0);
	}
	else {
		AurPostString("Atton is NOT there", 5, 6, 5.0);
	}
	SetForceAlwaysUpdate(object3, 1);
	DelayCommand(1.5, AssignCommand(GetFirstPC(), ClearAllActions()));
	DelayCommand(1.5, AssignCommand(object3, ClearAllActions()));
	DelayCommand(1.5, AssignCommand(object3, ActionStartConversation(GetFirstPC(), "att_rep", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}
