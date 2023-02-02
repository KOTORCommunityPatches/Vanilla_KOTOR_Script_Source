void main() {
	object oQuello = GetObjectByTag("Quello", 0);
	object oWP_Quello_Walk1 = GetWaypointByTag("WP_Quello_Walk1");
	location location1 = GetLocation(oWP_Quello_Walk1);
	AssignCommand(oQuello, ClearAllActions());
	DelayCommand(0.1, AssignCommand(oQuello, ActionStartConversation(GetFirstPC(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}
