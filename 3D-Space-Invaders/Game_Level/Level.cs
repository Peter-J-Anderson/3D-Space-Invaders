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
        
        // Holds the Cannon for this level
        public Space_Invader_Char Cannon;

        // Hold the bunkers 
        public List<Space_Invader_Char> Bunker_List = new List<Space_Invader_Char>();
        private Space_Invader_Char Bunker;

        // Temp list
        List<Space_Invader_Char> temp_List;


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
            alien_Speed = (float)level / (float)aliens_Remaining;

            //staring fire rate = 1 per second
            alien_Fire_Rate = aliens_Remaining - aliens_Remaining + level;

            // Create aliens 
            Create_Aliens();

            // Create Cannon
            Create_Cannon();

            // Create Bunkers
            Create_Bunker();
        }

        private void Create_Aliens()
        { 
            for (int i = 0; i < 11; i++) // loop through each column
            {// loop through columns
                temp_List = new List<Space_Invader_Char>();
                for (int j = 0; j < 1; j++) // for each row in the column put an alien
                {
                    temp_List.Add(new Space_Invader_Char(Space_Invader_Char.Character_Types.Invader_30, new Vector3(alien_Speed, 0,0), new Vector3((6 * i), -3 * j, -10)));
                }

                for (int j = 1; j < 3; j++)
                {
                    temp_List.Add(new Space_Invader_Char(Space_Invader_Char.Character_Types.Invader_20, new Vector3(alien_Speed, 0,0), new Vector3((6 * i), -3 * j, -10)));
                }

                for (int j = 3; j < 5; j++)
                {
                    temp_List.Add(new Space_Invader_Char(Space_Invader_Char.Character_Types.Invader_10, new Vector3(alien_Speed, 0,0), new Vector3((6 * i), -3 * j, -10)));
                }
                alien_List.Add(temp_List);

            }
        }

        private void Create_Laser()
        {
            // This will create the laser that is fired from both the aliens and Cannon
        }

        private void Create_Bunker()
        { 
            // this will create the bunker based on a start location
            // start with a basic block to represent the bunkers
            Bunker = new Space_Invader_Char(Space_Invader_Char.Character_Types.Bunker_Block, new Vector3(0, 0, 0), new Vector3(0, -35, -10));
            Bunker_List.Add(Bunker);

            Bunker = new Space_Invader_Char(Space_Invader_Char.Character_Types.Bunker_Block, new Vector3(0, 0, 0), new Vector3(10, -35, -10));
            Bunker_List.Add(Bunker);

            Bunker = new Space_Invader_Char(Space_Invader_Char.Character_Types.Bunker_Block, new Vector3(0, 0, 0), new Vector3(20, -35, -10));
            Bunker_List.Add(Bunker);

            Bunker = new Space_Invader_Char(Space_Invader_Char.Character_Types.Bunker_Block, new Vector3(0, 0, 0), new Vector3(30, -35, -10));
            Bunker_List.Add(Bunker);

            Bunker = new Space_Invader_Char(Space_Invader_Char.Character_Types.Bunker_Block, new Vector3(0, 0, 0), new Vector3(40, -35, -10));
            Bunker_List.Add(Bunker);

            Bunker = new Space_Invader_Char(Space_Invader_Char.Character_Types.Bunker_Block, new Vector3(0, 0, 0), new Vector3(50, -35, -10));
            Bunker_List.Add(Bunker);

            Bunker = new Space_Invader_Char(Space_Invader_Char.Character_Types.Bunker_Block, new Vector3(0, 0, 0), new Vector3(60, -35, -10));
            Bunker_List.Add(Bunker);
        }
        private void Create_Cannon()
        {
            Cannon = new Space_Invader_Char(Space_Invader_Char.Character_Types.Cannon, new Vector3(0.5f, 0, 0), new Vector3(30, -42, -10));
        }
      

    }
}
