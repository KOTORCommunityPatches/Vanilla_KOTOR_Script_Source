// Prototypes
void sub2(string stringParam1);
void sub1();

void sub2(string stringParam1) {
	int int1 = 0;
	object object1 = GetObjectByTag(stringParam1, int1);
	while (GetIsObjectValid(object1)) {
		DestroyObject(object1, 0.0, 0, 0.0, 0);
		object1 = GetObjectByTag(stringParam1, (int1++));
	}
}

void sub1() {
	sub2("npc_gerevick");
	sub2("dan_ctz_male");
	sub2("dan_ctz_f2");
	sub2("dan_ctz_f1");
	sub2("602_receptionist");
	sub2("npc_suulru");
	sub2("npc_adum");
	sub2("g_staff_f");
	sub2("g_militia");
	if ((GetGlobalNumber("000_Disciple_Joined") == 0)) {
		sub2("disciple");
	}
}

void main() {
	sub1();
}