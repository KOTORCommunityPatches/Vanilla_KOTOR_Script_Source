#include "k_inc_tar"

void main() {
	
	object oSelf = OBJECT_SELF;
	
	TAR_MarkForCleanup(OBJECT_SELF);
	
	TAR_PlotMoveObject(GetObjectByTag("ptar_wpnpcext", 0), FALSE);
}
