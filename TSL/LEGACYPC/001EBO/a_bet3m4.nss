// Prototypes
void sub3(object objectParam1, int intParam2);
void sub2();
void sub1();

void sub3(object objectParam1, int intParam2) {
	object oRWeapItem = GetItemInSlot(4, objectParam1);
	AssignCommand(objectParam1, ActionUnequipItem(oRWeapItem, 1));
	if (intParam2) {
		DestroyObject(oRWeapItem, 0.0, 1, 0.0, 1);
	}
}

void sub2() {
	AddAvailableNPCByTemplate(8, "p_t3m4");
	SwitchPlayerCharacter(8);
	sub3(GetObjectByTag("t3m4", 0), 1);
	SetMinOneHP(GetObjectByTag("t3m4", 0), 1);
	AssignCommand(GetObjectByTag("debris", 0), ApplyEffectToObject(0, EffectDamage(25, 8, 0), GetObjectByTag("t3m4", 0), 0.0));
	DisableHealthRegen(1);
	ApplyEffectToObject(2, EffectVisualEffect(2067, 0), GetObjectByTag("t3m4", 0), 0.0);
}

void sub1() {
	if ((GetGlobalNumber("001EBO_Rumble") == 0)) {
		DelayCommand(IntToFloat((Random(10) + 10)), sub1());
		AurPostString("Rumbling", 5, 5, 5.0);
		PlaySound("MetalStrain");
		ApplyEffectToObject(1, EffectVisualEffect(6002, 0), GetFirstPC(), IntToFloat((Random(8) + 1)));
	}
}

void main() {
	if (GetLoadFromSaveGame()) {
		return;
	}
	if (GetIsPC(GetEnteringObject())) {
		if ((!GetLocalBoolean(OBJECT_SELF, 30))) {
			SetLocalBoolean(OBJECT_SELF, 30, 1);
			sub1();
			RevealMap([0.0,0.0,0.0], 0xFFFFFFFF);
		}
		if (GetGlobalNumber("002EBO_Door_Override")) {
			object oStar_dorm = GetObjectByTag("star_dorm", 0);
			AssignCommand(oStar_dorm, ActionOpenDoor(oStar_dorm));
		}
		int nGlobal = GetGlobalNumber("001EBO_BEEN_T3_M4");
		if ((!nGlobal)) {
			if ((0 == GetGender(GetFirstPC()))) {
				SetGlobalBoolean("000_PLAYER_GENDER", 1);
			}
			SetGlobalNumber("001EBO_BEEN_T3_M4", 1);
			DelayCommand(0.2, sub2());
			object oC_medbaypc = GetObjectByTag("MEDBAY_PC", 0);
			if ((!GetIsObjectValid(oC_medbaypc))) {
				object oInvisibleLocationMarker = GetObjectByTag("InvisibleLocationMarker", 0);
				location location1 = GetLocation(oInvisibleLocationMarker);
				oC_medbaypc = CreateObject(1, "c_medbaypc", location1, 0);
				int int9 = GetAppearanceType(GetEnteringObject());
				effect effect1 = EffectDisguise(int9);
				ApplyEffectToObject(2, effect1, oC_medbaypc, 0.0);
				AssignCommand(oC_medbaypc, ActionPlayAnimation(30, 1.0, (-1.0)));
			}
		}
		SetGlobalNumber("GBL_MAIN_SITH_LORD", 0);
		if ((GetGlobalNumber("001EBO_Movie") == 0)) {
			SetGlobalNumber("001EBO_Movie", 1);
			PlayMovie("permov01", 0);
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			SetFadeUntilScript();
			AssignCommand(GetObjectByTag("Prologue", 0), ActionStartConversation(OBJECT_SELF, "intro", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
		}
	}
}

