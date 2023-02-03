// Original could not recompile. DeNCS failed to declare EventUserDefined as an event.

void main() {
	
	object oShaardan = GetObjectByTag("kor33_shaardan", 0);
	
	if (GetEnteringObject() == oShaardan)
		{
			object oStudent1 = GetObjectByTag("k33_shastudent1", 0);
			object oStudent2 = GetObjectByTag("k33_shastudent2", 0);
			object oStudent3 = GetObjectByTag("k33_shastudent3", 0);
			event eUser = EventUserDefined(101);
			
			if ((!GetIsDead(oStudent1)))
				{
					SignalEvent(oStudent1, eUser);
				}
			
			if ((!GetIsDead(oStudent2)))
				{
					SignalEvent(oStudent2, eUser);
				}
			
			if ((!GetIsDead(oStudent3)))
				{
					SignalEvent(oStudent3, eUser);
				}
		}
}
