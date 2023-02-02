void main() {
	object oBh_thug2 = CreateObject(1, "bh_thug2", GetLocation(GetObjectByTag("sp_rodian_thug1", 0)), 0);
	object object4 = CreateObject(1, "bh_thug2", GetLocation(GetObjectByTag("sp_rodian_thug2", 0)), 0);
	object object7 = CreateObject(1, "bh_thug2", GetLocation(GetObjectByTag("sp_rodian_thug3", 0)), 0);
	DelayCommand(1.5, AssignCommand(oBh_thug2, ActionMoveToObject(GetObjectByTag("wp_rodian_thug1", 0), 0, 1.0)));
	DelayCommand(0.5, AssignCommand(object4, ActionMoveToObject(GetObjectByTag("wp_rodian_thug2", 0), 0, 1.0)));
	DelayCommand(1.5, AssignCommand(object7, ActionMoveToObject(GetObjectByTag("wp_rodian_thug3", 0), 0, 1.0)));
}
