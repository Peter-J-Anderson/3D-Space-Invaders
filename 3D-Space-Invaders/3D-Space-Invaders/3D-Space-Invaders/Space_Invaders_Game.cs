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


        // These are the ships that will be attacking the laser Cannon
        List<Model> Alien_Model_List = new List<Model>();
        // The laser Cannon the user will be controlling
        Model Laser_Cannon;
        // The laser fired from bother the aliens and the laser Cannon
        Model Laser;

        // This will be the object for the game level
        Level Game_Level;

        // Movement timer
        float moveTimer = 0f;
        float interval = 100f;
        float xValue = 0.1f; // used for x movement for now 
        float yValue = 0.0f; // used for y movement

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
            float Cannon_Speed = 0;

            if (Keyboard.GetState().IsKeyDown(Keys.A) & Game_Level.Cannon.position.X > -8)
                Cannon_Speed = -0.5f;
            if (Keyboard.GetState().IsKeyDown(Keys.D) & Game_Level.Cannon.position.X < 68)
                Cannon_Speed = 0.5f;

            // Check to see if the aliens reach the boundries of the screen
            for (int i = 0; i < Game_Level.alien_List.Count; i++)
            {
                for (int j = 0; j < 5; j++)
                {
                    if (Game_Level.alien_List[i][j].position.X > 68)
                    {
                        xValue = -Game_Level.alien_Speed;
                        yValue = -0.5f;
                    }
                    if (Game_Level.alien_List[i][j].position.X < -8)
                    {
                        xValue = Game_Level.alien_Speed;
                        yValue = -0.5f;
                    }


                }
            }

            // move Cannon
            Game_Level.Cannon.update_Positon(new Vector3(Cannon_Speed, 0.0f, 0.0f));

            // move aliens
            moveTimer += (float)gameTime.ElapsedGameTime.TotalMilliseconds;
            if (moveTimer > interval * 3)
            {
                for (int i = 0; i < Game_Level.alien_List.Count; i++)
                {
                    for (int j = 0; j < 5; j++)
                    {
                        Game_Level.alien_List[i][j].update_Positon(new Vector3(xValue, yValue, 0));

                    }
                }
                yValue = 0;
            }
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
            // Draw the aliens
            // Draw the model. A model can have multiple meshes, so loop.
            for (int i = 0; i < 5; i++)
                for (int j = 0; j < Game_Level.alien_List.Count; j++)
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
            // Draw the Cannon
            // Draw the model. A model can have multiple meshes, so loop.
            foreach (ModelMesh mesh in Alien_Model_List[(int)Game_Level.Cannon.character_Type].Meshes)
            {
                // This is where the mesh orientation is set, as well 
                // as our camera and projection.
                xj = Game_Level.Cannon.position.X;
                yj = Game_Level.Cannon.position.Y;
                zj = Game_Level.Cannon.position.Z;
                foreach (BasicEffect effect in mesh.Effects)
                {
                    effect.World = Matrix.CreateTranslation(new Vector3(xj, yj, zj));
                }

                // Draw the mesh, using the effects set above.
                mesh.Draw();
            }

            // Draw the Bunkers
            // Draw the model. A model can have multiple meshes, so loop.
            for (int i = 0; i < Game_Level.Bunker_List.Count;i++)
                foreach (ModelMesh mesh in Alien_Model_List[(int)Game_Level.Bunker_List[i].character_Type].Meshes)
                {
                    // This is where the mesh orientation is set, as well 
                    // as our camera and projection.
                    xj = Game_Level.Bunker_List[i].position.X;
                    yj = Game_Level.Bunker_List[i].position.Y;
                    zj = Game_Level.Bunker_List[i].position.Z;
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
