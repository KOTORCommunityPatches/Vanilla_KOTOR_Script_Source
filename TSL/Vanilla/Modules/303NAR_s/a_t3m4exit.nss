void main() {
	object oEntering = GetEnteringObject();
	if ((GetPartyLeader() != oEntering)) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 31)) {
		return;
	}
	if ((GetGlobalNumber("300NAR_T3M4") == 4)) {
		SetLocalBoolean(OBJECT_SELF, 31, 1);
		SetGlobalNumber("300NAR_T3M4", 5);
		object oB5D8 = GetObjectByTag("B5D8", 0);
		AurPostString("Locking Inner Warehouse Door", 15, 15, 10.0);
		object oDoor_Warehouse_Outer = GetObjectByTag("Door_Warehouse_Inner", 0);
		AssignCommand(oDoor_Warehouse_Outer, ActionCloseDoor(oDoor_Warehouse_Outer));
		DelayCommand(0.1, AssignCommand(oDoor_Warehouse_Outer, ActionLockObject(oDoor_Warehouse_Outer)));
		AurPostString("opening Outer Warehouse Door", 16, 16, 10.0);
		oDoor_Warehouse_Outer = GetObjectByTag("Door_Warehouse_Outer", 0);
		AssignCommand(oDoor_Warehouse_Outer, ActionUnlockObject(oDoor_Warehouse_Outer));
		DelayCommand(0.1, AssignCommand(oDoor_Warehouse_Outer, ActionOpenDoor(oDoor_Warehouse_Outer)));
		SetLocalBoolean(oB5D8, 31, 1);
		AssignCommand(oB5D8, ClearAllActions());
		AssignCommand(oB5D8, ActionStartConversation(GetFirstPC(), "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
	}
	else {
		if (GetGlobalBoolean("303NAR_T3M4_Solo")) {
			object object10 = GetObjectByTag("B5D8", 0);
			if ((GetTag(oEntering) == "t3m4")) {
				AssignCommand(oEntering, ClearAllActions());
				AssignCommand(oEntering, ActionJumpToObject(GetObjectByTag("WP_t3m4_abort", 0), 1));
				SetLocalBoolean(object10, 32, 1);
				AssignCommand(object10, ClearAllActions());
				DelayCommand(0.1, AssignCommand(object10, ActionStartConversation(oEntering, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
			}
			else {
				AurPostString("ERROR: should be t3m4!", 15, 15, 10.0);
			}
		}
	}
}

