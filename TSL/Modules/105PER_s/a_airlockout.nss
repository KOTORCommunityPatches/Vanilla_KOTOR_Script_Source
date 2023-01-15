// Byte code does not match

// Prototypes
void sub1();

void sub1() {
	int nPartyCount = GetPartyMemberCount();
	int int3;
	effect effect1 = EffectDisguise(279);
	int3 = 0;
	while ((int3 < nPartyCount)) {
		{
			object oNPC = GetPartyMemberByIndex(int3);
			ApplyEffectToObject(2, effect1, oNPC, 0.0);
		}
		(int3++);
	}
}

void main() {
	if ((GetGlobalBoolean("G_PER_In_Space_Suit") == 1)) {
		ActionOpenDoor(OBJECT_SELF);
		return;
	}
	object object1 = GetItemPossessedBy(GetFirstPC(), "spacesuit");
	if ((!GetIsObjectValid(object1))) {
		BarkString(OBJECT_SELF, 48577);
		return;
	}
	object oNearestAirlockInnerDoor_105PER = GetNearestObjectByTag("AirlockInnerDoor_105PER", OBJECT_SELF, 1);
	SetPlayerRestrictMode(1);
	SetGlobalBoolean("G_PER_In_Space_Suit", 1);
	NoClicksFor(1.5);
	SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
	DelayCommand(1.0, sub1());
	DelayCommand(1.5, SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0));
	DelayCommand(1.0, AssignCommand(oNearestAirlockInnerDoor_105PER, ActionCloseDoor(oNearestAirlockInnerDoor_105PER)));
}

