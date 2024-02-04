void main() {
	object oKREIA = GetObjectByTag("KREIA", 0);
	AssignCommand(oKREIA, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_kreia_cut_6", 0))));
}