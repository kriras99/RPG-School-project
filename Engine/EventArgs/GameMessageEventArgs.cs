using System;
using System.Collections.Generic;
using System.Text;

namespace Engine.EventArgs
{
    // Samme som "CombatVictory", dog er det bare mere generelle beskeder.
    public class GameMessageEventArgs : System.EventArgs
    {
        public string Message { get; private set; }

        public GameMessageEventArgs(string message)
        {
            Message = message;
        }

    }
}
