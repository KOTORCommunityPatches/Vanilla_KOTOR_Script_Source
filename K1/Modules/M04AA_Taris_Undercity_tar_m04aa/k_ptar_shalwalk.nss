#include "k_inc_generic"
#include "k_inc_debug"

void main() {
	
	Db_PostString("WALKING", 5, 5, 5.0);
	
	GN_WalkWayPoints();
}
