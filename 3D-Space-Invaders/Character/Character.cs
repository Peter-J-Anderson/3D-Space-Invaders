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
        public enum Character_Types { Invader_10, Invader_20, Invader_30, Invader_Mystery, Cannon, Bunker_Block, Laser};
        // The model that will be used for this Invader 
        public Character_Types character_Type { get; set; }

        public bool shot { get; set; }  // Flag used to determine if you can shoot again or not

        // Attributes for the Alien (e.g. velocity)
        public Vector3 velocity { get; set; }
        public Vector3 position { get; set; }
        public int points { get; set; }    // amount of point gained for destroying this object

        // Characters lasers
        Space_Invader_Char Laser;
        public List<Space_Invader_Char> Laser_List = new List<Space_Invader_Char>();

        public String Owner = "";

        public Space_Invader_Char(Character_Types _character_Type, Vector3 _velocity, Vector3 _position, String _owner = "")
        {
            // Set attributes that are required for creation
            character_Type = _character_Type;
            velocity = _velocity;
            position = _position;
            points = (int)_character_Type + 1 * 10;
            Owner = _owner;
        }

        public void update_Positon(Vector3 _velocity) { position += _velocity; }

        public void Shoot(Vector3 _velocity)
        {
            // This will create the laser that is fired from both the aliens and Cannon
            if (shot == false)
            {
                shot = true;
                Laser = new Space_Invader_Char(Space_Invader_Char.Character_Types.Laser, _velocity, position);
                Laser_List.Add(Laser);
            }

        }

        public void Remove_Laser(int _value)
        {
            shot = false;
            Laser_List.RemoveAt(_value);
        }
        
    }
}
