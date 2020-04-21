using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;
using System.Threading.Tasks;
using Engine.Models;
using Engine.Factories;

namespace Engine.Models
{
    public class Location
    {
        public int XCoordinate { get; }
        public int YCoordinate { get; }
        public string Name { get; }
        public string Description { get; }
        public string ImageName { get; }

        public List<Quest> QuestsAvailableHere { get; } = new List<Quest>();

        public List<MonsterEncounter> MonstersHere { get; } =
            new List<MonsterEncounter>();

        public Trader TraderHere { get; set; }

        public Location(int xCoordinate, int yCoordinate, string name, string description, string imageName)
        {
            XCoordinate = xCoordinate;
            YCoordinate = yCoordinate;
            Name = name;
            Description = description;
            ImageName = imageName;
        }

        public void AddMonster(int monsterID, int chanceOfEncountering)
        {
            if (MonstersHere.Exists(m => m.MonsterID == monsterID))
            {
                
                // Det her monster er allerede sat in på lokalitionerne.
                // So vi ændre "ChanceofEnountering" med et nyt nummer.
                MonstersHere.First(m => m.MonsterID == monsterID)
                            .ChanceOfEncountering = chanceOfEncountering;
            }
            else
            {
                // This monster is not already at this location, so add it.
                MonstersHere.Add(new MonsterEncounter(monsterID, chanceOfEncountering));
            }
        }

        public Monster GetMonster()
        {
            if (!MonstersHere.Any())
            {
                return null;
            }

            

            int totalChances = MonstersHere.Sum(m => m.ChanceOfEncountering);

            
            // tager et random tal mellem 1 og totalen (Som ikke er 100 i det her tilfælde.)
            int randomNumber = RandomNumberGenerator.NumberBetween(1, totalChances);

            
            // går i loop igennem monster listen,
            // hvor den smider Monsteres procent chance for at være der i "runningTotal" variablen.
            // når det random nummer er mindre end "runningTotal",
            // så er det, det monster der kommer.
            int runningTotal = 0;

            foreach (MonsterEncounter monsterEncounter in MonstersHere)
            {
                runningTotal += monsterEncounter.ChanceOfEncountering;

                if (randomNumber <= runningTotal)
                {
                    return MonsterFactory.GetMonster(monsterEncounter.MonsterID);
                }
            }

            // Hvis der opstår et problem, send sidste monster på listen ind.
            return MonsterFactory.GetMonster(MonstersHere.Last().MonsterID);
        }
    }

}
