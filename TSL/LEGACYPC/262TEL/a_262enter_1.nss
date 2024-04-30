struct structtype1 {
	float float1;
	float float3;
};

void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 1:
			AurPostString("a_262enter_1: case 1", 5, 6, 3.0);
			{
				object oAtton = GetObjectByTag("Atton", 0);
				object oKreia = GetObjectByTag("Kreia", 0);
				if ((GetGlobalNumber("262TEL_Escape_Telos") == 0)) {
					AurPostString("a_262enter_1: spawning pms in prison", 5, 8, 5.0);
				object object5 = SpawnAvailableNPC(1, GetLocation(GetObjectByTag("WP_BaoDur_Prison", 0)));
				object object8 = SpawnAvailableNPC(8, GetLocation(GetObjectByTag("wp_t3m4", 0)));
					AssignCommand(object5, SetIsDestroyable(0, 1, 0));
				effect efDeath = EffectDeath(0, 0, 1);
					ApplyEffectToObject(2, efDeath, object5, 0.0);
				if ((GetIsObjectValid(oAtton) == 0)) {
					oAtton = SpawnAvailableNPC(0, GetLocation(GetObjectByTag("WP_Atton_Prison", 0)));
				}
				if ((GetIsObjectValid(oKreia) == 0)) {
					oKreia = SpawnAvailableNPC(6, GetLocation(GetObjectByTag("WP_Kreia_Prison", 0)));
				}
				}
				object oTO_261TEL = GetObjectByTag("TO_261TEL", 0);
				object oPC = GetFirstPC();
				SetLocalBoolean(oAtton, 30, 0);
				AssignCommand(oAtton, ClearAllActions());
				AssignCommand(oKreia, ClearAllActions());
				AssignCommand(oPC, ClearAllActions());
				AssignCommand(oAtton, ActionJumpToObject(GetObjectByTag("WP_261_0_ATTON_0", 0), 1));
				AssignCommand(oKreia, ActionJumpToObject(GetObjectByTag("WP_261_0_KREIA_0", 0), 1));
				AssignCommand(oPC, ActionJumpToObject(GetObjectByTag("FROM_261TEL", 0), 1));
				DelayCommand(0.1, AssignCommand(GetFirstPC(), ActionMoveToObject(GetObjectByTag("WP_261_0", 0), 0, 1.0)));
				DelayCommand(0.2, AssignCommand(GetObjectByTag("Atton", 0), ActionMoveToObject(GetObjectByTag("WP_261_0_ATTON", 0), 0, 1.0)));
				DelayCommand(0.3, AssignCommand(GetObjectByTag("Kreia", 0), ActionMoveToObject(GetObjectByTag("WP_261_0_KREIA", 0), 0, 1.0)));
				DelayCommand(1.9, AssignCommand(oTO_261TEL, ActionCloseDoor(oTO_261TEL)));
				DelayCommand(2.1, SetLocked(oTO_261TEL, 1));
				DelayCommand(2.3, AssignCommand(GetObjectByTag("Atton", 0), ActionDoCommand(SetFacingPoint(GetPosition(oTO_261TEL)))));
				DelayCommand(2.4, AssignCommand(GetObjectByTag("Kreia", 0), ActionDoCommand(SetFacingPoint(GetPosition(oTO_261TEL)))));
				DelayCommand(2.7, AssignCommand(GetFirstPC(), ActionDoCommand(SetFacingPoint(GetPosition(oTO_261TEL)))));
			}
			break;
		case 2:
			AurPostString("a_262enter_1: case 2", 5, 7, 3.0);
			vector vPosition = GetPosition(GetObjectByTag("Handmaiden", 0));
			object object32 = GetObjectByTag("Kreia", 0);
			object object34 = GetObjectByTag("Atton", 0);
			object object36 = GetFirstPC();
			SetLockOrientationInDialog(object34, 1);
			SetLockOrientationInDialog(object32, 1);
			AssignCommand(object36, ClearAllActions());
								;
;
	}
}

