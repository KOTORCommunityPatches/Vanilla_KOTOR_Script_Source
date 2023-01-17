void main() {
	if ((GetEnteringObject() == GetFirstPC())) {
		if ((GetGlobalNumber("904MAL_Atton_End") == 0)) {
			return;
		}
		if (GetLocalBoolean(OBJECT_SELF, 30)) {
			return;
		}
		SetLocalBoolean(OBJECT_SELF, 30, 1);
		if ((GetGlobalNumber("904MAL_Atton_End") != 2)) {
			CreateObject(1, "p_atton", GetLocation(GetObjectByTag("WP_ATTON_ALIVE", 0)), 0);
			object oAtton = GetObjectByTag("atton", 0);
			SetMaxHitPoints(oAtton, GetMaxHitPoints(oAtton));
		}
		else {
			CreateObject(1, "p_atton", GetLocation(GetObjectByTag("WP_ATTON_DEAD", 0)), 0);
			object object9 = GetObjectByTag("atton", 0);
			AssignCommand(object9, ActionPlayAnimation(10568, 1.0, (-1.0)));
		}
		object object11 = GetObjectByTag("atton", 0);
		AssignCommand(object11, ClearAllActions());
		DelayCommand(1.0, AssignCommand(object11, ActionStartConversation(GetFirstPC(), "904Atton", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	}
}

