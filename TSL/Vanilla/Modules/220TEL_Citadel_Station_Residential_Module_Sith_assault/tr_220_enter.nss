// Prototypes
void sub1(object objectParam1);

void sub1(object objectParam1) {
	AssignCommand(objectParam1, ClearAllActions());
	AssignCommand(objectParam1, ActionPlayAnimation(19, 1.0, (-1.0)));
}

void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering == GetPartyLeader())) {
		if ((!GetGlobalBoolean("220TEL_Battle_Over"))) {
			int int2 = 0;
			while ((int2 < 5)) {
				{
					object oTsf_sold = GetObjectByTag("tsf_sold", 0);
					if (GetIsObjectValid(oTsf_sold)) {
						sub1(oTsf_sold);
					}
				}
				(int2++);
			}
		}
		object oTr_220_enter = GetObjectByTag("tr_220_enter", 0);
		if ((!GetLocalBoolean(oTr_220_enter, 29))) {
			SetLocalBoolean(oTr_220_enter, 29, 1);
			SetPartyLeader(0xFFFFFFFF);
			object oPC = GetFirstPC();
			object oTsf_lead = GetObjectByTag("tsf_lead", 0);
			AssignCommand(oPC, ClearAllActions());
			AssignCommand(oTsf_lead, ClearAllActions());
			DelayCommand(0.2, AssignCommand(oPC, ActionStartConversation(oTsf_lead, "", 0, 0, 1, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0)));
		}
	}
}
