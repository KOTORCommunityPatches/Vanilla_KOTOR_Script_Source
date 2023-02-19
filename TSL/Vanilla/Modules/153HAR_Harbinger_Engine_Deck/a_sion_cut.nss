// Original DeNCS output resulted in "Byte code does not match". Corrected version is 100% binary match.

void main() {

	object oSion = GetObjectByTag("DarthSion", 0);
	
	if (!GetIsObjectValid(oSion))
		{
			AurPostString("Darth Sion isn't here, don't bother with the rest of the cut scene", 5, 7, 10.0);
			return;
		}
	
	SetPartyLeader(NPC_PLAYER);
	
	object oPC = GetFirstPC();
	object oAtton = GetObjectByTag("atton", 0);
	object oKreia = GetObjectByTag("kreia", 0);
	
	if (!GetIsObjectValid(oAtton) || !GetIsObjectValid(oKreia))
		{
			AurPostString("No Atton or Kreia, don't bother with the rest of the cut scene", 5, 7, 10.0);
			return;
		}
	
	int ScriptParam = GetScriptParameter(1);
	
	switch (ScriptParam)
		{
			case 0:
				{
					AssignCommand(oPC, ClearAllActions());
					AssignCommand(oKreia, ClearAllActions());
					AssignCommand(oAtton, ClearAllActions());
					AssignCommand(oPC, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_pc", 0))));
					AssignCommand(oKreia, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_npc2", 0))));
					AssignCommand(oAtton, ActionJumpToLocation(GetLocation(GetObjectByTag("WP_npc3", 0))));
					
					object oWP_PC = GetObjectByTag("WP_SION_PC1", 0);
					object oWP_Kreia = GetObjectByTag("WP_SION_PC2", 0);
					object oWP_Atton = GetObjectByTag("WP_SION_PC3", 0);
					
					AssignCommand(oPC, ActionForceMoveToLocation(GetLocation(oWP_PC), 0, 30.0));
					
					vector vFace1 = GetPositionFromLocation(GetLocation(GetObjectByTag("WP_pc_look", 0)));
					
					AssignCommand(oPC, ActionDoCommand(SetFacingPoint(vFace1)));
					AssignCommand(oPC, SetLockOrientationInDialog(oPC, TRUE));
					
					DelayCommand(0.1, AssignCommand(oKreia, ActionForceMoveToLocation(GetLocation(oWP_Kreia), 0, 30.0)));
					DelayCommand(0.1, AssignCommand(oAtton, ActionForceMoveToLocation(GetLocation(oWP_Atton), 0, 30.0)));
				}
				break;
			case 1:
				{
					AssignCommand(oPC, ActionWait(1.8));
					AssignCommand(oPC, ActionPlayAnimation(ANIMATION_FIREFORGET_HEAD_TURN_LEFT, 1.0, 0.0));
				}
				break;
			case 2:
				{
					AssignCommand(oPC, ClearAllActions());
					AssignCommand(oKreia, ClearAllActions());
					AssignCommand(oAtton, ClearAllActions());
					
					AssignCommand(oPC, SetLockOrientationInDialog(oPC, FALSE));
					
					vector vFace2 = GetPositionFromLocation(GetLocation(oSion));
					
					AssignCommand(oPC, ActionDoCommand(SetFacingPoint(vFace2)));
					AssignCommand(oKreia, ActionDoCommand(SetFacingPoint(vFace2)));
					DelayCommand(0.5, AssignCommand(oAtton, ActionDoCommand(SetFacingPoint(vFace2))));
				}
				break;
			case 3:
				{
					
				}
				break;
			case 4:
				{
					effect efSlow = EffectMovementSpeedDecrease(50);
					
					AssignCommand(oSion, ClearAllActions());
					ApplyEffectToObject(1, efSlow, oSion, 4.0);
					AssignCommand(oSion, ActionForceMoveToObject(GetObjectByTag("WP_SION_2", 0), 0, 1.0, 30.0));
				}
				break;
			case 5:
				{
					AssignCommand(oKreia, ClearAllActions());
					
					AurPostString("Kreia flourish.", 5, 12, 10.0);
					
					vector vFace3 = GetPositionFromLocation(GetLocation(oPC));
					
					AssignCommand(oKreia, ActionDoCommand(SetFacingPoint(vFace3)));
					AssignCommand(oKreia, SetLockOrientationInDialog(oKreia, TRUE));
					AssignCommand(oKreia, CreatureFlourishWeapon(oKreia));
				}
				break;
			case 6:
				{
					AurPostString("Kreia runs first WP.", 5, 14, 10.0);
					
					AssignCommand(oKreia, ClearAllActions());
					AssignCommand(oKreia, ActionForceMoveToObject(GetObjectByTag("WP_kreia_leave_1", 0), 1, 1.0, 30.0));
				}
				break;
			case 7:
				{
					AssignCommand(oKreia, ClearAllActions());
					AssignCommand(oKreia, ActionForceMoveToObject(GetObjectByTag("WP_kreia_leave_2", 0), 1, 1.0, 30.0));
				}
				break;
			case 8:
				{
						object oDoor = GetObjectByTag("kreia_sion_door", 0);
						
						if (GetIsObjectValid(oDoor))
							{
								AssignCommand(oDoor, ActionCloseDoor(oDoor));
								AssignCommand(oDoor, SetLocked(oDoor, TRUE));
							}
				}
				break;
			case 9:
				{
					AssignCommand(oKreia, ClearAllActions());
					
					vector vFace4 = GetPositionFromLocation(GetLocation(oPC));
					
					AssignCommand(oKreia, ActionDoCommand(SetFacingPoint(vFace4)));
					AssignCommand(oKreia, SetLockOrientationInDialog(oKreia, TRUE));
				}
				break;
			case 10:
				{
					object PartyKreia = GetObjectByTag("kreia", 0);
					
					if (GetIsObjectValid(PartyKreia))
						{
							AurPostString("Kreia removed from party.", 5, 10, 10.0);
							RemovePartyMember(NPC_KREIA);
						}
				}
				break;
			case 11:
				{
					AssignCommand(oKreia, ActionUnequipItem(GetItemInSlot(INVENTORY_SLOT_RIGHTWEAPON, OBJECT_SELF), FALSE));
					AssignCommand(oKreia, ActionUnequipItem(GetItemInSlot(INVENTORY_SLOT_LEFTWEAPON, OBJECT_SELF), FALSE));
					AssignCommand(oKreia, ActionUnequipItem(GetItemInSlot(INVENTORY_SLOT_RIGHTWEAPON2, OBJECT_SELF), FALSE));
					AssignCommand(oKreia, ActionUnequipItem(GetItemInSlot(INVENTORY_SLOT_LEFTWEAPON2, OBJECT_SELF), FALSE));
					AssignCommand(oKreia, ActionEquipItem(CreateItemOnObject("w_melee_06", oKreia, 1, TRUE), INVENTORY_SLOT_RIGHTWEAPON, TRUE));
				}
				break;
			case 12:
				{
					object oSword = GetItemInSlot(INVENTORY_SLOT_RIGHTWEAPON, oKreia);
					
					DestroyObject(oSword);
				}
				break;
		}
}
