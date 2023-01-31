#include "k_inc_debug"

void main() {
	
	int nUser = GetUserDefinedEventNumber();
	
	switch (nUser) {
		case 2000:
			Db_PostString("OPENING CELL DOOR", 5, 5, 5.0);
			
			ClearAllActions();
			
			ActionOpenDoor(OBJECT_SELF);
			
			break;
	}
}