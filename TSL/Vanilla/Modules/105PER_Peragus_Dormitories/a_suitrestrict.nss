void main() {
	if ((GetEnteringObject() == GetFirstPC())) {
		if (GetGlobalBoolean("G_PER_IN_SPACE_SUIT")) {
			int int2 = 62;
			object oPC = GetFirstPC();
			effect efNext = GetFirstEffect(oPC);
			while (GetIsEffectValid(efNext)) {
				if ((GetEffectType(efNext) == int2)) {
					RemoveEffect(oPC, efNext);
				}
				efNext = GetNextEffect(oPC);
			}
			SetGlobalBoolean("G_PER_IN_SPACE_SUIT", 0);
		}
	}
}
