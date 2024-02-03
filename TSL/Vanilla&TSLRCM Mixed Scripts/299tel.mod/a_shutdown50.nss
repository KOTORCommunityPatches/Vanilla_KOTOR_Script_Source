// Prototypes
void sub1();

void sub1() {
	int int1 = 0;
	string string1 = "hk50_1";
	object object1 = GetObjectByTag(string1, int1);
	while ((object1 != OBJECT_INVALID)) {
		ChangeToStandardFaction(object1, 5);
		DelayCommand(1.5, AssignCommand(object1, ActionPlayAnimation(26, 1.0, (-1.0))));
		(int1++);
		object1 = GetObjectByTag(string1, int1);
	}
	AurPostString((("a_neuter_droid: " + IntToString(int1)) + " droids have been shut down."), 5, 5, 5.0);
}

void main() {
	int int1 = 0;
	string string1 = "hk50";
	object object1 = GetObjectByTag(string1, int1);
	ChangeToStandardFaction(GetObjectByTag("HK50cs", 0), 5);
	DelayCommand(0.4, sub1());
	DestroyObject(GetObjectByTag("HK50cs", 0), 0.0, 1, 0.0, 0);
	ChangeToStandardFaction(GetObjectByTag("HK50cs1", 0), 5);
	ChangeToStandardFaction(GetObjectByTag("HK50cs2", 0), 5);
	DelayCommand(0.4, AssignCommand(GetObjectByTag("HK50cs1", 0), ActionPlayAnimation(26, 1.0, (-1.0))));
	DelayCommand(0.4, AssignCommand(GetObjectByTag("HK50cs2", 0), ActionPlayAnimation(26, 1.0, (-1.0))));
	DelayCommand(0.4, AssignCommand(GetObjectByTag("HK50cs3", 0), ActionPlayAnimation(26, 1.0, (-1.0))));
	DelayCommand(0.4, AssignCommand(GetObjectByTag("HK50T2", 0), ActionPlayAnimation(26, 1.0, (-1.0))));
	DelayCommand(0.4, DestroyObject(GetObjectByTag("HK50T3", 0), 0.0, 1, 0.0, 0));
	DelayCommand(0.4, AssignCommand(GetObjectByTag("HK50T1", 0), ActionPlayAnimation(26, 1.0, (-1.0))));
	DelayCommand(0.4, DestroyObject(GetObjectByTag("HK50M1", 0), 0.0, 1, 0.0, 0));
	DelayCommand(0.4, AssignCommand(GetObjectByTag("HK50M2", 0), ActionPlayAnimation(26, 1.0, (-1.0))));
	DelayCommand(0.4, AssignCommand(GetObjectByTag("HK50M3", 0), ActionPlayAnimation(26, 1.0, (-1.0))));
	DelayCommand(0.4, DestroyObject(GetObjectByTag("HK50Int1", 0), 0.0, 1, 0.0, 0));
	DelayCommand(0.4, AssignCommand(GetObjectByTag("HK50Int2", 0), ActionPlayAnimation(26, 1.0, (-1.0))));
	DelayCommand(0.4, AssignCommand(GetObjectByTag("HK50Int3", 0), ActionPlayAnimation(26, 1.0, (-1.0))));
	DelayCommand(0.4, AssignCommand(GetObjectByTag("HK50Vic", 0), ActionPlayAnimation(20, 1.0, (-1.0))));
	DelayCommand(0.4, AssignCommand(GetObjectByTag("HK50IntV", 0), ActionPlayAnimation(20, 1.0, (-1.0))));
	while ((object1 != OBJECT_INVALID)) {
		ChangeToStandardFaction(object1, 5);
		DelayCommand(0.4, AssignCommand(object1, ActionPlayAnimation(26, 1.0, (-1.0))));
		(int1++);
		object1 = GetObjectByTag(string1, int1);
	}
	AurPostString((("a_neuter_droid: " + IntToString(int1)) + " droids have been shut down."), 5, 5, 5.0);
}

