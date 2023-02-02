void main() {
	int nParam1 = GetScriptParameter(1);
	if ((nParam1 == 1)) {
		ChangeToStandardFaction(GetObjectByTag("wound_sold", 0), 1);
		AssignCommand(GetObjectByTag("wound_sold", 0), ActionAttack(GetFirstPC(), 0));
	}
}
