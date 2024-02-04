void main() {
	AssignCommand(GetObjectByTag("npc_dillan", 0), ClearAllActions());
	DelayCommand(0.1, AssignCommand(GetObjectByTag("npc_dillan", 0), ActionForceMoveToObject(GetObjectByTag("WP_dillan_home", 0), 0, 1.0, 30.0)));
}