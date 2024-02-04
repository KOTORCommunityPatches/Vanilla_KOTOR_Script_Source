void main() {
	DelayCommand(0.1, AssignCommand(GetObjectByTag("VisasMarr", 0), ActionPlayAnimation(100, 1.0, 0.0)));
	DelayCommand(0.6, AssignCommand(GetObjectByTag("VisasMarr", 0), SetFacingPoint(GetPosition(GetObjectByTag("VisasFace", 0)))));
	DelayCommand(1.0, SetLockOrientationInDialog(GetObjectByTag("Visas", 0), 1));
}