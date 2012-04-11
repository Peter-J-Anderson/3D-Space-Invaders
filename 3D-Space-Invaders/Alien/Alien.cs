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
using Laser_Framework;

namespace Alien_Framework
{
    public class Alien : Space_Invader_Char
    {
        // Attributes for the Alien (e.g. velocity)
        public Vector3 Velocity { get; set; }
        
        // amount of point gained for destroying this object
        public int Points { get; set; }    
           
        public bool ShotFlag { get; set; }

        public float ShotCooldown { get; set; }

        public Alien(Vector3 _position, Vector3 _velocity, Character_Types Alien_Type, Model _myModel)
            : base(Alien_Type, _position, _myModel)
        {
            // Set attributes that are required for creation
            Velocity = _velocity;
            Points = ((int)Alien_Type + 1) * 10;
        }

        public Laser Laser(Model _myModel, String _owner)
        {
            Laser _laser;
            // This will create the laser that is fired from both the aliens and Cannon
            if (ShotFlag == false)
            {
                ShotFlag = true;
                // create laser here
                _laser = new Laser(new Vector3(0f, -0.8f, 0), _owner, Position, _myModel);
                //return the newly created laser
                return _laser;
            }
            // return a laser that will be destroyed instantly 
            return _laser = new Laser(new Vector3(), "", new Vector3(1000, 1000, 1000), _myModel);
        }

        public void Remove_Laser()
        {
            ShotFlag = false;
        }

        public void Update_Cooldown(GameTime gameTime)
        {
            if (ShotCooldown > 0.5f)
            {
               ShotFlag = false;
               ShotCooldown = 0;
            }
            if (ShotFlag == true)
            {
                ShotCooldown += (float)gameTime.ElapsedGameTime.TotalMilliseconds; 
            }
        }

    }
}
