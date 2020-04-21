using System;
using Engine.EventArgs;

namespace Engine.Services
{
    public class MessageBroker
    {
        // Brug "Singleton" designmønster til denne klasse,
        // for at sikre, at alt i spillet sender beskeder gennem dette ene objekt.
        private static readonly MessageBroker s_messageBroker =
            new MessageBroker();

        private MessageBroker()
        {
        }

        public event EventHandler<GameMessageEventArgs> OnMessageRaised;

        public static MessageBroker GetInstance()
        {
            return s_messageBroker;
        }

        internal void RaiseMessage(string message)
        {
            OnMessageRaised?.Invoke(this, new GameMessageEventArgs(message));
        }
    }
}
