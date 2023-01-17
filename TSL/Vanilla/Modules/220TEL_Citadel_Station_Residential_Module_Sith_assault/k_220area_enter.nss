// Prototypes
void sub1(object objectParam1);

void sub1(object objectParam1) {
	AssignCommand(objectParam1, ClearAllActions());
	SetFakeCombatState(objectParam1, 1);
	AssignCommand(objectParam1, ActionPlayAnimation(19, 1.0, (-1.0)));
}

void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering == GetFirstPC())) {
		if (GetGlobalBoolean("220TEL_Battle_Over")) {
			return;
		}
		int int2 = 0;
		while ((int2 < 5)) {
			{
				object object4 = GetObjectByTag("", 0);
				if (GetIsObjectValid(object4)) {
					sub1(object4);
				}
			}
			(int2++);
		}
	}
}

