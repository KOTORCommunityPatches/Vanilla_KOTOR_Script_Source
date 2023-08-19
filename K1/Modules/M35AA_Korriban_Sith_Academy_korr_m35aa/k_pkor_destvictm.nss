void main() {
	
	object oVictim = GetObjectByTag("kor35_victim", 0);
	
	if (GetIsObjectValid(oVictim))
		{
			DestroyObject(oVictim);
		}
}
