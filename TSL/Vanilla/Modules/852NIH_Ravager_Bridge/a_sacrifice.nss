void main() {
	int nParam1 = GetScriptParameter(1);
	object oDarthNihilus = GetObjectByTag("DarthNihilus", 0);
	object oPC = GetFirstPC();
	object oVisasMarr = GetObjectByTag("VisasMarr", 0);
	object oMand = GetObjectByTag("Mand", 0);
	object oEnd = GetObjectByTag("End", 0);
	switch (nParam1) {
		case 0:
			SetGlobalFadeIn(0.4, 2.0, 0.0, 0.0, 0.0);
			DelayCommand(1.0, SetLightsaberPowered(oDarthNihilus, 1, 0, 1));
			DelayCommand(1.4, SetLightsaberPowered(oPC, 1, 0, 1));
			DelayCommand(1.6, SetLightsaberPowered(oVisasMarr, 1, 0, 1));
			AssignCommand(oPC, ActionJumpToObject(GetObjectByTag("wp_pc_end3", 0), 1));
			AssignCommand(oMand, ActionJumpToObject(GetObjectByTag("wp_mand_end", 0), 1));
			AssignCommand(oDarthNihilus, ActionJumpToObject(GetObjectByTag("wp_nihilus_dead", 0), 1));
			SetMinOneHP(oDarthNihilus, 0);
			AssignCommand(oDarthNihilus, SetFacing(0.0));
			AssignCommand(oEnd, DelayCommand(1.1, AssignCommand(oDarthNihilus, ClearAllActions())));
			AssignCommand(oEnd, DelayCommand(1.1, AssignCommand(oDarthNihilus, ActionPlayAnimation(26, 1.0, (-1.0)))));
			SetLockOrientationInDialog(oDarthNihilus, 1);
			SetLockOrientationInDialog(oVisasMarr, 1);
			break;
		case 1:
			AssignCommand(oPC, ActionMoveToObject(GetObjectByTag("wp_pc_end4", 0), 0, 1.0));
			break;
		case 2:
			AssignCommand(oPC, ActionMoveToObject(GetObjectByTag("wp_pc_end", 0), 0, 1.0));
			break;
		case 3:
			AssignCommand(GetFirstPC(), DelayCommand(4.0, SetGlobalFadeIn(0.1, 2.0, 0.0, 0.0, 0.0)));
			RemoveAvailableNPC(9);
			AssignCommand(oVisasMarr, ClearAllEffects());
			SetMinOneHP(oVisasMarr, 0);
			{
				effect efDeath = EffectDeath(1, 0, 0);
				AssignCommand(oEnd, ApplyEffectToObject(2, efDeath, oVisasMarr, 0.0));
			}
			break;
		case 4:
			SoundObjectPlay(GetObjectByTag("NihilusZapped", 0));
			{
				object oSithritual001 = CreateObject(64, "sithritual001", GetLocation(GetObjectByTag("wp_nihilus_dead", 0)), 0);
				DelayCommand(3.0, DestroyObject(oSithritual001, 0.0, 0, 0.0, 0));
				AssignCommand(GetFirstPC(), DelayCommand(5.0, SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0)));
				DestroyObject(oDarthNihilus, 0.0, 0, 0.0, 0);
			}
			break;
		case 5:
			AssignCommand(oPC, ActionMoveToObject(GetObjectByTag("wp_pc_end1", 0), 0, 1.0));
			AssignCommand(oMand, ActionMoveToObject(GetObjectByTag("wp_mand_end1", 0), 0, 1.0));
			break;
	}
}
