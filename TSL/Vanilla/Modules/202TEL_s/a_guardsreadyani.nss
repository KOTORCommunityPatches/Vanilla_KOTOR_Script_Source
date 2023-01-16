void main() {
	SetFakeCombatState(GetObjectByTag("202_TSF1", 0), 1);
	SetFakeCombatState(GetObjectByTag("202_TSF2", 0), 1);
	AssignCommand(GetObjectByTag("202_TSF1", 0), ActionPlayAnimation(19, 1.0, (-1.0)));
	AssignCommand(GetObjectByTag("202_TSF2", 0), ActionPlayAnimation(19, 1.0, (-1.0)));
}

