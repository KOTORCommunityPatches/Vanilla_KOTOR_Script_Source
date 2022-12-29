#include "k_inc_generic"

// Prototypes
void SetBool(int intParam1, int intParam2);

void SetBool(int intParam1, int intParam2) {
	SetLocalBoolean(OBJECT_SELF, intParam1, intParam2);
}

void main() {
	GN_SetListeningPatterns();
	SetBool(21, TRUE);
	SetBool(27, TRUE);
	ApplyEffectToObject(DURATION_TYPE_PERMANENT, EffectAssuredHit(), OBJECT_SELF, 0.0);
}