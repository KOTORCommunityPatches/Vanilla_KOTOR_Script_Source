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

// Prototypes
int sub3();
int sub2();
int sub1();

int sub3() {
	int nAlign = GetGoodEvilValue(GetPCSpeaker());
	if (((nAlign >= 0) && (nAlign < 20))) {
		return 1;
	}
	else {
		return 0;
	}
}

int sub2() {
	int nAlign = GetGoodEvilValue(GetPCSpeaker());
	if (((nAlign >= 20) && (nAlign < 40))) {
		return 1;
	}
	else {
		return 0;
	}
}

int sub1() {
	if ((sub2() || sub3())) {
		return 1;
	}
	else {
		return 0;
	}
}

void main() {
	object oVrook = GetObjectByTag("Vrook", 0);
	object oKavar = GetObjectByTag("Kavar", 0);
	object oKreia = GetObjectByTag("Kreia", 0);
	object oZezkaiell = GetObjectByTag("Zezkaiell", 0);
	AssignCommand(oVrook, ActionJumpToObject(GetObjectByTag("WP_VROOK_2", 0), 0));
	AssignCommand(oKavar, ActionJumpToObject(GetObjectByTag("WP_KAVAR", 0), 0));
	AssignCommand(oZezkaiell, ActionJumpToObject(GetObjectByTag("WP_ZEZKAIELL", 0), 0));
	AssignCommand(oVrook, ActionPlayAnimation(26, 1.0, (-1.0)));
	AssignCommand(oKavar, ActionPlayAnimation(26, 1.0, (-1.0)));
	AssignCommand(oZezkaiell, ActionPlayAnimation(26, 1.0, (-1.0)));
	if (sub1()) {
		GrantSpell(177, GetFirstPC());
		DelayCommand(0.5, DisplayMessageBox(136054, "lbl_idside"));
	}
	else {
		GrantSpell(180, GetFirstPC());
		DelayCommand(0.5, DisplayMessageBox(136053, "lbl_ilside"));
	}
}

