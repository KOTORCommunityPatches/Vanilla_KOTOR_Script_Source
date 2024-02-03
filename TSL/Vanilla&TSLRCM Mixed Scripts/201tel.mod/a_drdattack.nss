void main() {
	SetGlobalNumber("000_T1N1_Dead", 1);
	ChangeToStandardFaction(GetObjectByTag("201_b4d4", 0), 1);
	AssignCommand(GetObjectByTag("201_b4d4", 0), ActionAttack(GetFirstPC(), 0));
	ChangeToStandardFaction(GetObjectByTag("201_t1n1", 0), 1);
	AssignCommand(GetObjectByTag("201_t1n1", 0), ActionAttack(GetFirstPC(), 0));
}

