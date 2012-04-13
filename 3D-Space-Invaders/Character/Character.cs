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


namespace Space_Invaders_Characters_Framework
{
    public class Space_Invader_Char
    {
        // Types of characters in the game 
        public enum Character_Types { Invader_10, Invader_20, Invader_30, Invader_Mystery, Cannon, Bunker_Block, Laser};

        private Model myModel { get; set; }
        public BoundingSphere myBoundingSphere;

        // The model that will be used for this object 
        public Character_Types Character_Type { get; set; }
        
        // Start position of the object
        public Vector3 Position { get; set; }

        public Space_Invader_Char(Character_Types _character_Type, Vector3 _position, Model _myModel)
        {
            // Set attributes that are required for object creation
            
            Character_Type = _character_Type;
            myModel = _myModel;
            Position = _position;
            myBoundingSphere = myModel.Meshes[0].BoundingSphere;
            myBoundingSphere.Center.X += Position.X;
            myBoundingSphere.Center.Y += Position.Y;
            if (Character_Type == Character_Types.Cannon)
            myBoundingSphere.Center.Z += Position.Z -1;
            else
                myBoundingSphere.Center.Z += Position.Z;
            
        }

        public void update_Positon(Vector3 _velocity)
        {
            Position += _velocity;

            myBoundingSphere.Center.X = Position.X;
            myBoundingSphere.Center.Y = Position.Y;
            myBoundingSphere.Center.Z = Position.Z;
        }

        public bool Check_Collision(BoundingSphere _object)
        { 
            if(myBoundingSphere.Intersects(_object))
            {

                return true;
            }

            return false;
        }
        
        public void Draw_Model()
        {
            foreach (ModelMesh mesh in myModel.Meshes)
            {
                foreach (BasicEffect effect in mesh.Effects)
                {

                    effect.World = Matrix.CreateTranslation(new Vector3(Position.X,
                                                                        Position.Y,
                                                                        Position.Z));
                }
                mesh.Draw();
            }
        }


    }
}
