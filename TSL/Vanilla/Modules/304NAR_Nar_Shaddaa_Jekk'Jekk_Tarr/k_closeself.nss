// Prototypes
void sub1();

void sub1() {
	int int1 = 0;
	location location1 = GetLocation(OBJECT_SELF);
	object oShapeObject = GetFirstObjectInShape(2, 4.0, location1, 0, 1, [0.0,0.0,0.0]);
	if (GetIsObjectValid(oShapeObject)) {
		AurPostString(GetTag(oShapeObject), 6, 6, 1.0);
		DelayCommand(3.0, sub1());
	}
	else {
		AssignCommand(OBJECT_SELF, ActionCloseDoor(OBJECT_SELF));
	}
}

void main() {
	DelayCommand(3.0, sub1());
}
