void main() {
	
	object oEntering = GetEnteringObject();
	string sTag = GetTag(oEntering);
	
	if (sTag == "outcastman046" || sTag == "outcastwoman043")
		{
			DestroyObject(oEntering);
		}
}