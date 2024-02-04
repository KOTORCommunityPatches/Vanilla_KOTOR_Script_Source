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
	string sParam = GetScriptStringParameter();
	object object1;
	if ((sParam == "")) {
		object1 = OBJECT_SELF;
	}
	else {
		object1 = GetObjectByTag(sParam, 0);
	}
	SetLocalBoolean(object1, 30, 0);
	SetLocalBoolean(object1, 31, 0);
	SetLocalBoolean(object1, 32, 0);
	SetLocalBoolean(object1, 33, 0);
	SetLocalBoolean(object1, 34, 0);
	SetLocalBoolean(object1, 35, 0);
	SetLocalBoolean(object1, 36, 0);
	SetLocalBoolean(object1, 37, 0);
	SetLocalBoolean(object1, 38, 0);
	SetLocalBoolean(object1, 39, 0);
	SetLocalBoolean(object1, 40, 0);
}

