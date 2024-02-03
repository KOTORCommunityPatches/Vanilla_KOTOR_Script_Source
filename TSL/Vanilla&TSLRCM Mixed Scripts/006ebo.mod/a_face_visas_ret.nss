struct structtype1 {
	float float1;
	float float3;
};

void main() {
	DelayCommand(0.1, AssignCommand(GetObjectByTag("VisasMarr", 0), ActionPlayAnimation(101, 1.0, 0.0)));
	DelayCommand(0.6, AssignCommand(GetObjectByTag("VisasMarr", 0), SetFacingPoint(GetPosition(GetFirstPC()))));
	DelayCommand(1.0, SetLockOrientationInDialog(GetObjectByTag("Visas", 0), 0));
}

