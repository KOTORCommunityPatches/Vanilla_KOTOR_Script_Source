void main() {
	int nParam1 = GetScriptParameter(1);
	object oKreia = GetObjectByTag("Kreia", 0);
	object oAtton = GetObjectByTag("Atton", 0);
	switch (nParam1) {
		case 10:
			break;
		case 11:
			DelayCommand(0.4, AssignCommand(oKreia, SetFacingPoint(GetPosition(oAtton))));
			DelayCommand(0.4, AssignCommand(oKreia, ActionPlayAnimation(2, 1.0, (-1.0))));
			break;
	}
}
