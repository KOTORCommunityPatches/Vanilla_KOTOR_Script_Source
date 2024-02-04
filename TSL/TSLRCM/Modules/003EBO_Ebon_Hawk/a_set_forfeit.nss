void main() {
	int nParam1 = GetScriptParameter(1);
	object object1;
	object object2;
	object object3;
	switch (nParam1) {
		case 0:
			SetForfeitConditions((((1 | 2) | 4) | 16));
			break;
		case 1:
			SetForfeitConditions((((64 | 1) | 2) | 16));
			break;
		case 2:
			SetForfeitConditions((((64 | 128) | 1) | 16));
			break;
	}
}