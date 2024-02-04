// Prototypes
object sub1(string stringParam1, float floatParam2, float floatParam3, float floatParam4);

object sub1(string stringParam1, float floatParam2, float floatParam3, float floatParam4) {
	location location1 = Location(Vector(floatParam2, floatParam3, 0.0), floatParam4);
	return CreateObject(1, stringParam1, location1, 0);
}

void main() {
	CreateObject(1, "te_granvictim", GetLocation(GetObjectByTag("WP_GRAN_01", 0)), 0);
	CreateObject(1, "te_zhugthug1", GetLocation(GetObjectByTag("WP_ZHUG_01", 0)), 0);
	CreateObject(1, "te_zhugshooter", GetLocation(GetObjectByTag("WP_ZHUG_02", 0)), 0);
	CreateObject(1, "te_gandfind", GetLocation(GetObjectByTag("WP_GAND_01", 0)), 0);
	CreateObject(1, "te_gand1", GetLocation(GetObjectByTag("WP_GAND_02", 0)), 0);
	sub1("te_gand2", (-60.9), (-12.0), 90.0);
	sub1("te_gand3", (-58.6), (-13.6), 90.0);
	sub1("te_gand4", (-63.2), (-13.6), 90.0);
	sub1("te_gandfind2", (-72.65), (-16.8), 0.0);
	sub1("te_gandfind2", (-72.65), (-19.8), 0.0);
}