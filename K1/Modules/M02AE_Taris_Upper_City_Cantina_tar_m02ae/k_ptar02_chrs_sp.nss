#include "k_inc_generic"

void main() {
	
	int nUser = GetUserDefinedEventNumber();
	
	switch (nUser)
		{
			case 2000:
				ActionMoveToObject(GetObjectByTag("Noble021", 0));
			break;
		}
}
