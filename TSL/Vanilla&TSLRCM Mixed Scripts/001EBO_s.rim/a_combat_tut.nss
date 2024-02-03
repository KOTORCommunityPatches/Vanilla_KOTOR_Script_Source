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
	location locationGLOB_1;
	0;
	"sp_sensor_droid";

// Prototypes
void sub1();

void sub1() {
	0;
	"sp_sensor_droid";
}

void main() {
	int nParam1 = GetScriptParameter(1);
	int nParam2 = GetScriptParameter(2);
	object oSensor_droid;
	object oCont_sensor_drds = GetObjectByTag("cont_sensor_drds", 0);
	int int5;
	switch (nParam1) {
		case 0:
			AssignCommand(oCont_sensor_drds, ActionPlayAnimation(202, 1.0, 0.0));
			sub1();
			DelayCommand(1.0, sub1());
			DelayCommand(2.0, sub1());
			DelayCommand(3.0, sub1());
			DelayCommand(4.0, AssignCommand(oCont_sensor_drds, ActionPlayAnimation(203, 1.0, 0.0)));
			break;
		case 1:
			SetLocalBoolean(OBJECT_SELF, 60, 1);
			if (GetIsXBox()) {
				DelayCommand(1.0, AssignCommand(oCont_sensor_drds, ActionStartConversation(GetFirstPC(), "combat", 0, 1, 1, "", "", "", "", "", "", 0, (-1), 260, 0)));
			}
			else {
				DelayCommand(1.0, AssignCommand(oCont_sensor_drds, ActionStartConversation(GetFirstPC(), "combat", 0, 1, 1, "", "", "", "", "", "", 0, 10, 430, 0)));
			}
			break;
		case 2:
			AssignCommand(oCont_sensor_drds, ActionPlayAnimation(202, 1.0, 0.0));
			sub1();
			DelayCommand(1.0, sub1());
			DelayCommand(2.0, sub1());
			DelayCommand(3.0, sub1());
			DelayCommand(4.0, AssignCommand(oCont_sensor_drds, ActionPlayAnimation(203, 1.0, 0.0)));
			SetLocalBoolean(OBJECT_SELF, 60, 1);
			if (GetIsXBox()) {
				DelayCommand(5.0, AssignCommand(oCont_sensor_drds, ActionStartConversation(GetFirstPC(), "combat", 0, 1, 1, "", "", "", "", "", "", 0, (-1), 260, 0)));
			}
			else {
				DelayCommand(5.0, AssignCommand(oCont_sensor_drds, ActionStartConversation(GetFirstPC(), "combat", 0, 1, 1, "", "", "", "", "", "", 0, 10, 430, 0)));
			}
			break;
		case 3:
			while ((int5 < 4)) {
				oSensor_droid = GetObjectByTag("sensor_droid", int5);
				ChangeToStandardFaction(oSensor_droid, 1);
				(int5++);
			}
			int5 = 0;
			break;
	}
}

