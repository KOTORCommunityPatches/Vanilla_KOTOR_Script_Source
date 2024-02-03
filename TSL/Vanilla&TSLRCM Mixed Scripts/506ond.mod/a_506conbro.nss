void main() {
	object oSec_term_boom = GetObjectByTag("sec_term_boom", 0);
	object object3 = GetObjectByTag("sec_term_boom", 1);
	if (GetLocalBoolean(oSec_term_boom, 45)) {
		AssignCommand(oSec_term_boom, ActionPlayAnimation(201, 1.0, 0.0));
		AssignCommand(object3, ActionPlayAnimation(201, 1.0, 0.0));
	}
}

