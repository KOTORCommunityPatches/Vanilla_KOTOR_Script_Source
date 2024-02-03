void main() {
	object oHk501 = GetObjectByTag("hk501", 0);
	object oHk502 = GetObjectByTag("hk502", 0);
	object oHk503 = GetObjectByTag("hk503", 0);
	ChangeToStandardFaction(oHk501, 1);
	ChangeToStandardFaction(oHk503, 1);
	ChangeToStandardFaction(oHk502, 1);
	AssignCommand(oHk501, ActionAttack(GetFirstPC(), 0));
	AssignCommand(oHk502, ActionAttack(GetFirstPC(), 0));
	AssignCommand(oHk503, ActionAttack(GetFirstPC(), 0));
}

