void main() {
	if (GetLocalBoolean(GetObjectByTag("203_moza", 0), 30)) {
		return;
	}
	else {
		if (GetLocalBoolean(OBJECT_SELF, 30)) {
			return;
		}
		SetLocalBoolean(OBJECT_SELF, 30, 1);
		SetLocalBoolean(GetObjectByTag("203_moza", 0), 30, 1);
		object o203_Moza = GetObjectByTag("203_Moza", 0);
		if (GetIsObjectValid(o203_Moza)) {
			if ((GetGlobalNumber("200TEL_Moza") == 0)) {
				DelayCommand(1.0, AssignCommand(o203_Moza, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
			}
		}
	}
}
