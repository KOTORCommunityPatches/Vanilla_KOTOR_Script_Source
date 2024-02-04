// Prototypes
void sub1();

void sub1() {
	AurPostString("Charge!!!!", 5, 10, 5.0);
	object oG_repsold_capt = GetObjectByTag("g_repsold_capt", 0);
	object oPC = GetFirstPC();
	SetLocalBoolean(oG_repsold_capt, 55, 1);
	DelayCommand(0.1, AssignCommand(oG_repsold_capt, ActionStartConversation(oPC, "", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
	DelayCommand(2.0, AssignCommand(oPC, ActionForceMoveToObject(GetObjectByTag("wp_pc_mines", 0), 1, 1.0, 30.0)));
	DelayCommand(3.0, CreatureFlourishWeapon(oPC));
}

void main() {
	object oCheck_mines = GetObjectByTag("check_mines", 0);
	if (GetLocalBoolean(oCheck_mines, 40)) {
		SetLocalBoolean(oCheck_mines, 40, 0);
		location location1 = GetLocation(oCheck_mines);
		AurPostString("Checking Mines...", 5, 14, 5.0);
		object oShapeObject = GetFirstObjectInShape(4, 12.0, location1, 0, 32767, [0.0,0.0,0.0]);
		while (GetIsObjectValid(oShapeObject)) {
			if (((GetObjectType(oShapeObject) == 4) && (GetTrapBaseType(oShapeObject) != (-1)))) {
				AurPostString("Found a Mine", 5, 15, 5.0);
				SetLocalBoolean(oCheck_mines, 40, 1);
				break;
			}
			oShapeObject = GetNextObjectInShape(4, 12.0, location1, 0, 32767, [0.0,0.0,0.0]);
		}
		if ((!GetLocalBoolean(oCheck_mines, 40))) {
			sub1();
		}
	}
}