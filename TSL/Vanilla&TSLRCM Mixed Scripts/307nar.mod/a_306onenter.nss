struct structtype1 {
	float float1;
	float float3;
};

void main() {
	object oEntering = GetEnteringObject();
	if ((oEntering != GetFirstPC())) {
		return;
	}
	if ((GetGlobalNumber("301NAR_Domo") != 0)) {
		object oDancer = GetObjectByTag("Dancer", 0);
		object object6 = GetObjectByTag("Dancer", 1);
		object object8 = GetObjectByTag("Dancer", 2);
		DestroyObject(oDancer, 0.0, 0, 0.0, 0);
		DestroyObject(object6, 0.0, 0, 0.0, 0);
		DestroyObject(object8, 0.0, 0, 0.0, 0);
	}
	if ((GetGlobalNumber("301NAR_Domo") == 3)) {
		DestroyObject(GetObjectByTag("TwilekDomo", 0), 0.0, 0, 0.0, 0);
	}
	object oZhugcut1 = CreateObject(1, "zhugcut1", Location(Vector(50.63977, (-35.23206), 9.66566), 0.0), 0);
	CreateObject(1, "zhugcut2", Location(Vector(54.32141, (-36.10392), 9.66558), 0.0), 0);
	AssignCommand(oZhugcut1, ActionStartConversation(oEntering, "zhugcut1", 0, 0, 0, "", "", "", "", "", "", 0, 0xFFFFFFFF, 0xFFFFFFFF, 0));
}

