void main() {
	if (GetIsPC(GetEnteringObject())) {
		if ((GetGlobalNumber("203TEL_Habat") > 2)) {
			if (GetLocalBoolean(OBJECT_SELF, 40)) {
				AssignCommand(GetObjectByTag("202_benok", 0), ClearAllActions());
				AssignCommand(GetObjectByTag("202_benok", 0), ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
				SetLocalBoolean(OBJECT_SELF, 40, 0);
			}
		}
	}
	else {
		return;
	}
}