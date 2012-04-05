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
        
        // These are the ships that will be attacking the laser cannon
        Model Mystery_Invader, Invader_30, Invader_20, Invader_10;
        // The laser cannon the user will be controlling
        Model Laser_Cannon; 
        // The laser fired from bother the aliens and the laser cannon
        Model Laser; 

        // This will be the object for the game level
        Level Game_Level;

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
            // Create a new SpriteBatch, which can be used to draw textures.
            spriteBatch = new SpriteBatch(GraphicsDevice);
            // Load models into game ready for use
            Invader_10 = Load_Model(@"Space_Invaders\Invader_10");
            Invader_20 = Load_Model(@"Space_Invaders\Invader_20");
            Invader_30 = Load_Model(@"Space_Invaders\Invader_30");
            Mystery_Invader = Load_Model(@"Space_Invaders\Mystery");
        
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

            // TODO: Add your update logic here
            
            base.Update(gameTime);
        }

        /// <summary>
        /// This is called when the game should draw itself.
        /// </summary>
        /// <param name="gameTime">Provides a snapshot of timing values.</param>
        protected override void Draw(GameTime gameTime)
        {
            GraphicsDevice.Clear(Color.CornflowerBlue);

            // TODO: Add your drawing code here
            // Use a list for drawing multiply objects
            
            
            base.Draw(gameTime);
        }

        private Model Load_Model( string asset_Name = "")
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
                    
                    effect.View = Matrix.CreateLookAt(new Vector3(0f, 10f, 50f), Vector3.Zero,
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
