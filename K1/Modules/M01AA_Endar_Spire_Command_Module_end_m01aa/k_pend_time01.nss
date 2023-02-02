#include "k_inc_end"

// Prototypes
void sub4(int intParam1);
int sub1();


void sub4(int intParam1) {
	UT_SetPlotBooleanFlag(GetTrask(), 2, intParam1);
}

int sub1() {
	return UT_GetPlotBooleanFlag(GetTrask(), 2);
}

void main() {
	object object1 = OBJECT_SELF;
	if ((sub1() == 0)) {
		sub4(1);
		DelayCommand(20.0, SignalEvent(object1, EventUserDefined(100)));
	}
}
