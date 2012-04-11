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
using Space_Invaders_Characters_Framework;

namespace Laser_Framework
{
    public class Laser : Space_Invader_Char
    {
        // Movement directions
        public enum Movement_Direction {UP = 1, Down = -1 };

        // attributes 
        public Vector3 Velocity { get; set; }
        public String Owner { get; set; }

        public Laser(Vector3 _velocity, String _owner, Vector3 _position, Model _myModel)
            : base(Character_Types.Laser, _position,_myModel)
        {
            Velocity = _velocity;
            Owner = _owner;
        }


    }
}
