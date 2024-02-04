void main() {
	object oEntering = GetEnteringObject();
	object oG_201thugd = GetObjectByTag("g_201thugd", 0);
	if ((oEntering != GetFirstPC())) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 35)) {
		AssignCommand(GetObjectByTag("g_201thugd", 0), ClearAllActions());
		AssignCommand(GetObjectByTag("g_201thugd", 0), ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		AssignCommand(GetObjectByTag("g_201thugd", 0), ActionMoveToObject(GetObjectByTag("wp_thug01_2", 0), 0, 5.0));
		AssignCommand(GetObjectByTag("g_201thugt", 0), ActionMoveToObject(GetObjectByTag("wp_thug02_2", 0), 0, 5.0));
		SetLocalBoolean(OBJECT_SELF, 35, 0);
	}
	if (GetIsObjectValid(oG_201thugd)) {
		AssignCommand(oG_201thugd, ActionStartConversation(oEntering, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
}