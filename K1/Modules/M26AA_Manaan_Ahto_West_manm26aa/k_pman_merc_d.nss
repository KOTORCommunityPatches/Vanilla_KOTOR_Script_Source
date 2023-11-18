void main() {
	
	int nUser = GetUserDefinedEventNumber();
	
	switch (nUser)
		{
			case 0:
				ActionPlayAnimation(ANIMATION_LOOPING_PAUSE_DRUNK, 1.0, 0.0);
				ActionPlayAnimation(ANIMATION_LOOPING_PAUSE_DRUNK, 1.0, 0.0);
				
				if ((Random(2) == 0))
					{
						ActionPlayAnimation(ANIMATION_LOOPING_PAUSE_TIRED, 1.0, 0.0);
					}
				
				if ((Random(2) == 0))
					{
						ActionPlayAnimation(ANIMATION_LOOPING_PAUSE_DRUNK, 1.0, 0.0);
					}
				
				if ((Random(2) == 0))
					{
						ActionPlayAnimation(ANIMATION_LOOPING_PAUSE_TIRED, 1.0, 0.0);
					}
				
				if ((Random(2) == 0))
					{
						ActionPlayAnimation(ANIMATION_LOOPING_PAUSE_DRUNK, 1.0, 0.0);
					}
				
				ActionPlayAnimation(ANIMATION_LOOPING_PAUSE_TIRED, 1.0, 0.0);
				ActionDoCommand(SignalEvent(OBJECT_SELF, EventUserDefined(0)));
			break;
			
			case 10:
				ActionForceMoveToObject(GetObjectByTag("man28aa_nilko_exit", 0));
				ActionDoCommand(DestroyObject(OBJECT_SELF));
				SetCommandable(FALSE, OBJECT_SELF);
			break;
		}
}
