// Byte code does not match

void main() {
	object oDarthSion = GetObjectByTag("DarthSion", 0);
	if ((!GetIsObjectValid(oDarthSion))) {
		AurPostString("Darth Sion isn't here, don't bother with the rest of the cut scene", 5, 7, 10.0);
		return;
	}
	SetPartyLeader(0xFFFFFFFF);
	object oPC = GetFirstPC();
	object oAtton = GetObjectByTag("atton", 0);
	object oKreia = GetObjectByTag("kreia", 0);
	if (((!GetIsObjectValid(oAtton)) || (!GetIsObjectValid(oKreia)))) {
		AurPostString("No Atton or Kreia, don't bother with the rest of the cut scene", 5, 7, 10.0);
		return;
	}
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 0:
			AssignCommand(oPC, ClearAllActions());
			AssignCommand(oKreia, ClearAllActions());
			AssignCommand(oAtton, ClearAllActions());
			AssignCommand(oPC, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_pc", 0))));
			AssignCommand(oKreia, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_npc2", 0))));
			AssignCommand(oAtton, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_npc3", 0))));
			{
				object oWP_SION_PC1 = GetObjectByTag("WP_SION_PC1", 0);
				object oWP_SION_PC2 = GetObjectByTag("WP_SION_PC2", 0);
				object oWP_SION_PC3 = GetObjectByTag("WP_SION_PC3", 0);
				AssignCommand(oPC, ActionForceMoveToLocation(GetLocation(oWP_SION_PC1), 0, 30.0));
				vector struct2 = GetPositionFromLocation(GetLocation(GetObjectByTag("WP_pc_look", 0)));
				AssignCommand(oPC, ActionDoCommand(SetFacingPoint(struct2)));
				AssignCommand(oPC, SetLockOrientationInDialog(oPC, 1));
				DelayCommand(0.1, AssignCommand(oKreia, ActionForceMoveToLocation(GetLocation(oWP_SION_PC2), 0, 30.0)));
				DelayCommand(0.1, AssignCommand(oAtton, ActionForceMoveToLocation(GetLocation(oWP_SION_PC3), 0, 30.0)));
			}
			break;
		case 1:
			AssignCommand(oPC, ActionWait(1.8));
			AssignCommand(oPC, ActionPlayAnimation(100, 1.0, 0.0));
			break;
		case 2:
			AssignCommand(oPC, ClearAllActions());
			AssignCommand(oKreia, ClearAllActions());
			AssignCommand(oAtton, ClearAllActions());
			AssignCommand(oPC, SetLockOrientationInDialog(oPC, 0));
			vector struct4 = GetPositionFromLocation(GetLocation(oDarthSion));
			AssignCommand(oPC, ActionDoCommand(SetFacingPoint(struct4)));
			AssignCommand(oKreia, ActionDoCommand(SetFacingPoint(struct4)));
			DelayCommand(0.5, AssignCommand(oAtton, ActionDoCommand(SetFacingPoint(struct4))));
			break;
		case 3:
			break;
		case 4:
			{
				effect effect1 = EffectMovementSpeedDecrease(50);
				AssignCommand(oDarthSion, ClearAllActions());
				ApplyEffectToObject(1, effect1, oDarthSion, 4.0);
				AssignCommand(oDarthSion, ActionForceMoveToObject(GetObjectByTag("WP_SION_2", 0), 0, 1.0, 30.0));
			}
			break;
		case 5:
			AssignCommand(oKreia, ClearAllActions());
			AurPostString("Kreia flourish.", 5, 12, 10.0);
			vector struct6 = GetPositionFromLocation(GetLocation(oPC));
			AssignCommand(oKreia, ActionDoCommand(SetFacingPoint(struct6)));
			AssignCommand(oKreia, SetLockOrientationInDialog(oKreia, 1));
			AssignCommand(oKreia, CreatureFlourishWeapon(oKreia));
			break;
		case 6:
			AurPostString("Kreia runs first WP.", 5, 14, 10.0);
			AssignCommand(oKreia, ClearAllActions());
			AssignCommand(oKreia, ActionForceMoveToObject(GetObjectByTag("WP_kreia_leave_1", 0), 1, 1.0, 30.0));
			break;
		case 7:
			AssignCommand(oKreia, ClearAllActions());
			AssignCommand(oKreia, ActionForceMoveToObject(GetObjectByTag("WP_kreia_leave_2", 0), 1, 1.0, 30.0));
			break;
		case 8:
			{
				object oKreia_sion_door = GetObjectByTag("kreia_sion_door", 0);
				if (GetIsObjectValid(oKreia_sion_door)) {
					AssignCommand(oKreia_sion_door, ActionCloseDoor(oKreia_sion_door));
					AssignCommand(oKreia_sion_door, SetLocked(oKreia_sion_door, 1));
				}
			}
			break;
		case 9:
			AssignCommand(oKreia, ClearAllActions());
			vector struct8 = GetPositionFromLocation(GetLocation(oPC));
			AssignCommand(oKreia, ActionDoCommand(SetFacingPoint(struct8)));
			AssignCommand(oKreia, SetLockOrientationInDialog(oKreia, 1));
			break;
		case 10:
			{
				object object24 = GetObjectByTag("kreia", 0);
				if (GetIsObjectValid(object24)) {
					AurPostString("Kreia removed from party.", 5, 10, 10.0);
					RemovePartyMember(6);
				}
			}
			break;
		case 11:
			AssignCommand(oKreia, ActionUnequipItem(GetItemInSlot(4, OBJECT_SELF), 0));
			AssignCommand(oKreia, ActionUnequipItem(GetItemInSlot(5, OBJECT_SELF), 0));
			AssignCommand(oKreia, ActionUnequipItem(GetItemInSlot(18, OBJECT_SELF), 0));
			AssignCommand(oKreia, ActionUnequipItem(GetItemInSlot(19, OBJECT_SELF), 0));
			AssignCommand(oKreia, ActionEquipItem(CreateItemOnObject("w_melee_06", oKreia, 1, 1), 4, 1));
			break;
		case 12:
			{
				object oRWeapItem = GetItemInSlot(4, oKreia);
				DestroyObject(oRWeapItem, 0.0, 0, 0.0, 0);
			}
			break;
	}
}