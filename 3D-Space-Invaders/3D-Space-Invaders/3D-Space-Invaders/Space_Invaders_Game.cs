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
using _3D_Space_Invaders;
using Space_Invaders_Characters;
using Game_Level;
using Defence_Bunker_Framework;

namespace _3D_Space_Invaders
{
    /// <summary>
    /// This is the main type for your game
    /// </summary>
    public class Space_Invaders_3D : Microsoft.Xna.Framework.Game
    {
        GraphicsDeviceManager graphics;
        SpriteBatch spriteBatch;

        float aspectRatio;

        // Game Boundries           
        public enum Game_Boundries
        {
            LeftHandSide = -8,      // lhs
            Top = 3,                // top
            RightHandSide = 68,    // rhs
            Bottom = -45          // bottom
        };

        // These are the ships that will be attacking the laser Cannon
        List<Model> Alien_Model_List = new List<Model>();

        // This will be the object for the game level
        Level Game_Level;

        // Movement timer
        // Timers are used to detemine when objects move
        float AlienMoveTimer = 0f;  // Movement of Alien ships
        float CannonMoveTimer = 0f; // Movement of Laser Cannon
        float AlienShootTimer = 0f; // Movement of Alien Lasers
        float LaserMoveTimer = 0f;  // Movement of Cannon Lasers

        bool AlienShootFlag = false;
        bool AlienMoveFlag = false;
        bool CannonMoveFlag = false;
        bool LaserMoveFlag = false;

        float interval = 100f;  // A base value used to seperate actions

        float yValue = 0.0f; // Used for starting values - should fix this at somepoint

        int shootingAlien;  // Currently used to track which Alien will fire - move this to the level class
        float Cannon_Speed; // Used locally to reset the movement speed of the cannon when the walls have been hit

        Random rand1;   // Used to generate a random number - current use is for selecting an Alien to fire

        public Space_Invaders_3D()
        {
            graphics = new GraphicsDeviceManager(this);
            Content.RootDirectory = "Content";
        }

        protected override void Initialize()
        {
            // Create level here :)
            Game_Level = new Level(1, interval);

            base.Initialize();
        }

        protected override void LoadContent()
        {
            Model temp;
            // Create a new SpriteBatch, which can be used to draw textures.
            spriteBatch = new SpriteBatch(GraphicsDevice);
            // Load models into game ready for use

            temp = Load_Model(@"Space_Invaders\Invader_10");
            Alien_Model_List.Add(temp);
            temp = Load_Model(@"Space_Invaders\Invader_20");
            Alien_Model_List.Add(temp);
            temp = Load_Model(@"Space_Invaders\Invader_30");
            Alien_Model_List.Add(temp);
            temp = Load_Model(@"Space_Invaders\Mystery");
            Alien_Model_List.Add(temp);
            temp = Load_Model(@"Laser_Cannon\Laser_Cannon");
            Alien_Model_List.Add(temp);
            temp = Load_Model(@"Bunker\Bunker_Block");
            Alien_Model_List.Add(temp);
            // NOTE: CHANGE THE MODEL BEING LOADED IN FOR LASERS
            temp = Load_Model(@"Bunker\Bunker_Block"); // Used to represent the laser at the moment
            Alien_Model_List.Add(temp);
            aspectRatio = graphics.GraphicsDevice.Viewport.AspectRatio;
        }

        protected override void UnloadContent()
        {
            spriteBatch.Dispose();
        }

