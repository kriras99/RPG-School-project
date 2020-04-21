using System;
using System.Collections.Generic;
using System.Text;

namespace Engine.Models
{
    // Bruges når vi beregner hvor mange procent chance der er for at få et bestemt object.
    public class ItemPercentage
    {
        public int ID { get; }
        public int Percentage { get; }

        public ItemPercentage(int id, int percentage)
        {
            ID = id;
            Percentage = percentage;
        }
    }
}
