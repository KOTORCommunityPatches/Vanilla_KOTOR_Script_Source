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
	sub2("g_merc_east");
	sub2("g_merc_west");
}

void main() {
	int nParam1 = GetScriptParameter(1);
	switch (nParam1) {
		case 1:
			sub1();
			break;
		case 2:
			break;
	}
}

