void main() {
	int nParam1 = GetScriptParameter(1);
	object oTwinSun1 = GetObjectByTag("TwinSun1", 0);
	object oTwinSun2 = GetObjectByTag("TwinSun2", 0);
	object oAtton = GetObjectByTag("Atton", 0);
	switch (nParam1) {
		case 1:
			SetCommandable(1, oTwinSun1);
			SetCommandable(1, oTwinSun2);
			ChangeToStandardFaction(oTwinSun1, 4);
			ChangeToStandardFaction(oTwinSun2, 4);
			AssignCommand(oTwinSun1, ClearAllActions());
			AssignCommand(oTwinSun2, ClearAllActions());
			{
				object oWP_TWIN1_ROLL = GetObjectByTag("WP_TWIN1_ROLL", 0);
				object oWP_TWIN2_ROLL = GetObjectByTag("WP_TWIN2_ROLL", 0);
				AssignCommand(oTwinSun1, ActionMoveToObject(oWP_TWIN1_ROLL, 1, 1.0));
				AssignCommand(oTwinSun2, ActionMoveToObject(oWP_TWIN2_ROLL, 1, 1.0));
				DelayCommand(0.2, PlayOverlayAnimation(oTwinSun1, 123));
				DelayCommand(0.2, PlayOverlayAnimation(oTwinSun2, 123));
				object object11 = GetItemPossessedBy(oTwinSun1, "w_melee_x02");
				object object13 = GetItemPossessedBy(oTwinSun1, "w_melee_01");
				object object15 = GetItemPossessedBy(oTwinSun2, "w_melee_x03");
				object object17 = GetItemPossessedBy(oTwinSun2, "w_melee_01");
				AssignCommand(oTwinSun1, ActionEquipItem(object11, 4, 1));
				AssignCommand(oTwinSun1, ActionEquipItem(object13, 5, 1));
				AssignCommand(oTwinSun2, ActionEquipItem(object15, 4, 1));
				AssignCommand(oTwinSun2, ActionEquipItem(object17, 5, 1));
				AssignCommand(oTwinSun1, ActionDoCommand(SetFacingPoint(GetPosition(oAtton))));
				AssignCommand(oTwinSun2, ActionDoCommand(SetFacingPoint(GetPosition(oAtton))));
			}
			break;
		case 2:
			AssignCommand(oTwinSun1, ActionDoCommand(ChangeToStandardFaction(oTwinSun1, 1)));
			AssignCommand(oTwinSun2, ActionDoCommand(ChangeToStandardFaction(oTwinSun2, 1)));
			ExecuteScript("a_force_combat", oTwinSun1, 0xFFFFFFFF);
			ExecuteScript("a_force_combat", oTwinSun2, 0xFFFFFFFF);
			break;
	}
}

