void main() {
	
	object oWP_Arena2 = GetObjectByTag("tar02_wpopparena2", 0);
	
	ClearAllActions();
	
	ActionDoCommand(SetFacingPoint(GetPosition(oWP_Arena2)));
}
