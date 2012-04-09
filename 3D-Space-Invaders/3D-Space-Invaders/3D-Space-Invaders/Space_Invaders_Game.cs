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

        // game boundries           
        public enum Game_Boundries
        {
            LeftHandSide = -8,      // lhs
            Top = 3,                // top
            RightHandSide = 68,    // rhs
            Bottom = -45          // bottom
        };

        // These are the ships that will be attacking the laser Cannon
        List<Model> Alien_Model_List = new List<Model>();
        // The laser Cannon the user will be controlling
        Model Laser_Cannon;
        // The laser fired from bother the aliens and the laser Cannon
        Model Laser;

        // This will be the object for the game level
        Level Game_Level;

        // Movement timer
        float AlienMoveTimer = 0f;
        float CannonMoveTimer = 0f;
        float AlienShootTimer = 0f;
        float LaserMoveTimer = 0f;
        bool AlienShootFlag = false;
        bool AlienMoveFlag = false;
        bool CannonMoveFlag = false;
        bool LaserMoveFlag = false;
        float interval = 100f;
        float xValue = 0.1f; // used for x movement for now 
        float yValue = 0.0f; // used for y movement
        int shootingAlien;
        Random rand1;
        
        
        public Space_Invaders_3D()
        {
            graphics = new GraphicsDeviceManager(this);
            Content.RootDirectory = "Content";
        }

        /// <summary>
        /// Allows the game to perform any initialization it needs to before starting to run.
        /// This is where it can query for any required services and load any non-graphic
        /// related content.  Calling base.Initialize will enumerate through any components
        /// and initialize them as well.
        /// </summary>
        protected override void Initialize()
        {
            // TODO: Add your initialization logic here
            // Create level here :)
            Game_Level = new Level(1, interval);
            xValue = Game_Level.alien_Speed;

            base.Initialize();
        }

        /// <summary>
        /// LoadContent will be called once per game and is the place to load
        /// all of your content.
        /// </summary>
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

            aspectRatio = graphics.GraphicsDevice.Viewport.AspectRatio;
        }

        protected override void UnloadContent()
        {
            spriteBatch.Dispose();
        }

        protected override void Update(GameTime gameTime)
        {
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

            // Allows the game to exit
            if (GamePad.GetState(PlayerIndex.One).Buttons.Back == ButtonState.Pressed)
                this.Exit();
            float Cannon_Speed = 0;

            // User controls
            if (Keyboard.GetState().IsKeyDown(Keys.A) & Game_Level.Cannon.position.X > (float)Game_Boundries.LeftHandSide)
                Cannon_Speed = -Game_Level.Cannon.velocity.X;
            if (Keyboard.GetState().IsKeyDown(Keys.D) & Game_Level.Cannon.position.X < (float)Game_Boundries.RightHandSide)
                Cannon_Speed = Game_Level.Cannon.velocity.X;
            if (Keyboard.GetState().IsKeyDown(Keys.Space))
                Game_Level.Cannon.Shoot(new Vector3(0.0f, Game_Level.Laser_Speed, 0.0f));

            // Alien AI/Other stuff
            for (int i = 0; i < Game_Level.alien_List.Count; i++)
                for (int j = 0; j < Game_Level.alien_List[i].Count; j++)
            // Check to see if the aliens reach the boundries of the screen
            if (Game_Level.alien_List[i][j].position.X > (float)Game_Boundries.RightHandSide)
            {
                xValue = -Game_Level.alien_Speed;
                yValue = -0.5f;
            }
            else if (Game_Level.alien_List[i][j].position.X < (float)Game_Boundries.LeftHandSide)
            {
                xValue = Game_Level.alien_Speed;
                yValue = -0.5f;
            }

            for (int i = 0; i < Game_Level.alien_List.Count; i++)
            {
                for (int j = 0; j < Game_Level.alien_List[i].Count; j++)
                {
                    // Move Aliens
                        Game_Level.alien_List[i][j].update_Positon(new Vector3(xValue * Convert.ToInt16(AlienMoveFlag), yValue, 0));
                        rand1 = new Random((int)DateTime.Now.Ticks & 0x0000FFFF);
                        shootingAlien = rand1.Next(0,(Game_Level.alien_List.Count));
                    // Aliens shoot
                        if (AlienShootFlag == true)
                        {
                            // Randomly pick a column and make the bottom alien shoot 
                            Game_Level.alien_List[shootingAlien][Game_Level.alien_List[shootingAlien].Count-1].Shoot(new Vector3(0f, (-Game_Level.Laser_Speed * Convert.ToInt16(AlienShootFlag)) /2, 0f));
                        }
                }
            }

            
            
            // Update lasers - Destroy & Move
            if (LaserMoveFlag == true)
            Update_Laser(Game_Level.Cannon);

            for (int i = 0; i < Game_Level.alien_List.Count; i++)
                for (int j = 0; j < Game_Level.alien_List[i].Count; j++)
                    Update_Laser(Game_Level.alien_List[i][j]);


            // Move Cannon
            Game_Level.Cannon.update_Positon(new Vector3(Cannon_Speed * Convert.ToInt16(CannonMoveFlag), 0.0f, 0.0f));

            // Make sure chars dont move again
            AlienMoveFlag = false;
            CannonMoveFlag = false;
            AlienShootFlag = false;
            LaserMoveFlag = false;
            yValue = 0;

            base.Update(gameTime);
        }

        
        protected override void Draw(GameTime gameTime)
        {
            graphics.GraphicsDevice.Clear(Color.CornflowerBlue);

            // Draw the aliens
            // Draw the model. A model can have multiple meshes, so loop.
            for (int i = 0; i < 5; i++)
                for (int j = 0; j < Game_Level.alien_List.Count; j++)
                    Draw_Model(Game_Level.alien_List[j][i]);

            //// Draw the Cannon
            // Draw the model. A model can have multiple meshes, so loop.
            Draw_Model(Game_Level.Cannon);

            // Draw the Bunkers
            // Draw the model. A model can have multiple meshes, so loop.
            for (int i = 0; i < Game_Level.Bunker_List.Count; i++)
                Draw_Model(Game_Level.Bunker_List[i]);

            // Draw the lasers 
            // Draw the model. A model can have multiple meshes, so loop.
            for (int i = 0; i < Game_Level.Cannon.Laser_List.Count; i++)
                Draw_Model(Game_Level.Cannon.Laser_List[i]);

            for (int i = 0; i < Game_Level.alien_List.Count; i++)
                for (int j = 0; j < Game_Level.alien_List[i].Count; j++)
                    for (int k = 0; k < Game_Level.alien_List[i][j].Laser_List.Count; k++)
                        Draw_Model(Game_Level.alien_List[i][j].Laser_List[k]);

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

                        effect.View = Matrix.CreateLookAt(new Vector3(30f, -20f, 50f), new Vector3(30f, -20f, 0f),
                                        Vector3.Up);

                        effect.World = Matrix.CreateTranslation(0, 0, 0) *
                                        Matrix.CreateRotationX(MathHelper.ToRadians(0f));

                        effect.EnableDefaultLighting();
                    }
                }



                return myModel;
            }

        }

        private void Draw_Model(Space_Invader_Char myModel)
        {
            foreach (ModelMesh mesh in Alien_Model_List[(int)myModel.character_Type].Meshes)
            {
                foreach (BasicEffect effect in mesh.Effects)
                {
                    effect.World = Matrix.CreateTranslation(new Vector3(myModel.position.X,
                                                                        myModel.position.Y,
                                                                        myModel.position.Z));
                }

                // Draw the mesh, using the effects set above.
                mesh.Draw();
            }
        }

        private void Update_Laser(Space_Invader_Char myModel)
        {
            for (int i = 0; i < myModel.Laser_List.Count; i++)
            {
                // Update laser position
                myModel.Laser_List[i].update_Positon(myModel.Laser_List[i].velocity);

                // Destroy laser if needed
                if (myModel.Laser_List[i].position.Y > (float)Game_Boundries.Top
                    || myModel.Laser_List[i].position.Y < (float)Game_Boundries.Bottom)
                {
                    myModel.shot = false;
                    myModel.Laser_List.RemoveAt(i);
                }
                
            }
        }
    }
}
