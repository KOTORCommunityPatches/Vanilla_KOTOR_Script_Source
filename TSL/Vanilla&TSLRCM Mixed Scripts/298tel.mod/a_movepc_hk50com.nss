void main() {
	object oLeader = GetPartyLeader();
	AssignCommand(oLeader, ClearAllActions());
	DelayCommand(1.0, AssignCommand(oLeader, ActionForceMoveToObject(GetObjectByTag("WP_HKCOM_PC_1", 0), 0, 1.0, 30.0)));
}

