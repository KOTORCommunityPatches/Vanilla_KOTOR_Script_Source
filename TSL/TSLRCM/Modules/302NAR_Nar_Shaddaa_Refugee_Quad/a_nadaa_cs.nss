void main() {
	int nParam1 = GetScriptParameter(1);
	object oNadaa = GetObjectByTag("Nadaa", 0);
	switch (nParam1) {
		case 1:
			AssignCommand(oNadaa, ClearAllActions());
			AssignCommand(oNadaa, ActionPlayAnimation(18, 1.0, (-1.0)));
			break;
		case 2:
			AssignCommand(oNadaa, ClearAllActions());
			AssignCommand(oNadaa, ActionMoveToObject(GetObjectByTag("WP_nadaa", 0), 1, 1.0));
			DelayCommand(4.0, DestroyObject(oNadaa, 0.0, 0, 0.0, 0));
			break;
	}
}