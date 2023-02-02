void main() {
	AssignCommand(GetObjectByTag("Twilek_Servant", 0), ActionMoveToObject(GetObjectByTag("wp_servant_dance", 0), 0, 1.0));
	AssignCommand(GetFirstPC(), ActionMoveToObject(GetObjectByTag("wp_dancer_2", 0), 0, 1.0));
}
