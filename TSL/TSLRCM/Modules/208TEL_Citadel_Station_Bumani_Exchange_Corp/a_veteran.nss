void main() {
	if (GetLocalBoolean(GetObjectByTag("Atton", 0), 30)) {
		SetLocalBoolean(GetObjectByTag("Atton", 0), 30, 0);
		AssignCommand(GetFirstPC(), ActionJumpToObject(GetObjectByTag("wp_sleep_pc", 0), 1));
		DelayCommand(0.2, AssignCommand(GetFirstPC(), ActionPlayAnimation(35, 1.0, (-1.0))));
		AssignCommand(GetObjectByTag("Atton", 0), ActionJumpToObject(GetObjectByTag("wp_attonveteran", 0), 1));
		AssignCommand(GetObjectByTag("Kreia", 0), ActionJumpToObject(GetObjectByTag("wp_playerwindow", 0), 1));
	}
}