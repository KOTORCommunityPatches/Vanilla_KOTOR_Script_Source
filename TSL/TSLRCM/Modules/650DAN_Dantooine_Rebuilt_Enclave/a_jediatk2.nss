void main() {
	object oZezkaiell = GetObjectByTag("Kavar", 0);
	if (GetIsObjectValid(oZezkaiell)) {
		DelayCommand(0.8, ChangeToStandardFaction(oZezkaiell, 1));
		DelayCommand(1.0, AssignCommand(GetObjectByTag("Kavar", 0), ActionAttack(GetFirstPC(), 0)));
	}
	oZezkaiell = GetObjectByTag("Vrook", 0);
	if (GetIsObjectValid(oZezkaiell)) {
		DelayCommand(0.8, ChangeToStandardFaction(oZezkaiell, 1));
		DelayCommand(1.0, AssignCommand(GetObjectByTag("Vrook", 0), ActionAttack(GetFirstPC(), 0)));
	}
	oZezkaiell = GetObjectByTag("Zezkaiell", 0);
	if (GetIsObjectValid(oZezkaiell)) {
		DelayCommand(0.8, ChangeToStandardFaction(oZezkaiell, 1));
		DelayCommand(1.0, AssignCommand(GetObjectByTag("Zezkaiell", 0), ActionAttack(GetFirstPC(), 0)));
	}
}