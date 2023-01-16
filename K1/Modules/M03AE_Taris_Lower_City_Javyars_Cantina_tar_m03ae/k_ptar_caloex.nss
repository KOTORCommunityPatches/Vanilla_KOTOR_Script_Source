// Could not recompile

void main() {
 
 	object oCalo = GetObjectByTag("calo031", 0);
 	event eOUD = EventUserDefined(2000);
 	
 	SignalEvent(oCalo, eOUD);
 }
