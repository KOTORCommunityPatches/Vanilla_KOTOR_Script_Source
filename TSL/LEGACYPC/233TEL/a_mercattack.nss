void main() {
	object o233_mercc;
	ChangeToStandardFaction(GetObjectByTag("233_merc01a", 0), 1);
	ChangeToStandardFaction(GetObjectByTag("233_merc01a", 1), 1);
	ChangeToStandardFaction(GetObjectByTag("233_merc01", 0), 1);
	ChangeToStandardFaction(GetObjectByTag("233_merc01", 1), 1);
	ChangeToStandardFaction(GetObjectByTag("233_merc01", 2), 1);
	ChangeToStandardFaction(GetObjectByTag("233_merc01", 3), 1);
	ChangeToStandardFaction(GetObjectByTag("233_merc01", 4), 1);
	ChangeToStandardFaction(GetObjectByTag("233_merc03a", 0), 1);
	ChangeToStandardFaction(GetObjectByTag("233_merc03", 0), 1);
	ChangeToStandardFaction(GetObjectByTag("233_merc03", 1), 1);
	ChangeToStandardFaction(GetObjectByTag("233_merc03", 2), 1);
	ChangeToStandardFaction(GetObjectByTag("233_merc03", 3), 1);
	ChangeToStandardFaction(GetObjectByTag("233_merc03", 4), 1);
	ChangeToStandardFaction(GetObjectByTag("233_merc02a", 0), 1);
	ChangeToStandardFaction(GetObjectByTag("233_merc02", 0), 1);
	ChangeToStandardFaction(GetObjectByTag("233_merc02", 1), 1);
	ChangeToStandardFaction(GetObjectByTag("233_merc02", 2), 1);
	o233_mercc = GetObjectByTag("233_merc01a", 0);
	DelayCommand(0.2, AssignCommand(o233_mercc, ActionAttack(GetFirstPC(), 0)));
	o233_mercc = GetObjectByTag("233_merc01a", 1);
	DelayCommand(0.2, AssignCommand(o233_mercc, ActionAttack(GetFirstPC(), 0)));
	o233_mercc = GetObjectByTag("233_merc02a", 0);
	DelayCommand(0.2, AssignCommand(o233_mercc, ActionAttack(GetFirstPC(), 0)));
	o233_mercc = GetObjectByTag("233_merc03a", 0);
	DelayCommand(0.2, AssignCommand(o233_mercc, ActionAttack(GetFirstPC(), 0)));
	ChangeToStandardFaction(GetObjectByTag("233_mercc", 0), 1);
	o233_mercc = GetObjectByTag("233_mercc", 0);
	DelayCommand(0.2, AssignCommand(o233_mercc, ActionAttack(GetFirstPC(), 0)));
}

