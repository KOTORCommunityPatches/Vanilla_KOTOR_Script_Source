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
	int intGLOB_28 = 1;
	int intGLOB_29 = 1;
	int intGLOB_30 = 2;
	int intGLOB_31 = 3;
	int intGLOB_32 = 4;
	int intGLOB_33 = 5;
	int intGLOB_34 = 6;
	int intGLOB_35 = 7;
	int intGLOB_36 = 8;
	int intGLOB_37 = 9;
	int intGLOB_38 = 10;
	int intGLOB_39 = 11;
	int intGLOB_40 = 12;
	int intGLOB_41 = 13;
	int intGLOB_42 = 14;
	int intGLOB_43 = 15;

void main() {
	object object1 = OBJECT_SELF;
	if ((!GetLocalBoolean(object1, 55))) {
		SetLocalBoolean(object1, 55, 1);
		CreateItemOnObject("brokenitem", object1, (Random(5) + 1), 0);
	}
}
