
//:: c_excfavor.nss
/*
    returns true if
    parameter 1 =
    0 The Exchange really dislikes player
    1 The Exchange dislikes player
    2 The Exchange is neutral towards player
    3 The Exchange likes player
    4 The Exchange really likes player
*/
//:: Created By: John Morgan

#include "k_inc_debug"
int StartingConditional()
{int ExcCon = GetScriptParameter (1);
int ExcFav = GetGlobalNumber("300NAR_Exchange_Favor");
switch (ExcCon)
{
    case 0:
        return (ExcFav <= -4);
    case 1:
        return (ExcFav >-4 && ExcFav <= -2);
    case 2:
        return (ExcFav >-2 && ExcFav <= 1);
    case 3:
        return (ExcFav >1 && ExcFav <= 3);
    case 4:
        return (ExcFav > 4);
       }
       return 0;
       }

