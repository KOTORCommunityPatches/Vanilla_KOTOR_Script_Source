void main() {
	
	int nUser = GetUserDefinedEventNumber();
	
	if (nUser == 10)
		{
			ActionOpenDoor(OBJECT_SELF);
			ActionDoCommand(SignalEvent(GetObjectByTag("man26_cutsel01", 0), EventUserDefined(10)));
		}
}
