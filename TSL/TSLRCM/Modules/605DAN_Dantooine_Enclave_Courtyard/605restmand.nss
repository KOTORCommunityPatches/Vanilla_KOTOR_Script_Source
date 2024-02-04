void main() {
	SetAreaUnescapable(1);
	ChangeToStandardFaction(GetObjectByTag("mand_lead", 0), 1);
	AssignCommand(GetObjectByTag("mand_lead", 0), ActionAttack(GetFirstPC(), 0));
}