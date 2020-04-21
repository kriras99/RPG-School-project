using System.Collections.Generic;
using Engine.Factories;

namespace Engine.Models
{
    public class Monster : LivingEntity
    {
        private readonly List<ItemPercentage> _lootTable =
            new List<ItemPercentage>();

        public int ID { get; }
        public string ImageName { get; }
        public int RewardExperiencePoints { get; }

        public Monster(int id, string name, string imageName,
                       int maximumHitPoints,
                       GameItem currentWeapon,
                       int rewardExperiencePoints, int gold) :
            base(name, maximumHitPoints, maximumHitPoints, gold)
        {
            ID = id;
            ImageName = imageName;
            CurrentWeapon = currentWeapon;
            RewardExperiencePoints = rewardExperiencePoints;
        }

        public void AddItemToLootTable(int id, int percentage)
        {
            // Fjern posten fra loot-tabellen,
            // hvis den allerede indeholder en post med dette ID
            _lootTable.RemoveAll(ip => ip.ID == id);

            _lootTable.Add(new ItemPercentage(id, percentage));
        }

        public Monster GetNewInstance()
        {
            // Klon det her monster til et nyt monster objekt.
            Monster newMonster =
                new Monster(ID, Name, ImageName, MaximumHitPoints, CurrentWeapon,
                            RewardExperiencePoints, Gold);

            foreach (ItemPercentage itemPercentage in _lootTable)
            {

                // Klone loot-tabellen - selvom vi sandsynligvis ikke har brug for den
                newMonster.AddItemToLootTable(itemPercentage.ID, itemPercentage.Percentage);


                // put ting i det nye monsters inventar ved hjælp af loot-tabellen
                if (RandomNumberGenerator.NumberBetween(1, 100) <= itemPercentage.Percentage)
                {
                    newMonster.AddItemToInventory(ItemFactory.CreateGameItem(itemPercentage.ID));
                }
            }

            return newMonster;
        }
    }
}