// Globals
	int intGLOB_1 = 0;
	int intGLOB_2 = 1;
	int intGLOB_3 = 2;
	int intGLOB_4 = 34;
	int intGLOB_5 = 35;
	int intGLOB_6 = 36;
	int intGLOB_7 = 37;
	int intGLOB_8 = 38;
	int intGLOB_9 = 39;
	int intGLOB_10 = 41;
	int intGLOB_11 = 42;
	int intGLOB_12 = 46;
	int intGLOB_13 = 47;
	int intGLOB_14 = 1;
	int intGLOB_15 = 2;
	int intGLOB_16 = 3;
	int intGLOB_17 = 20;
	int intGLOB_18 = 21;
	int intGLOB_19 = 22;
	int intGLOB_20 = 23;
	int intGLOB_21 = 24;
	int intGLOB_22 = 25;
	int intGLOB_23 = 26;
	int intGLOB_24 = 27;
	int intGLOB_25 = 28;
	int intGLOB_26 = 29;
	int intGLOB_27 = 30;
	int intGLOB_28 = 31;
	int intGLOB_29 = 32;
	int intGLOB_30 = 33;
	int intGLOB_31 = 40;
	int intGLOB_32 = 43;
	int intGLOB_33 = 44;
	int intGLOB_34 = 45;
	int intGLOB_35 = 48;
	int intGLOB_36 = 49;
	int intGLOB_37 = 50;
	int intGLOB_38 = 51;
	int intGLOB_39 = 52;
	int intGLOB_40 = 53;
	int intGLOB_41 = 54;
	int intGLOB_42 = 55;
	int intGLOB_43 = 56;
	int intGLOB_44 = 57;
	int intGLOB_45 = 58;
	int intGLOB_46 = 1;
	int intGLOB_47 = 2;
	int intGLOB_48 = 3;
	int intGLOB_49 = 4;
	int intGLOB_50 = 0;
	int intGLOB_51 = 1;
	int intGLOB_52 = 2;
	int intGLOB_53 = 3;
	int intGLOB_54 = 4;
	int intGLOB_55 = 5;
	int intGLOB_56 = 6;
	int intGLOB_57 = 7;
	int intGLOB_58 = 8;
	int intGLOB_59 = 9;
	int intGLOB_60 = 10;
	int intGLOB_61 = 1;
	int intGLOB_62 = 2;
	int intGLOB_63 = 0;
	int intGLOB_64 = 1;
	int intGLOB_65 = 2;
	int intGLOB_66 = 3;
	int intGLOB_67 = 4;
	int intGLOB_68 = 3212;
	int intGLOB_69 = 3086;
	int intGLOB_70 = 2904;
	int intGLOB_71 = 2883;
	string stringGLOB_1 = "Never Raced";

// Prototypes
int sub2(object objectParam1, int intParam2);
int sub1();

int sub2(object objectParam1, int intParam2) {
	int nLocalBool;
	if ((((intParam2 >= 0) && (intParam2 <= 9)) && GetIsObjectValid(objectParam1))) {
		nLocalBool = GetLocalBoolean(objectParam1, intParam2);
		if ((nLocalBool > 0)) {
			return 1;
		}
	}
	return 0;
}

int sub1() {
	return sub2(OBJECT_SELF, intGLOB_51);
}

int StartingConditional() {
	if ((sub1() == 1)) {
		return 1;
	}
	else {
		return 0;
	}
}

