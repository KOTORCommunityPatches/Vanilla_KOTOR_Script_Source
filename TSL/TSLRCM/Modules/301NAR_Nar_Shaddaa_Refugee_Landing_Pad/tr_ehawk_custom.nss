// Prototypes
void sub2();
int sub1();

void sub2() {
	SetPartyLeader(0xFFFFFFFF);
	int int2 = 0;
	while ((int2 < 12)) {
		if (IsNPCPartyMember(int2)) {
			RemoveNPCFromPartyToBase(int2);
		}
		(int2++);
	}
}

int sub1() {
	return (GetIsObjectValid(GetObjectByTag("Mira", 0)) || GetIsObjectValid(GetObjectByTag("Hanharr", 0)));
}

void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering == GetPartyLeader())) {
		int int1 = 3;
		int int2 = 3;
		SetGlobalNumber("003EBO_BACKGROUND", int1);
		SetGlobalNumber("003EBO_RETURN_DEST", int2);
		if ((GetGlobalNumber("301NAR_Red_Eclipse_At") == 1)) {
			StartNewModule("004EBO", "WP_from_outside", "", "", "", "", "", "");
			return;
		}
		else {
			if ((((GetFirstPC() == GetObjectByTag("Atton", 0)) && GetIsObjectValid(GetObjectByTag("T3M4", 0))) && sub1())) {
				BarkString(OBJECT_INVALID, 134357, 0xFFFFFFFF, 0xFFFFFFFF);
				return;
			}
			else {
				if (((GetGlobalNumber("301NAR_T3_Sold") > 0) && (GetGlobalNumber("303NAR_T3_Mission") == 0))) {
					BarkString(OBJECT_INVALID, 136058, 0xFFFFFFFF, 0xFFFFFFFF);
					return;
				}
				else {
					if (((!GetGlobalNumber("351NAR_G0T0_Ship")) && ((GetGlobalNumber("300NAR_Bounty_Attack") == 1) || (GetGlobalNumber("300NAR_Bounty_Attack") == 2)))) {
						BarkString(OBJECT_INVALID, 130719, 0xFFFFFFFF, 0xFFFFFFFF);
						return;
					}
					else {
						if ((((((!GetGlobalBoolean("300NAR_Visquis_Call")) && (GetJournalEntry("LandingRights") >= 90)) && (GetGlobalNumber("302NAR_Entered") == 1)) && (GetGlobalNumber("303NAR_Entered") == 1)) && (GetGlobalNumber("300NAR_Exchange_Gap") >= 8))) {
							BarkString(OBJECT_INVALID, 130719, 0xFFFFFFFF, 0xFFFFFFFF);
							return;
						}
						else {
							SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
							DelayCommand(1.0, sub2());
							DelayCommand(2.0, StartNewModule("003EBO", "WP_from_outside", "", "", "", "", "", ""));
							return;
						}
					}
				}
			}
		}
	}
}