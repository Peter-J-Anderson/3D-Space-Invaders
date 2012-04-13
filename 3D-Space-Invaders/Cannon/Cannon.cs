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

namespace Cannon_Framework
{
    public class Cannon : Space_Invader_Char
    {
        // Movement directions
        public enum Movement_Direction { Static = 0, Right = 1, Left = -1 };

        // Flag used to determine if you can shoot again or not
        public bool ShotFlag { get; set; }
        private float ShotCooldown { get; set; }

        // attributes 
        public Vector3 Velocity { get; set; }
        public int Lives { get; set; }


        public Cannon(Vector3 _position, Vector3 _velocity, int _lives, Model _myModel)
            : base(Character_Types.Cannon, _position, _myModel)
        {
            // Set attributes that are required for creation
            Lives = _lives;
            Velocity = _velocity;
        }

        public Laser Laser(Model _myModel, String _owner)
        {
            Laser _laser;
            // This will create the laser that is fired from both the aliens and Cannon
            if (ShotFlag == false)
            {
                ShotFlag = true;
                // create laser here
                _laser = new Laser(new Vector3(0f, 2f, 0), _owner, Position, _myModel);
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

        public void update_Positon(Movement_Direction _direction)
        {
            update_Positon(Velocity * (int)_direction);
        }

        public void Update_Cooldown(GameTime gameTime)
        {
            if (ShotCooldown > 800f)
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
