void main() {
	
	object oForcefield = GetObjectByTag("tar05_forcefield", 0);
	
	AssignCommand(oForcefield, ActionOpenDoor(oForcefield));
}
