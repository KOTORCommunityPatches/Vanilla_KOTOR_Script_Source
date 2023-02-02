// Prototypes
void sub1(string stringParam1);

void sub1(string stringParam1) {
	object object1 = GetObjectByTag(stringParam1, 0);
	if (GetIsObjectValid(object1)) {
		DestroyObject(object1, 0.0, 0, 0.0, 0);
	}
	else {
		AurPostString((("a_deletevossk: " + stringParam1) + " does not exist."), 5, 5, 2.0);
	}
}

void main() {
	sub1("Vossk_Gand1");
	sub1("Vossk_Gand2");
	sub1("Vossk_Gand3");
	sub1("Vossk_Zhug2");
	sub1("Vossk_Zhug3");
	sub1("Vossk_Zhug4");
	sub1("Vossk_Zhug5");
	sub1("Vossk_Zhug6");
	sub1("Vossk_Azanti");
	sub1("Vossk_TwinSun1");
	sub1("Vossk_TwinSun2");
	sub1("Vossk_Mira");
	sub1("Vossk_Hanharr");
}
