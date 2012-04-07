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


        // These are the ships that will be attacking the laser cannon
        List<Model> Alien_Model_List = new List<Model>();
        // The laser cannon the user will be controlling
        Model Laser_Cannon;
        // The laser fired from bother the aliens and the laser cannon
        Model Laser;

        // This will be the object for the game level
        Level Game_Level;

        // Movement timer
        float moveTimer = 0f;
        float interval = 100f;
        float value = 0.1f; // used for movement for now 


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
            Game_Level = new Level(1);

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

            aspectRatio = graphics.GraphicsDevice.Viewport.AspectRatio;
        }

        /// <summary>
        /// UnloadContent will be called once per game and is the place to unload
        /// all content.
        /// </summary>
        protected override void UnloadContent()
        {

            spriteBatch.Dispose();
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

            
            for (int i = 0; i < 11; i++)
            {
                for (int j = 0; j < 5; j++)
                {
                    if (Game_Level.alien_List[i][j].position.X > 68)
                    {
                        value = -value; 
                    }
                    if (Game_Level.alien_List[i][j].position.X < -8)
                    {
                        value = Math.Abs(value);
                    }


                }
            }


            moveTimer += (float)gameTime.ElapsedGameTime.TotalMilliseconds;
            if (moveTimer > interval*3)
            {
                    for (int i = 0; i < 11; i++)
                    {
                        for (int j = 0; j < 5; j++)
                        {
                            Game_Level.alien_List[i][j].update_Positon(new Vector3(value, 0, 0));
                        }
                    }
            }

            // TODO: Add your update logic here

            base.Update(gameTime);
        }

        /// <summary>
        /// This is called when the game should draw itself.
        /// </summary>
        /// <param name="gameTime">Provides a snapshot of timing values.</param>
        protected override void Draw(GameTime gameTime)
        {
            graphics.GraphicsDevice.Clear(Color.CornflowerBlue);
            
            float xj, yj, zj;
            // Draw the model. A model can have multiple meshes, so loop.
            for (int i = 0; i < 5; i++)
                for (int j = 0; j < 11; j++)
                    foreach (ModelMesh mesh in Alien_Model_List[(int)Game_Level.alien_List[j][i].character_Type].Meshes)
                    {
                        // This is where the mesh orientation is set, as well 
                        // as our camera and projection.
                        xj = Game_Level.alien_List[j][i].position.X;
                        yj = Game_Level.alien_List[j][i].position.Y;
                        zj = Game_Level.alien_List[j][i].position.Z;
                        foreach (BasicEffect effect in mesh.Effects)
                        {
                            effect.World = Matrix.CreateTranslation(new Vector3(xj, yj, zj));
                        }

                        // Draw the mesh, using the effects set above.
                        mesh.Draw();
                    }

            // Draw the model. A model can have multiple meshes, so loop.
            for (int i = 0; i < 5; i++)
                for (int j = 0; j < 11; j++)
                    foreach (ModelMesh mesh in Alien_Model_List[(int)Game_Level.cannon.character_Type].Meshes)
                    {
                        // This is where the mesh orientation is set, as well 
                        // as our camera and projection.
                        xj = Game_Level.cannon.position.X;
                        yj = Game_Level.cannon.position.Y;
                        zj = Game_Level.cannon.position.Z;
                        foreach (BasicEffect effect in mesh.Effects)
                        {
                            effect.World = Matrix.CreateTranslation(new Vector3(xj, yj, zj));
                        }

                        // Draw the mesh, using the effects set above.
                        mesh.Draw();
                    }
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
    }
}
