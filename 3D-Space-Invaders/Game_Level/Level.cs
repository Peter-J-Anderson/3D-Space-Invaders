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


namespace Game_Level
{
    public class Level
    {
        // Level attributes
        int level { get; set; }
        public float alien_Speed { get; set; }
        public int aliens_Remaining { get; private set; }
        // How often all the aliens shoot (e.g. one from all the aliens per second)
        float alien_Fire_Rate { get; set; }

        // Holds the aliens for this level 
        public List<List<Space_Invader_Char>> alien_List = new List<List<Space_Invader_Char>>();
        List<Space_Invader_Char> temp_Alien_List;
        public Level(int _level)
        {
            level = _level;
            Initialise();
        }

        private void Initialise() 
        {            
            Level_Setup();
        }

        private void Level_Setup()
        {
            // Each level will start with 55 aliens, not includeing the myster ship
            aliens_Remaining = 55;

            // movement speed = 2 at start of game
            alien_Speed = level + (aliens_Remaining / aliens_Remaining);

            //staring fire rate = 1 per second
            alien_Fire_Rate = aliens_Remaining - aliens_Remaining + level;

            // Create aliens 
            Create_Aliens();
        }

        private void Create_Aliens()
        { 
            for (int i = 0; i < 11; i++) // loop through each column
            {// loop through columns
                temp_Alien_List = new List<Space_Invader_Char>();
                for (int j = 0; j < 1; j++) // for each row in the column put an alien
                {
                    temp_Alien_List.Add(new Space_Invader_Char(Space_Invader_Char.Character_Types.Invader_30, new Vector3(alien_Speed, 0,0), new Vector3((6 * i), -3 * j, -10)));
                }

                for (int j = 1; j < 3; j++)
                {
                    temp_Alien_List.Add(new Space_Invader_Char(Space_Invader_Char.Character_Types.Invader_20, new Vector3(alien_Speed, 0,0), new Vector3((6 * i), -3 * j, -10)));
                }

                for (int j = 3; j < 5; j++)
                {
                    temp_Alien_List.Add(new Space_Invader_Char(Space_Invader_Char.Character_Types.Invader_10, new Vector3(alien_Speed, 0,0), new Vector3((6 * i), -3 * j, -10)));
                }
                alien_List.Add(temp_Alien_List);

            }
        }

        public void Move_Aliens()
        { 
        
        }
        

    }
}
