// Globals
	int intGLOB_1 = 1001;
	int intGLOB_2 = 1002;
	int intGLOB_3 = 1003;
	int intGLOB_4 = 1004;
	int intGLOB_5 = 1005;
	int intGLOB_6 = 1006;
	int intGLOB_7 = 1007;
	int intGLOB_8 = 1008;
	int intGLOB_9 = 1009;
	int intGLOB_10 = 1010;
	int intGLOB_11 = 1011;
	int intGLOB_12 = 1012;
	int intGLOB_13 = 2001;
	int intGLOB_14 = 2002;
	int intGLOB_15 = 2003;
	int intGLOB_16 = 2004;
	int intGLOB_17 = 2005;
	int intGLOB_18 = 2006;
	int intGLOB_19 = 2007;
	int intGLOB_20 = 2008;
	int intGLOB_21 = 2009;
	int intGLOB_22 = 2010;
	int intGLOB_23 = 2011;
	int intGLOB_24 = 2012;
	int intGLOB_25 = 2013;
	int intGLOB_26 = 2014;
	int intGLOB_27 = 3001;
	int intGLOB_28 = 3002;
	int intGLOB_29 = 3003;
	int intGLOB_30 = 4001;

// Prototypes
void sub1(string stringParam1);

void sub1(string stringParam1) {
	object object1 = GetObjectByTag(stringParam1, 0);
	if ((!GetIsObjectValid(object1))) {
		return;
	}
	AurPostString("Perform Revive.", 5, 6, 10.0);
	if ((((!GetHasFeat(204, object1)) && (!GetHasFeat(236, object1))) && (!GetHasFeat(237, object1)))) {
		AurPostString("No Spirit.", 5, 7, 10.0);
		return;
	}
	int int5 = 0;
	int int6 = 0;
	object oNPC = GetPartyMemberByIndex(int6);
	AurPostString("Got first party member.", 5, 7, 10.0);
	while (GetIsObjectValid(oNPC)) {
		if (((GetCurrentHitPoints(oNPC) > 0) && GetIsInCombat(oNPC, 1))) {
			AurPostString("Found a valid party member.", 5, (8 + int6), 10.0);
			int5 = 1;
			break;
		}
		(int6++);
		AurPostString("Getting next party member.", 8, (8 + int6), 10.0);
		oNPC = GetPartyMemberByIndex(int6);
	}
	if (int5) {
		AurPostString("Party not dead 2.", 5, 7, 10.0);
		if ((GetCurrentHitPoints(object1) < 1)) {
			AurPostString("HP less than 1.", 5, 8, 10.0);
			int int11 = 0;
			if (GetHasFeat(237, object1)) {
				int11 = 30;
			}
			else {
				if (GetHasFeat(236, object1)) {
					int11 = 20;
				}
				else {
					if (GetHasFeat(204, object1)) {
						int11 = 10;
					}
				}
			}
			ApplyEffectToObject(0, EffectResurrection(int11), object1, 0.0);
			ClearAllActions();
		}
		else {
			AurPostString("HP 1 or greater.", 5, 8, 10.0);
		}
		DelayCommand(4.0, ExecuteScript("k_ai_master", object1, intGLOB_15));
	}
	else {
		AurPostString("Party dead.", 5, 7, 10.0);
		object oArea = GetArea(object1);
		AssignCommand(oArea, DelayCommand(5.0, sub1(stringParam1)));
	}
}

void main() {
	string string1 = GetTag(OBJECT_SELF);
	object oArea = GetArea(OBJECT_SELF);
	AssignCommand(oArea, DelayCommand(8.0, sub1(string1)));
}

