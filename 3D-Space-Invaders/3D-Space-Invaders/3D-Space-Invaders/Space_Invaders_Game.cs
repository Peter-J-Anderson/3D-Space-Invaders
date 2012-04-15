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
using HUD_Framework;

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

        public enum game_states
        {
            Continue,
            Failed,
            Complete,
            Pause,
            Restart,
            Exit,
            Startup,
            PlayerSelect
        };
        public enum ControlType { _Keyboard, _Gamepad, _Kinect };
        ControlType myControlType = ControlType._Keyboard;
        bool buttonRelease = true;
        Texture2D StartupScreen;
        Texture2D PlayerSelect;
        Texture2D pauseScreen;
        Texture2D gameOver;
        int numberOfPlayers = 2;

        game_states Level_Response = game_states.Startup;

        Level Game_Level;

        // These are the ships that will be attacking the laser Cannon
        List<Model> Model_List = new List<Model>();

        // 2D animation list 
        List<Texture2D> Texture_List = new List<Texture2D>();
        List<SpriteFont> Font_list = new List<SpriteFont>();

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
            SpriteFont _temp_Font = Content.Load<SpriteFont>("HUD_Font");
            Font_list.Add(_temp_Font);
            // TODO: Add your initialization logic here
            graphics.PreferredBackBufferWidth = 900;
            graphics.PreferredBackBufferHeight = 460;
            graphics.ApplyChanges();


            base.Initialize();
        }

        /// <summary>
        /// LoadContent will be called once per game and is the place to load
        /// all of your content.
        /// </summary>
        protected override void LoadContent()
        {
            Model _temp_Model;
            Texture2D _temp_Texture2D;
            // Create a new SpriteBatch, which can be used to draw textures.
            spriteBatch = new SpriteBatch(GraphicsDevice);
            // Load models into game ready for use

            _temp_Model = Load_Model(@"Space_Invaders\Invader_10");
            Model_List.Add(_temp_Model);
            _temp_Model = Load_Model(@"Space_Invaders\Invader_20");
            Model_List.Add(_temp_Model);
            _temp_Model = Load_Model(@"Space_Invaders\Invader_30");
            Model_List.Add(_temp_Model);
            _temp_Model = Load_Model(@"Space_Invaders\Mystery");
            Model_List.Add(_temp_Model);
            _temp_Model = Load_Model(@"Laser_Cannon\Laser_Cannon");
            Model_List.Add(_temp_Model);
            _temp_Model = Load_Model(@"Bunker\Bunker_Block");
            Model_List.Add(_temp_Model);
            // NOTE: CHANGE THE MODEL BEING LOADED IN FOR LASERS
            _temp_Model = Load_Model(@"Bunker\Bunker_Block"); // Used to represent the laser at the moment
            Model_List.Add(_temp_Model);

            StartupScreen = Content.Load<Texture2D>(@"2D Animation\StartupScreen");
            PlayerSelect = Content.Load<Texture2D>(@"2D Animation\PlayerSelect");
            pauseScreen = Content.Load<Texture2D>(@"2D Animation\PauseScreen");
            gameOver = Content.Load<Texture2D>(@"2D Animation\Game_Over");


            _temp_Texture2D = Content.Load<Texture2D>(@"2D Animation\Background");
            //_temp_Texture2D = Content.Load<Texture2D>(@"2D Animation\Explosion");
            Texture_List.Add(_temp_Texture2D);

            



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

            #region startup screen 
            if (Level_Response == game_states.Startup)
            {
                if (Keyboard.GetState().IsKeyDown(Keys.D0))
                {
                    myControlType = ControlType._Keyboard;
                    Level_Response = game_states.PlayerSelect;
                }
                if (Keyboard.GetState().IsKeyDown(Keys.D1))
                {
                    myControlType = ControlType._Gamepad;
                    Level_Response = game_states.PlayerSelect;
                }
                if (Keyboard.GetState().IsKeyDown(Keys.D2))
                {
                    myControlType = ControlType._Kinect;
                    Level_Response = game_states.PlayerSelect;
                }

            }
            #endregion

            #region player select

            if (Keyboard.GetState().IsKeyDown(Keys.D1))
                {
                    numberOfPlayers = 1;
                    Level_Response = game_states.Continue;

                    // Create level here :)
                    Game_Level = new Level(1, numberOfPlayers, Model_List, Texture_List, Font_list);//, Animation_List);

                }
                if (Keyboard.GetState().IsKeyDown(Keys.D2))
                {
                    numberOfPlayers = 2;
                    Level_Response = game_states.Continue;

                    // Create level here :)
                    Game_Level = new Level(1, numberOfPlayers, Model_List, Texture_List, Font_list);//, Animation_List);

                }


            #endregion

            
            if (Keyboard.GetState().IsKeyUp(Keys.P) && Keyboard.GetState().IsKeyUp(Keys.R))
                buttonRelease = true;
            

            #region pausing game
            if (Level_Response == game_states.Continue)
            if (Keyboard.GetState().IsKeyDown(Keys.P) & buttonRelease == true)
            {   // to pause game
                buttonRelease = false;
                Level_Response = game_states.Pause; // testing 
            }

            if (Level_Response == game_states.Pause)
            {
                if (Keyboard.GetState().IsKeyDown(Keys.P) & buttonRelease == true)
                { // unpause
                    Level_Response = game_states.Continue; // testing 
                    buttonRelease = false;
                }
                // Show level menu - here have choices 
            }
            #endregion

            #region Restarting Game

            if (Level_Response == game_states.Restart)
            { // restart game with 2 players at the moment 
                Game_Level = new Level(1, numberOfPlayers, Model_List, Texture_List, Font_list);
                Level_Response = game_states.Continue;
            }

            if (Level_Response == game_states.Failed)
            {
                if (Keyboard.GetState().IsKeyDown(Keys.R) & buttonRelease == true)
                {
                    Level_Response = game_states.Restart; // testing 
                    buttonRelease = false;
                }
                // tell player game is over 
            }

            #endregion 

            #region Close Game
   
            if (Keyboard.GetState().IsKeyDown(Keys.Escape) & buttonRelease == true)
            {
                Level_Response = game_states.Exit;
                buttonRelease = false;
            }
            if (Level_Response == game_states.Exit)
            {
                Exit();
            }

            #endregion



            if (Level_Response == game_states.Continue)
            {
                // if user decides to use the keyboard
                // max of 2 players for keyboard
                #region Keyboard Controlled
                //Player1 Controls - keyboard
                if (myControlType == ControlType._Keyboard)
                {
                    #region Player1 Controls

                    if (Keyboard.GetState().IsKeyDown(Keys.A))
                        Game_Level.Player_Move_Left(0);
                    if (Keyboard.GetState().IsKeyDown(Keys.D))
                        Game_Level.Player_Move_Right(0);
                    if (Keyboard.GetState().IsKeyDown(Keys.Space))
                        Game_Level.Player_Shoot(0);
                    #endregion

                    #region Player2 Controls
                    if (numberOfPlayers > 1)
                    {
                        if (Keyboard.GetState().IsKeyDown(Keys.Left))
                            Game_Level.Player_Move_Left(1);
                        if (Keyboard.GetState().IsKeyDown(Keys.Right))
                            Game_Level.Player_Move_Right(1);
                        if (Keyboard.GetState().IsKeyDown(Keys.Enter))
                            Game_Level.Player_Shoot(1);
                    }
                    #endregion

                    // Update level 
                    Level_Response = (game_states)Game_Level.Update_Level(gameTime);
                    // TODO: Add your update logic here
                }

                if (Keyboard.GetState().IsKeyDown(Keys.R) & buttonRelease == true)
                {
                    Level_Response = game_states.Restart; // testing 
                    buttonRelease = false;
                }
                #endregion 

            }

            base.Update(gameTime);
        }

        protected override void Draw(GameTime gameTime)
        {
            GraphicsDevice.Clear(Color.Black);

            // TODO: Add your drawing code here
            spriteBatch.Begin();

            // draw the start up screen 
            #region Game Running
            if (Level_Response == game_states.Continue)
            Game_Level.Draw_Level(spriteBatch);
            #endregion

            // draw failed screen 
            #region Startup Screen
            if (Level_Response == game_states.Startup)
            {
                // draw startup screen 
                spriteBatch.Draw(StartupScreen, new Vector2(0, 0), Color.White);
            }
            #endregion

            #region Select Players
            if ( Level_Response == game_states.PlayerSelect)
            spriteBatch.Draw(PlayerSelect, new Vector2(0, 0), Color.White);
            #endregion

            #region Game Paused
            if (Level_Response == game_states.Pause)
            {
                spriteBatch.Draw(pauseScreen, new Vector2(300, 50), Color.White);
            }
            #endregion

            #region Game Failed
            if (Level_Response == game_states.Failed)
            {
                spriteBatch.Draw(gameOver, new Vector2(300, 50), Color.White);
                // draw game over screen 
            }
            #endregion
            
            spriteBatch.End();
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

                        effect.View = Matrix.CreateLookAt(new Vector3(35f, 30f, 100f), new Vector3(35f, 30f, -70f),
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
