void main() {
	object oWp_champm = GetObjectByTag("wp_champm", 0);
	object oChamp = GetObjectByTag("champ", 0);
	AssignCommand(oChamp, ClearAllActions());
	AssignCommand(oChamp, ActionForceMoveToLocation(GetLocation(oWp_champm), 0, 30.0));
}