void main() {
	object oREThug2 = GetObjectByTag("REThug2", 0);
	object object3 = GetObjectByTag("REThug2", 1);
	object oREThug3 = GetObjectByTag("REThug3", 0);
	object object7 = GetObjectByTag("REThug3", 1);
	if (GetIsObjectValid(oREThug2)) {
		DelayCommand(0.2, ChangeToStandardFaction(oREThug2, 1));
		DelayCommand(0.2, AssignCommand(oREThug2, ActionAttack(GetFirstPC(), 0)));
	}
	if (GetIsObjectValid(object3)) {
		DelayCommand(0.2, ChangeToStandardFaction(object3, 1));
		DelayCommand(0.2, AssignCommand(object3, ActionAttack(GetFirstPC(), 0)));
	}
	if (GetIsObjectValid(oREThug3)) {
		DelayCommand(0.2, ChangeToStandardFaction(oREThug3, 1));
		DelayCommand(0.2, AssignCommand(oREThug3, ActionAttack(GetFirstPC(), 0)));
	}
	if (GetIsObjectValid(object7)) {
		DelayCommand(0.2, ChangeToStandardFaction(object7, 1));
		DelayCommand(0.2, AssignCommand(object7, ActionAttack(GetFirstPC(), 0)));
	}
}
