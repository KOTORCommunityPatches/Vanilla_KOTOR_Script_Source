void main() {
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		return;
	}
	if ((GetGlobalNumber("500OND_DarkSide_Iziz") == 0)) {
		object oBostuco = GetObjectByTag("bostuco", 0);
		SetLocalBoolean(oBostuco, 52, 1);
		DelayCommand(0.1, AssignCommand(oBostuco, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	}
	SetLocalBoolean(OBJECT_SELF, 40, 1);
}

