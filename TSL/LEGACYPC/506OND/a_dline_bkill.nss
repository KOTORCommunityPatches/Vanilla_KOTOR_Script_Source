void main() {
	object oFf_outer = GetObjectByTag("ff_outer", 0);
	SetLocked(oFf_outer, 1);
	AssignCommand(oFf_outer, ActionOpenDoor(oFf_outer));
}

