void main() {
	object oAtton = GetObjectByTag("Atton", 0);
	object oKreia = GetObjectByTag("Kreia", 0);
	object oRemote = GetObjectByTag("remote", 0);
	object oBaodur = GetObjectByTag("baodur", 0);
	if (((!GetIsObjectValid(oBaodur)) && (!GetIsObjectValid(oRemote)))) {
		AurPostString("231ERROR: No Baodur and/or no remote!", 5, 15, 20.0);
	}
	else {
		if ((GetIsObjectValid(oKreia) && GetIsObjectValid(oAtton))) {
			AssignCommand(oAtton, ClearAllActions());
			DelayCommand(0.1, AssignCommand(oAtton, ActionPlayAnimation(30, 1.0, (-1.0))));
			AssignCommand(oKreia, ClearAllActions());
			DelayCommand(0.1, AssignCommand(oKreia, ActionPlayAnimation(30, 1.0, (-1.0))));
			AssignCommand(GetFirstPC(), ClearAllActions());
			DelayCommand(0.1, AssignCommand(GetFirstPC(), ActionPlayAnimation(30, 1.0, (-1.0))));
		}
		else {
			AurPostString("231ERROR: No Atton or Kreia!", 5, 15, 20.0);
		}
	}
}

