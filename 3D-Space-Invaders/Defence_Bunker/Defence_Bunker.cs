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

namespace Defence_Bunker_Framework
{
    public class Defence_Bunker
    {
        // A defence bunker will be made up of multiple parts./
        // Each part will be its own object in the bunker, this will allow 
        // for different parts of the bunker to be destroyed
        
        public Vector3 Position; // Bunker start location

        BoundingSphere myBoundngSphere;

        int Bunker_Width; // Only using a square at the moment
        Model myModel;

        public List<List<Space_Invader_Char>> Bunker_Column;
        public List<Space_Invader_Char> Bunker_Row;

        public Defence_Bunker(Vector3 _position, int _bunker_width, Model _myModel)
        { 
            // _position will be used at the start location of the bunker
            Position = _position;
            Bunker_Width = _bunker_width;
            myModel = _myModel;
            
            myBoundngSphere.Center.X = Position.X + (_myModel.Meshes[0].BoundingSphere.Radius * Bunker_Width / 2);
            myBoundngSphere.Center.Y = Position.Y + (_myModel.Meshes[0].BoundingSphere.Radius * Bunker_Width / 2);
            myBoundngSphere.Radius = _myModel.Meshes[0].BoundingSphere.Radius * Bunker_Width / 2;

            Initialise();
        }

        private void Initialise()
        {
            Bunker_Column = new List<List<Space_Invader_Char>>();
            Create_Bunker();
        }

        private void Create_Bunker()
        { 
            // Construct the bunker with position taken into account 

            // NOTE: CHANGE THE SHAPE OF THE BUNKER IF YOU FIND TIME TO DO SO, FOR NOW JUST USE A SQUARE

            // Populate bunker list
            for (int i = 0; i < Bunker_Width; i++)
            {
                Bunker_Row = new List<Space_Invader_Char>();
                for (int j = 0; j < Bunker_Width; j++)
                {
                   Bunker_Row.Add(new Space_Invader_Char(Space_Invader_Char.Character_Types.Bunker_Block, new Vector3(Position.X + (1f * i), Position.Y + (1f * j), 0),myModel));
                }
                Bunker_Column.Add(Bunker_Row);
            }
            

        }

        public bool Check_Collision(BoundingSphere _object)
        {
            if(this.myBoundngSphere.Intersects(_object))
            {
                for (int i = 0; i < Bunker_Column.Count; i++)
                {
                    for (int j = 0; j < Bunker_Column[i].Count; j++)
                    {
                        if (Bunker_Column[i][j].Check_Collision(_object))
                        {
                            Bunker_Column[i].RemoveAt(j);
                            
                            if (Bunker_Column.Count == 0)
                                Bunker_Column.RemoveAt(i);
                            
                            return true;
                        }
                    }
                }
            }

            return false;
        }

        public void Draw_Bunker()
        {
            for (int i = 0; i < Bunker_Column.Count; i++)
            {
                for (int j = 0; j < Bunker_Column[i].Count; j++)
                {
                        Bunker_Column[i][j].Draw_Model();
                }
            }
        }
    }
}
