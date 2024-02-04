void main() {
	if (GetLocalBoolean(OBJECT_SELF, 30)) {
		return;
	}
	if ((GetGlobalNumber("305NAR_PC_Saved") == 0)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 30, 1);
	DisableMap(0);
}