// Prototypes
void sub1();

void sub1() {
	int int1 = 0;
	while ((int1 < 3)) {
		{
			object oNPC = GetPartyMemberByIndex(int1);
			if (GetIsObjectValid(oNPC)) {
			if ((GetCurrentHitPoints(oNPC) <= 0)) {
				effect efResurrect = EffectResurrection(100);
				ApplyEffectToObject(0, efResurrect, oNPC, 0.0);
			}
			}
		}
		(int1++);
	}
}

void main() {
	object oEntering = GetEnteringObject();
	if ((!GetIsPartyLeader(oEntering))) {
		return;
	}
	if (GetLocalBoolean(OBJECT_SELF, 40)) {
		return;
	}
	SetLocalBoolean(OBJECT_SELF, 40, 1);
	if ((!GetIsXBox())) {
		sub1();
		SetPartyLeader(0xFFFFFFFF);
	}
	DelayCommand(0.1, AssignCommand(GetObjectByTag("invis_vaklu", 0), ActionStartConversation(GetFirstPC(), "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
}
