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

namespace Space_Invaders_Characters
{
    public class Space_Invader_Char
    {
        // Types of characters in the game 
        public enum Character_Types { Invader_10, Invader_20, Invader_30, Invader_Mystery };
        // The model that will be used for this Invader 
        public Character_Types character_Type { get; set; }
        
        // Attributes for the alien (e.g. velocity)
        Vector3 velocity { get; set; }
        public Vector3 position { get; set; }
        int points { get; set; }    // amount of point gained for destroying this object
 
        /// <summary>
        /// Class Constructor
        /// </summary>
        /// <param name="_myModel"></param>
        /// <param name="_velocity"></param>
        /// <param name="_position"></param>
        public Space_Invader_Char(Character_Types _character_Type, Vector3 _velocity, Vector3 _position)
        {
            // Set attributes that are required for creation
            character_Type = _character_Type;
            velocity = _velocity;
            position = _position;
            points = (int)_character_Type+1 * 10;

        }
        /// <summary>
        /// Will apply the current velocity to the current position
        /// </summary>
        public void update_Positon(){position += velocity;}

     
    }
}
