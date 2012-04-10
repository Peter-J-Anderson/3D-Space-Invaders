using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Audio;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.GamerServices;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using Microsoft.Xna.Framework.Media;
using Space_Invaders_Characters;
using Defence_Bunker_Framework;

namespace Game_Level
{
    public class Level
    {
        // Level attributes
        int level { get; set; }
        
        // Movement speed of aliens
        public float alien_Speed { get; set; }
        public int aliens_Killed { get; private set; }
        
        // How often all the aliens shoot (e.g. one from all the aliens per second)
        public float alien_Fire_Rate { get; set; }
        
        // Movement speed of the Lasers
        public float Laser_Speed { get; set; }
        
        // Holds the aliens for this level 
        public List<List<Space_Invader_Char>> Alien_List = new List<List<Space_Invader_Char>>();
        // Alien Temp list
        private List<Space_Invader_Char> Alien_Temp_List;
        
        // Holds the Mystery Ship
        public List<Space_Invader_Char> Mystery_Ship_List = new List<Space_Invader_Char>();
        private Space_Invader_Char Myster_Ship; 

        // Holds the Cannon for this level
        public Space_Invader_Char Cannon;

        // interval for movement
        float interval = 0;

        // Hold the bunkers 
        public List<Defence_Bunker> Bunker_List = new List<Defence_Bunker>();
        public Defence_Bunker Bunker;

        // Will hold the lasers from aliens and cannon
        public List<Space_Invader_Char> Laser_List = new List<Space_Invader_Char>();

        public Level(int _level, float _interval)
        {
            level = _level;
            interval = _interval;
            Initialise();
        }

        private void Initialise() 
        {            
            Level_Setup();
        }

        private void Level_Setup()
        {
            // Each level will start with 55 aliens, not including the Mystery-ship
            aliens_Killed = 0;

            // Set the speed of the laser 
            Laser_Speed = 80f / interval;
            
            // Movement speed 
            alien_Speed = ((float)level + (float)aliens_Killed)/interval;

            // Staring fire rate = 1 per second
            Update_Alien_Fire_Rate();

            // Create aliens 
            Create_Aliens();

            // Create Cannon
            Create_Cannon();

            // Create Bunkers
            Create_Bunker();
        }

        private void Create_Aliens()
        {
            int _baseY = 5;
            for (int i = 0; i < 11; i++) // loop through each column
            {// loop through columns
                Alien_Temp_List = new List<Space_Invader_Char>();
                for (int j = 0; j < 1; j++) // for each row in the column put an Alien
                {
                    Alien_Temp_List.Add(new Space_Invader_Char(Space_Invader_Char.Character_Types.Invader_30, new Vector3(alien_Speed, 0, 0), new Vector3((6 * i), _baseY - 1 * j, -10)));
                }

                for (int j = 1; j < 3; j++)
                {
                    Alien_Temp_List.Add(new Space_Invader_Char(Space_Invader_Char.Character_Types.Invader_20, new Vector3(alien_Speed, 0, 0), new Vector3((6 * i), _baseY - 4.5f * j, -10)));
                }

                for (int j = 3; j < 5; j++)
                {
                    Alien_Temp_List.Add(new Space_Invader_Char(Space_Invader_Char.Character_Types.Invader_10, new Vector3(alien_Speed, 0, 0), new Vector3((6 * i), _baseY - 4.5f * j, -10)));
                }
                Alien_List.Add(Alien_Temp_List);

            }
            Create_Mystery_Ship();
        }

        private void Create_Mystery_Ship()
        { 
            // Create and draw the Mystery Ship
            Myster_Ship = new Space_Invader_Char(Space_Invader_Char.Character_Types.Invader_Mystery, new Vector3(0.5f, 0, 0), new Vector3(-10, 10, -10));
            Mystery_Ship_List.Add(Myster_Ship);
        }

        private void Create_Bunker()
        { 
            // this will create the bunker based on a start location
            // start with a basic block to represent the bunkers
            
            for (int i = 0; i < 7; i++)
            {
                Bunker = new Defence_Bunker(new Vector3(-2 + (i * 10), -35, -10), 5);
                Bunker_List.Add(Bunker);
            }
                

        }

        private void Create_Cannon()
        {
            Cannon = new Space_Invader_Char(Space_Invader_Char.Character_Types.Cannon, new Vector3(0.5f, 0, 0), new Vector3(30, -42, -10));
        }

        private void Update_Alien_Speed()
        {

            // NOTE: FIND A BETTER WAY TO DO THIS
            if (alien_Speed < 0)
                alien_Speed = -((float)level + (float)aliens_Killed) / interval;
            else if (alien_Speed > 0)
                alien_Speed = ((float)level + (float)aliens_Killed) / interval;
            for (int i = 0; i < Alien_List.Count; i++)
                for (int j = 0; j < Alien_List[i].Count; j++)
                    Alien_List[i][j].velocity = new Vector3(alien_Speed, 0, 0);

            Update_Alien_Fire_Rate();

        }

        private void Update_Alien_Fire_Rate()
        {
            alien_Fire_Rate = (55 - aliens_Killed + level) * 10;
        }
        
        public void Create_Laser(Space_Invader_Char _character)
        { 
            // NOTE: USE THIS FUNCTION TO CREATE A LASER
        }

        public void Remove_Alien(int _value1, int _value2)
        {
            Alien_List[_value1].RemoveAt(_value2);
            aliens_Killed++;

            Update_Alien_Speed();

            // Remove empty lists
            if (Alien_List[_value1].Count == 0)
                Alien_List.RemoveAt(_value1);

            
        }

        
    }
}
