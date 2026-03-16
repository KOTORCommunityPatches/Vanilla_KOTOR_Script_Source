
//:: c_excgap.nss
/*
    returns true if
    parameter 1 =
    0 The Exchange isn't aware of player
    1 The Exchange is aware of player
    2 The Exchange is watching player
    3 The Exchange is very interested in player
*/
//:: Created By: John Morgan

#include "k_inc_debug"
int StartingConditional()
{int ExcCon = GetScriptParameter (1);
int ExcGap = GetGlobalNumber("300NAR_Exchange_Gap");
switch (ExcCon)
{
    case 0:
        return (ExcGap == 0);
    case 1:
        return (ExcGap >0 && ExcGap <= 3);
    case 2:
        return (ExcGap >3 && ExcGap <= 6);
    case 3:
        return (ExcGap >6);
       }
       return 0;
       }
