void main() {
	object oLeader = GetPartyLeader();
	AssignCommand(oLeader, ActionForceMoveToObject(GetObjectByTag("wp_no_skip", 0), 0, 1.0, 30.0));
}
