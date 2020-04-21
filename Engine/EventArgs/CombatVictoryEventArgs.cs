using System;
using System.Collections.Generic;
using System.Text;

namespace Engine.EventArgs
{
    // Selvom den er ret tom, så er den med til at gøre så,
    // at den giver dig besked når du har dræbt over et monster,
    // derfor kalder vi den "CombatVictory". Og at dræbe monsteret er et "event".
    public class CombatVictoryEventArgs : System.EventArgs
    {
    }
}
