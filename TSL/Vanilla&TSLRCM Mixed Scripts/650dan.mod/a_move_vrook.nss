void main() {
	object oVrook = GetObjectByTag("Vrook", 0);
	object oWP_council_vrook = GetObjectByTag("WP_council_vrook", 0);
	DelayCommand(0.6, AssignCommand(oVrook, ActionMoveToLocation(GetLocation(oWP_council_vrook), 1)));
}

