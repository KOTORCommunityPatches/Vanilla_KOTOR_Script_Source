// Prototypes
void sub1();

void sub1() {
	object oT3m4 = GetObjectByTag("t3m4", 0);
	if (GetIsObjectValid(oT3m4)) {
		AurPostString("destroying t3 off the map", 5, 15, 10.0);
		DestroyObject(oT3m4, 0.0, 0, 0.0, 0);
	}
	SetNPCSelectability(8, 0);
	object oPC = GetFirstPC();
	effect efNext = GetFirstEffect(oPC);
	while (GetIsEffectValid(efNext)) {
		if ((GetEffectType(efNext) == 27)) {
			RemoveEffect(oPC, efNext);
		}
		efNext = GetNextEffect(oPC);
	}
	SetGlobalFadeIn(0.0, 2.0, 0.0, 0.0, 0.0);
}

void main() {
	object oEntering = GetEnteringObject();
	if ((GetEnteringObject() == GetFirstPC())) {
		if ((GetGlobalNumber("101PER_Sion_Arrives") > 0)) {
			PlayRoomAnimation("101PERzc", 1);
		}
		else {
			PlayRoomAnimation("101PERzc", 2);
		}
		if (GetLoadFromSaveGame()) {
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			SetFadeUntilScript();
			DelayCommand(2.0, SetGlobalFadeIn(1.0, 1.0, 0.0, 0.0, 0.0));
			return;
		}
		if (GetGlobalBoolean("PER_TURNINTO_T3M4")) {
			SetGlobalBoolean("PER_TURNINTO_T3M4", 0);
			DelayCommand(0.1, sub1());
		}
		if ((GetGlobalNumber("105PER_T3_End") == 1)) {
			SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0);
			SetGlobalNumber("105PER_T3_End", 2);
			object oAtton = GetObjectByTag("Atton", 0);
			DelayCommand(0.5, AssignCommand(oAtton, ClearAllActions()));
			DelayCommand(0.5, AssignCommand(oAtton, ActionStartConversation(oEntering, "101Atton", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
		}
		object oWP_wakeup_donnie = GetObjectByTag("WP_wakeup_donnie", 0);
		if ((GetIsObjectValid(oWP_wakeup_donnie) && GetLocalBoolean(oWP_wakeup_donnie, 29))) {
			PlayRoomAnimation("101per2b", 3);
		}
		else {
			if ((0 == GetGender(oEntering))) {
				SetGlobalBoolean("000_PLAYER_GENDER", 1);
				return;
			}
			SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
			SetFadeUntilScript();
		}
	}
}
