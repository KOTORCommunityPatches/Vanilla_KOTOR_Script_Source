void main() {
	
	object oStampy = GetObjectByTag("tar05_stampy", 0);
	object oEntering = GetEnteringObject();
	
	if (GetIsPC(oEntering))
		{
			SignalEvent(oStampy, EventUserDefined(1100));
		}
}