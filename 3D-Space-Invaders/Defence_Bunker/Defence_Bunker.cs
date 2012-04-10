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

namespace Defence_Bunker_Framework
{
    public class Defence_Bunker
    {
        // A defence bunker will be made up of multiple parts./
        // Each part will be its own object in the bunker, this will allow 
        // for different parts of the bunker to be destroyed
        
        public Vector3 Position; // Bunker start location

        int Bunker_Width; // Only using a square at the moment

        public List<Space_Invader_Char> Bunker_Parts_List;

        public Defence_Bunker(Vector3 _position, int _bunker_width)
        { 
            // _position will be used at the start location of the bunker
            Position = _position;
            Bunker_Width = _bunker_width;
            Initialise();
        }

        private void Initialise()
        {
            Bunker_Parts_List = new List<Space_Invader_Char>();
            Create_Bunker();
        }

        private void Create_Bunker()
        { 
            // Construct the bunker with position taken into account 

            // NOTE: CHANGE THE SHAPE OF THE BUNKER IF YOU FIND TIME TO DO SO, FOR NOW JUST USE A SQUARE

            // Populate bunker list
            for (int i = 0; i < Bunker_Width; i++)
            {
                for (int j = 0; j < Bunker_Width; j++)
                {
                   Bunker_Parts_List.Add(new Space_Invader_Char(Space_Invader_Char.Character_Types.Bunker_Block, new Vector3(0, 0, 0), new Vector3(Position.X + (0.9f * i), Position.Y + (0.8f * j), -10)));
                }
                
            }
            

        }

    }
}
