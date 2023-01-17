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
	sub2("g_merc");
	sub2("npc_dopak");
	sub2("npc_nallek");
}

void main() {
	if ((GetGlobalNumber("601DAN_Battle_Mili") == 4)) {
		sub1();
	}
}

