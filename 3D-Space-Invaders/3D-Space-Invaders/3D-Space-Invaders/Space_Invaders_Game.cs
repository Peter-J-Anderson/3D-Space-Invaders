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
using Game_Level;

namespace _3D_Space_Invaders
{
    /// <summary>
    /// This is the main type for your game
    /// </summary>
    public class Space_Invaders_Game : Microsoft.Xna.Framework.Game
    {
        GraphicsDeviceManager graphics;
        SpriteBatch spriteBatch;

        float aspectRatio;

        Level Game_Level;
        // These are the ships that will be attacking the laser Cannon
        List<Model> Model_List = new List<Model>();


        public Space_Invaders_Game()
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
            Model_List.Add(temp);
            temp = Load_Model(@"Space_Invaders\Invader_20");
            Model_List.Add(temp);
            temp = Load_Model(@"Space_Invaders\Invader_30");
            Model_List.Add(temp);
            temp = Load_Model(@"Space_Invaders\Mystery");
            Model_List.Add(temp);
            temp = Load_Model(@"Laser_Cannon\Laser_Cannon");
            Model_List.Add(temp);
            temp = Load_Model(@"Bunker\Bunker_Block");
            Model_List.Add(temp);
            // NOTE: CHANGE THE MODEL BEING LOADED IN FOR LASERS
            temp = Load_Model(@"Bunker\Bunker_Block"); // Used to represent the laser at the moment
            Model_List.Add(temp);

            // Create level here :)
            Game_Level = new Level(1, 2, Model_List);

            aspectRatio = graphics.GraphicsDevice.Viewport.AspectRatio;
        }

        /// <summary>
        /// UnloadContent will be called once per game and is the place to unload
        /// all content.
        /// </summary>
        protected override void UnloadContent()
        {
            // TODO: Unload any non ContentManager content here
        }

        /// <summary>
        /// Allows the game to run logic such as updating the world,
        /// checking for collisions, gathering input, and playing audio.
        /// </summary>
        /// <param name="gameTime">Provides a snapshot of timing values.</param>
        protected override void Update(GameTime gameTime)
        {
            // Allows the game to exit
            if (GamePad.GetState(PlayerIndex.One).Buttons.Back == ButtonState.Pressed)
                this.Exit();
            //Player1 Controls
            #region Player1 Controls
            if (Keyboard.GetState().IsKeyDown(Keys.A))
                Game_Level.Player_Move_Left(0);
            if (Keyboard.GetState().IsKeyDown(Keys.D))
                Game_Level.Player_Move_Right(0);
            if (Keyboard.GetState().IsKeyDown(Keys.Space))
                Game_Level.Player_Shoot(0);
            #endregion

            #region Player2 Controls
            if (Keyboard.GetState().IsKeyDown(Keys.Left))
                Game_Level.Player_Move_Left(1);
            if (Keyboard.GetState().IsKeyDown(Keys.Right))
                Game_Level.Player_Move_Right(1);
            if (Keyboard.GetState().IsKeyDown(Keys.Enter))
                Game_Level.Player_Shoot(1);
            #endregion

            Game_Level.Update_Level(gameTime);
            // TODO: Add your update logic here

            base.Update(gameTime);
        }

        /// <summary>
        /// This is called when the game should draw itself.
        /// </summary>
        /// <param name="gameTime">Provides a snapshot of timing values.</param>
        protected override void Draw(GameTime gameTime)
        {
            GraphicsDevice.Clear(Color.Black);

            // TODO: Add your drawing code here
            Game_Level.Draw_Level();
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

                        effect.View = Matrix.CreateLookAt(new Vector3(30f, 30f, 70f), new Vector3(30f, 30f, -70f),
                                        Vector3.Up);

                        effect.World = Matrix.CreateTranslation(0, 0, 0) *
                                        Matrix.CreateRotationX(MathHelper.ToRadians(0f));

                        effect.EnableDefaultLighting();
                    }
                }



                return myModel;
            }

        }
    }
}
