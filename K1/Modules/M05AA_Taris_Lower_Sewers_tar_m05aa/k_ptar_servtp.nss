// Globals
	int intGLOB_1 = 0;
	int intGLOB_2 = 1;
	int intGLOB_3 = 2;
	int intGLOB_4 = 3;
	int intGLOB_5 = 4;
	int intGLOB_6 = 5;
	int intGLOB_7 = 6;
	int intGLOB_8 = 7;
	int intGLOB_9 = 8;
	int intGLOB_10 = 9;
	int intGLOB_11 = 10;
	int intGLOB_12 = 11;
	int intGLOB_13 = 12;
	int intGLOB_14 = 13;
	int intGLOB_15 = 14;
	int intGLOB_16 = 15;
	int intGLOB_17 = 16;
	int intGLOB_18 = 17;
	int intGLOB_19 = 18;
	int intGLOB_20 = 19;
	int intGLOB_21 = 1100;
	int intGLOB_22 = (-6);
	int intGLOB_23 = (-5);
	int intGLOB_24 = (-4);
	int intGLOB_25 = (-2);
	int intGLOB_26 = (-1);
	int intGLOB_27 = 0;

void main() {
	object oNPC;
	object oTar05_wpservc;
	int int1;
	oNPC = GetObjectByTag("tar05_servdrlck", 0);
	SetLocked(oNPC, 0);
	SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
	int1 = 0;
	while ((int1 < GetPartyMemberCount())) {
		if (GetIsObjectValid(oNPC = GetPartyMemberByIndex(int1))) {
			switch (int1) {
				case 1:
					oTar05_wpservc = GetObjectByTag("tar05_wpserva", 0);
					break;
				case 2:
					oTar05_wpservc = GetObjectByTag("tar05_wpservb", 0);
					break;
				default:
					oTar05_wpservc = GetObjectByTag("tar05_wpservc", 0);
					break;
			}
			DelayCommand(1.0, AssignCommand(oNPC, ClearAllActions()));
			DelayCommand(1.0, AssignCommand(oNPC, ActionJumpToObject(oTar05_wpservc, 0)));
		}
		(int1++);
	}
	DelayCommand(1.0, SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0));
}
