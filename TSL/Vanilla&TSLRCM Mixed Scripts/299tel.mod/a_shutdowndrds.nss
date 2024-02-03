// Prototypes
void sub1();

void sub1() {
	int int1 = 0;
	string string1 = "hk51_1";
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
	string string1 = "hk51";
	object object1 = GetObjectByTag(string1, int1);
	while ((object1 != OBJECT_INVALID)) {
		ChangeToStandardFaction(object1, 5);
		ChangeToStandardFaction(GetObjectByTag("HK517", 0), 5);
		DelayCommand(0.4, sub1());
		DelayCommand(0.4, AssignCommand(object1, ActionPlayAnimation(26, 1.0, (-1.0))));
		DelayCommand(0.4, AssignCommand(GetObjectByTag("HK517", 0), ActionPlayAnimation(26, 1.0, (-1.0))));
		DelayCommand(0.4, AssignCommand(GetObjectByTag("HK51cs", 0), ActionPlayAnimation(26, 1.0, (-1.0))));
		(int1++);
		object1 = GetObjectByTag(string1, int1);
	}
	AurPostString((("a_neuter_droid: " + IntToString(int1)) + " droids have been shut down."), 5, 5, 5.0);
}

