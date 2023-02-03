// Original could not recompile. DeNCS failed to declare EventUserDefined as an event.

void main() {
 
 	object oCalo = GetObjectByTag("calo031", 0);
 	event eOUD = EventUserDefined(2000);
 	
 	SignalEvent(oCalo, eOUD);
 }
