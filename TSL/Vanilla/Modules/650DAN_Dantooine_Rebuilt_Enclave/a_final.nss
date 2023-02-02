void main() {
	SetOrientOnClick(OBJECT_SELF, 0);
	SetLockOrientationInDialog(OBJECT_SELF, 1);
	AssignCommand(OBJECT_SELF, ActionPlayAnimation(10083, 1.0, (-1.0)));
}
