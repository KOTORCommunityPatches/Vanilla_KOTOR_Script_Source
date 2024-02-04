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
	sub2("SerrocoLeader");
	sub2("SerrocoThugVeteran");
	sub2("SerrocoThugCommon");
	sub2("SerrocoThug1");
}

void main() {
	SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0);
	DelayCommand(0.3, sub1());
	SetGlobalFadeIn(2.0, 1.0, 0.0, 0.0, 0.0);
}