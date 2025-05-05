#include "k_inc_generic"

void main() {
	
	SignalEvent(GetObjectByTag("tar02_sithcommander", 0), EventUserDefined(3000));
	SignalEvent(GetObjectByTag("tar02_sithtrooper", 0), EventUserDefined(3000));
	SignalEvent(GetObjectByTag("tar02_sithtrooper2", 0), EventUserDefined(3000));
}
