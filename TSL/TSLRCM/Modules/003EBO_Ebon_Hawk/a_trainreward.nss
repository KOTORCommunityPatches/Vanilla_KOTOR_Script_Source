void main() {
	object oPC = GetFirstPC();
	object oVisasMarr = GetObjectByTag("VisasMarr", 0);
	ApplyEffectToObject(0, EffectHeal((GetMaxHitPoints(oVisasMarr) - GetCurrentHitPoints(oVisasMarr))), oVisasMarr, 0.0);
	GiveXPToCreature(oPC, 1000);
	if ((!GetFeatAcquired(193, oPC))) {
		GrantFeat(193, oPC);
		SetGlobalNumber("003_Visas_Training", 1);
	}
	else {
		if ((!GetFeatAcquired(36, oPC))) {
			GrantFeat(36, oPC);
			SetGlobalNumber("003_Visas_Training", 2);
		}
		else {
			if ((!GetFeatAcquired(50, oPC))) {
				GrantFeat(50, oPC);
				SetGlobalNumber("003_Visas_Training", 3);
			}
			else {
				SetGlobalNumber("003_Visas_Training", 4);
			}
		}
	}
}