        protected override void Update(GameTime gameTime)
        {
            #region Timer Control
            // Update game timers
            float tempTime = (float)gameTime.ElapsedGameTime.TotalMilliseconds;
            AlienMoveTimer += tempTime;
            AlienShootTimer += tempTime;
            CannonMoveTimer += tempTime;
            LaserMoveTimer += tempTime;

            // Reset game timers if needed 
            if (AlienMoveTimer > Game_Level.alien_Speed)
            {
                AlienMoveFlag = true;
                AlienMoveTimer = 0;
            }
            if (AlienShootTimer > Game_Level.alien_Fire_Rate)
            {
                AlienShootFlag = true;
                AlienShootTimer = 0;
            }
            if (LaserMoveTimer > Game_Level.Laser_Speed)
            {
                LaserMoveFlag = true;
                LaserMoveTimer = 0;
            }
            if (CannonMoveTimer > Game_Level.Cannon.velocity.X)
            {
                CannonMoveFlag = true;
                CannonMoveTimer = 0;
            }
            #endregion

            // Allows the game to exit
            if (GamePad.GetState(PlayerIndex.One).Buttons.Back == ButtonState.Pressed)
                this.Exit();

            #region User Controls
            // User controls
            if (Keyboard.GetState().IsKeyDown(Keys.A) & Game_Level.Cannon.position.X > (float)Game_Boundries.LeftHandSide)
                Cannon_Speed = -Game_Level.Cannon.velocity.X;
            if (Keyboard.GetState().IsKeyDown(Keys.D) & Game_Level.Cannon.position.X < (float)Game_Boundries.RightHandSide)
                Cannon_Speed = Game_Level.Cannon.velocity.X;
            if (Keyboard.GetState().IsKeyDown(Keys.Space))
                Game_Level.Cannon.Shoot(new Vector3(0.0f, Game_Level.Laser_Speed, 0.0f));
            if (Keyboard.GetState().IsKeyDown(Keys.M))
            {
                if (Game_Level.Alien_List.Count > 0)
                {
                    rand1 = new Random((int)DateTime.Now.Ticks & 0x0000FFFF);
                    int value1 = rand1.Next(0, (Game_Level.Alien_List.Count));
                    int value2 = rand1.Next(0, (Game_Level.Alien_List[value1].Count));

                    Game_Level.Remove_Alien(value1, value2);
                }
            }

            #endregion

            #region Collision Detection

            for (int i = 0; i < Game_Level.Alien_List.Count; i++)
            {
                for (int j = 0; j < Game_Level.Alien_List[i].Count; j++)
                {
                    for (int k = 0; k < Game_Level.Alien_List[i][j].Laser_List.Count; k++)
                    {
                        if (Game_Level.Alien_List[i][j].Laser_List[k].position.Y < -39.8f)
                        {
                            Window.Title = "" + Check_Collision(Game_Level.Cannon, Game_Level.Alien_List[i][j].Laser_List[k]);
                        }
                    }
                }
            }

            #endregion

            #region Alien AI

            // Stop aliens from going off the screen
            for (int i = 0; i < Game_Level.Alien_List.Count; i++)
                for (int j = 0; j < Game_Level.Alien_List[i].Count; j++)
                {
                    // Check to see if the aliens reach the boundries of the screen
                    if (Game_Level.Alien_List[i][j].position.X > (float)Game_Boundries.RightHandSide)
                    {
                        Game_Level.alien_Speed = -(Math.Abs(Game_Level.alien_Speed));
                        yValue = -0.5f;
                    }
                    else if (Game_Level.Alien_List[i][j].position.X < (float)Game_Boundries.LeftHandSide)
                    {
                        Game_Level.alien_Speed = Math.Abs(Game_Level.alien_Speed);
                        yValue = -0.5f;
                    }
                }

            // Loop through all the aliens
            for (int i = 0; i < Game_Level.Alien_List.Count; i++)
            {
                for (int j = 0; j < Game_Level.Alien_List[i].Count; j++)
                {

                    // Move Aliens
                    Game_Level.Alien_List[i][j].update_Positon(new Vector3(Game_Level.alien_Speed * Convert.ToInt16(AlienMoveFlag), yValue, 0));
                    rand1 = new Random((int)DateTime.Now.Ticks & 0x0000FFFF);
                    shootingAlien = rand1.Next(0, (Game_Level.Alien_List.Count));

                    // Aliens shoot
                    if (AlienShootFlag == true)
                    {
                        // Randomly pick a column and make the bottom Alien shoot 
                        Game_Level.Alien_List[shootingAlien][Game_Level.Alien_List[shootingAlien].Count - 1].Shoot(new Vector3(0f, (-Game_Level.Laser_Speed * Convert.ToInt16(AlienShootFlag)) / 1.5f, 0f));
                        AlienShootFlag = false;
                    }
                }
            }
            for (int i = 0; i < Game_Level.Mystery_Ship_List.Count; i++)
                Game_Level.Mystery_Ship_List[i].update_Positon(Game_Level.Mystery_Ship_List[i].velocity);
            #endregion

            #region Laser Movement Control
            // Update lasers - Destroy & Move
            if (LaserMoveFlag == true)
                Update_Laser(Game_Level.Cannon);

            for (int i = 0; i < Game_Level.Alien_List.Count; i++)
                for (int j = 0; j < Game_Level.Alien_List[i].Count; j++)
                    Update_Laser(Game_Level.Alien_List[i][j]);
            #endregion

            #region Cannon Movement Control
            // Move Cannon
            Game_Level.Cannon.update_Positon(new Vector3(Cannon_Speed * Convert.ToInt16(CannonMoveFlag), 0.0f, 0.0f));
            #endregion

            // Reset flags and movement values
            AlienMoveFlag = false;
            CannonMoveFlag = false;
            AlienShootFlag = false;
            LaserMoveFlag = false;
            yValue = 0;
            Cannon_Speed = 0;
            base.Update(gameTime);
        }

