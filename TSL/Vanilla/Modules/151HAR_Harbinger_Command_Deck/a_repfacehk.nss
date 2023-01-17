void main() {
	object oRepCapt = GetObjectByTag("RepCapt", 0);
	object oHK50 = GetObjectByTag("HK50", 0);
	DelayCommand(0.7, AssignCommand(oRepCapt, SetFacingPoint(GetPosition(GetObjectByTag("HK50", 0)))));
}

