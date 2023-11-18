void main() {
	
	ActionForceMoveToObject(GetObjectByTag("man28aa_nilko_exit", 0));
	ActionDoCommand(DestroyObject(OBJECT_SELF));
	SetCommandable(FALSE, OBJECT_SELF);
}
