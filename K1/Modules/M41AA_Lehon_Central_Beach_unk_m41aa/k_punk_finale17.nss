void main() {
	
	AssignCommand(GetObjectByTag("bastila", 0), ActionMoveToObject(GetPCSpeaker(), FALSE, 2.0));
	AssignCommand(GetObjectByTag("zaalbar", 0), ClearAllActions());
}
