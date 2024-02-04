void main() {
	string sParam = GetScriptStringParameter();
	object object1 = GetObjectByTag(sParam, 0);
	AssignCommand(object1, ActionLockObject(object1));
	AssignCommand(object1, ActionCloseDoor(object1));
}