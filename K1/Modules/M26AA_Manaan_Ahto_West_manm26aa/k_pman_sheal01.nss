void main() {
	
	ActionForceMoveToObject(GetObjectByTag("from26c", 0));
	ActionDoCommand(DestroyObject(OBJECT_SELF));
	SetCommandable(FALSE, OBJECT_SELF);
}
