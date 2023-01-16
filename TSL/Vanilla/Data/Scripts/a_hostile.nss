//:: FileName a_hostile
//:: Created By: Kevin Saunders
//:: Created On: 07/20/04
//::
//:: Object with Tag = ScriptStringParameter becomes hostile.
//  Modified: Tony Evans 9/9/04  (Added nInst parameter)
//  Modified: Tony Evans 9/15/04 (Added OBJECT_SELF default and nSane param)

void main()
{

    string sCritter = GetScriptStringParameter();
    int nInst = GetScriptParameter(1);
    int nSane = GetScriptParameter(2);

    object oTarg;

    if (sCritter == "") oTarg = OBJECT_SELF;
    else oTarg = GetObjectByTag(sCritter, nInst);

    if (!nSane) ChangeToStandardFaction(oTarg,STANDARD_FACTION_HOSTILE_1);
    else ChangeToStandardFaction(oTarg,STANDARD_FACTION_INSANE);
}
