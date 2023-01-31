void main() {
	
	object oVictim = GetObjectByTag("kor33b_victim1", 0);
	vector vVictim = GetPosition(oVictim);
	
	SetFacingPoint(vVictim);
}