        protected override void Draw(GameTime gameTime)
        {
            graphics.GraphicsDevice.Clear(Color.Black);

            #region Draw Aliens/Cannon/Bunker
            // Draw the Cannon
            Draw_Model(Game_Level.Cannon);

            // Draw the Aliens
            for (int i = 0; i < Game_Level.Alien_List.Count; i++)
                for (int j = 0; j < Game_Level.Alien_List[i].Count; j++)
                    Draw_Model(Game_Level.Alien_List[i][j]);

            // Draw the Mystery-ship
            for (int i = 0; i < Game_Level.Mystery_Ship_List.Count; i++)
                Draw_Model(Game_Level.Mystery_Ship_List[i]);

            // Draw the Bunkers
            for (int i = 0; i < Game_Level.Bunker_List.Count; i++)
                for (int j = 0; j < Game_Level.Bunker_List[i].Bunker_Parts_List.Count; j++)
                    for (int k = 0; k < Game_Level.Bunker_List[i].Bunker_Parts_List[j].Count; k++)
                        Draw_Model(Game_Level.Bunker_List[i].Bunker_Parts_List[j][k]);
            #endregion

            #region Draw Lasers
            // Draw the Cannon Lasers 
            for (int i = 0; i < Game_Level.Cannon.Laser_List.Count; i++)
                Draw_Model(Game_Level.Cannon.Laser_List[i]);

            // Draw the Alien Lasers 
            for (int i = 0; i < Game_Level.Alien_List.Count; i++)
                for (int j = 0; j < Game_Level.Alien_List[i].Count; j++)
                    for (int k = 0; k < Game_Level.Alien_List[i][j].Laser_List.Count; k++)
                        Draw_Model(Game_Level.Alien_List[i][j].Laser_List[k]);
            #endregion
            
            base.Draw(gameTime);
        }

        private Model Load_Model(string asset_Name = "")
        {
            {
                Model myModel = Content.Load<Model>(asset_Name);
                float aspectRatio = (float)graphics.GraphicsDevice.Viewport.Width /
                                           graphics.GraphicsDevice.Viewport.Height;
               
                foreach (ModelMesh mesh in myModel.Meshes)
                {
                    foreach (BasicEffect effect in mesh.Effects)
                    {
                        effect.Projection =
                        Matrix.CreatePerspectiveFieldOfView(MathHelper.ToRadians(45f), aspectRatio,
                        1.0f, 1000.0f);

                        effect.View = Matrix.CreateLookAt(new Vector3(30f, -20f, 70f), new Vector3(30f, -15f, -20f),
                                        Vector3.Up);

                        effect.World = Matrix.CreateTranslation(0, 0, 0) *
                                        Matrix.CreateRotationX(MathHelper.ToRadians(0f));

                        effect.EnableDefaultLighting();
                    }
                }



                return myModel;
            }

        }

        private void Draw_Model(Space_Invader_Char _myModel)
        {
            foreach (ModelMesh mesh in Alien_Model_List[(int)_myModel.character_Type].Meshes)
            {
                foreach (BasicEffect effect in mesh.Effects)
                {

                    effect.World = Matrix.CreateTranslation(new Vector3(_myModel.position.X,
                                                                        _myModel.position.Y,
                                                                        _myModel.position.Z));
                }
                mesh.Draw();
            }
        }

        private void Update_Laser(Space_Invader_Char _myModel)
        {
            for (int i = 0; i < _myModel.Laser_List.Count; i++)
            {
                // Update laser position
                _myModel.Laser_List[i].update_Positon(_myModel.Laser_List[i].velocity);

                // Destroy laser if needed
                if (_myModel.Laser_List[i].position.Y > (float)Game_Boundries.Top
                    || _myModel.Laser_List[i].position.Y < (float)Game_Boundries.Bottom)
                {
                    _myModel.shot = false;
                    _myModel.Laser_List.RemoveAt(i);
                }

            }
        }

        public bool Check_Collision(Space_Invader_Char _myModel, Space_Invader_Char _collidingModel)
        {
            BoundingSphere _sphere1, _sphere2;

            // Pass a char to check collision with
            foreach (ModelMesh mesh1 in Alien_Model_List[(int)_myModel.character_Type].Meshes)
            {
                foreach (ModelMesh mesh2 in Alien_Model_List[(int)_collidingModel.character_Type].Meshes)
                {
                    _sphere1.Center = mesh1.BoundingSphere.Center +
                                      new Vector3(_myModel.position.X, _myModel.position.Y, _myModel.position.Z);
                    _sphere1.Radius = mesh1.BoundingSphere.Radius;

                    _sphere2.Center = mesh2.BoundingSphere.Center +
                                      new Vector3(_collidingModel.position.X, _collidingModel.position.Y, _collidingModel.position.Z);
                    _sphere2.Radius = mesh2.BoundingSphere.Radius;

                    if (_sphere1.Intersects(_sphere2))
                    {
                    // NOTE: ADD COLLISION RESPONSE HERE


                        return true;
                    }
                }
            }
            return false;
        }

    }
}
