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

namespace Space_Invaders_Framework
{
    public class Space_Invader_Char
    {
        // The model that will be used for this Invader 
        private Model myModel { get; set; } 


        List<Model> test; 

        
        // Attributes for the alien (e.g. velocity)
        Vector2 velocity { get; set; }
        Vector2 position { get; protected set; }
        int points { get; protected set; }    // amount of point gained for destroying this object
 
        /// <summary>
        /// Class Constructor
        /// </summary>
        /// <param name="_myModel"></param>
        /// <param name="_velocity"></param>
        /// <param name="_position"></param>
        public Space_Invader_Char(Model _myModel, Vector2 _velocity, Vector2 _position, int _points)
        {
            // Set attributes that are required for creation
            myModel = _myModel;
            velocity = _velocity;
            position = _position;
            points = _points;

        }
        /// <summary>
        /// Will apply the current velocity to the current position
        /// </summary>
        public void update_Positon(){position += velocity;}
    }
}
