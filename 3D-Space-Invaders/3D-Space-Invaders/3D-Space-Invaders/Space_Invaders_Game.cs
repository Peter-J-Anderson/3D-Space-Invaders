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
using Microsoft.Kinect;

using Game_Level;
using HUD_Framework;

namespace _3D_Space_Invaders
{
    
    public class Space_Invaders_Game : Microsoft.Xna.Framework.Game
    {
        Vector2 handvalue = new Vector2();

        KinectSensor My_Kinect_Sensor;

        GraphicsDeviceManager graphics;
        SpriteBatch spriteBatch;
        float aspectRatio;

        string connectedStatus = "";
        Texture2D KinectImage;
        bool kinectShoot = false;

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
        Texture2D WinScreen;
        int numberOfPlayers = 2;

        bool endsongflag = true; 

        // Sound 
        Song Menu_Song;
        Song Win_Song;
        game_states Level_Response = game_states.Startup;

        Level Game_Level;

        // These are the ships that will be attacking the laser Cannon
        List<Model> Model_List = new List<Model>();

        // 2D animation list 
        List<Texture2D> Texture_List = new List<Texture2D>();
        List<SpriteFont> Font_list = new List<SpriteFont>();

        // Sound effects 
        List<SoundEffect> SoundEffect_List = new List<SoundEffect>();

        public Space_Invaders_Game()
        {
            graphics = new GraphicsDeviceManager(this);
            Content.RootDirectory = "Content";
        }

        protected override void Initialize()
        {
            // Setup kinect 
            // what function to call
            KinectSensor.KinectSensors.StatusChanged += new EventHandler<StatusChangedEventArgs>(KinectSensors_StatusChanged);
            DiscoverKinectSensor();

            SpriteFont _temp_Font = Content.Load<SpriteFont>("HUD_Font");
            Font_list.Add(_temp_Font);
            // TODO: Add your initialization logic here
            graphics.PreferredBackBufferWidth = 900;
            graphics.PreferredBackBufferHeight = 460;
            graphics.ApplyChanges();


            base.Initialize();
        }

        private void DiscoverKinectSensor()
        { 
            foreach (KinectSensor sensor in KinectSensor.KinectSensors)
            {
                if (sensor.Status == KinectStatus.Connected)
                {
                    My_Kinect_Sensor = sensor;
                    break; 
                }
            }
            if (My_Kinect_Sensor == null)
            {
                connectedStatus = "Found none Kinect Sensors connect to USB";
                return;
            }
            
            // Init the kinect 
            if (My_Kinect_Sensor.Status == KinectStatus.Connected)
            {
                InitialiseKinect();
            }
        }

        private void KinectSensors_StatusChanged(object sender, StatusChangedEventArgs e)
        {
            if (this.My_Kinect_Sensor == e.Sensor)
            {
                if (e.Status == KinectStatus.Disconnected ||
                    e.Status == KinectStatus.NotPowered)
                {
                    this.My_Kinect_Sensor = null;
                    this.DiscoverKinectSensor();
                }
            }
        }

        private bool InitialiseKinect()
        {
         
            My_Kinect_Sensor.SkeletonStream.Enable();
            My_Kinect_Sensor.SkeletonFrameReady += new
                EventHandler<SkeletonFrameReadyEventArgs>(kinectSensor_SkeletonFrameReady);

            try
            {
                My_Kinect_Sensor.Start();
            }
            catch
            {
                connectedStatus = "Cannont start Kinect!";
                return false;
            }
            return true; 
        }

        private void kinectSensor_SkeletonFrameReady(object sender, SkeletonFrameReadyEventArgs e)
        {
            using (SkeletonFrame skeleton_Frame = e.OpenSkeletonFrame())
            {
                if (skeleton_Frame != null)
                {
                    Skeleton[] skeletonData = new Skeleton[skeleton_Frame.SkeletonArrayLength];

                    skeleton_Frame.CopySkeletonDataTo(skeletonData);

                    Skeleton playerSkeleton = (from s in skeletonData
                                               where s.TrackingState == SkeletonTrackingState.Tracked
                                               select s).FirstOrDefault();
                    if (playerSkeleton != null)
                    {
                        handvalue = new Vector2(0.5f * ((playerSkeleton.Joints[JointType.Spine].Position.X)),// - ((playerSkeleton.Joints[JointType.Spine].Position.X)) * 0.5f),
                                                   playerSkeleton.Joints[JointType.HandRight].Position.Z * 0);

                        if (playerSkeleton.Joints[JointType.HandLeft].Position.Y > playerSkeleton.Joints[JointType.Head].Position.Y)
                            kinectShoot = true;
                        else
                            kinectShoot = false;
                    }
                    

                    //keep it positive
                    handvalue.X += 0.49f;
                    handvalue.X *= 100;
                    handvalue.X -= 10;
                    Window.Title = "X: " + handvalue.X + " Y: " + handvalue.Y;

                            }
            }
        }

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
            WinScreen = Content.Load<Texture2D>(@"2D Animation\Win Screen"); 

            
            SoundEffect_List.Add (Content.Load<SoundEffect>(@"Sound\MenuTransition"));
            SoundEffect_List.Add(Content.Load<SoundEffect>(@"Sound\Laser"));
            SoundEffect_List.Add(Content.Load<SoundEffect>(@"Sound\CannonHit"));
            SoundEffect_List.Add(Content.Load<SoundEffect>(@"Sound\MysteryShip"));

            Win_Song = Content.Load<Song>(@"Sound\Win");
            Menu_Song = Content.Load<Song>(@"Sound\Game_Loop");
            MediaPlayer.Play(Menu_Song);
            MediaPlayer.Pause();
            MediaPlayer.IsRepeating = true;
            MediaPlayer.Volume = 0.3f;
            _temp_Texture2D = Content.Load<Texture2D>(@"2D Animation\Background");
            //_temp_Texture2D = Content.Load<Texture2D>(@"2D Animation\Explosion");
            Texture_List.Add(_temp_Texture2D);

            



            aspectRatio = graphics.GraphicsDevice.Viewport.AspectRatio;
        }

        protected override void UnloadContent()
        {
            // TODO: Unload any non ContentManager content here
        }

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
                    buttonRelease = false;
                    myControlType = ControlType._Keyboard;
                    Level_Response = game_states.PlayerSelect;
                    SoundEffect_List[0].Play();
                }
                if (Keyboard.GetState().IsKeyDown(Keys.D1))
                {
                    buttonRelease = false;
                    myControlType = ControlType._Gamepad;
                    Level_Response = game_states.PlayerSelect;
                    SoundEffect_List[0].Play();
                }
                if (Keyboard.GetState().IsKeyDown(Keys.D2))
                {
                    buttonRelease = false;
                    myControlType = ControlType._Kinect;
                    Level_Response = game_states.PlayerSelect;
                    SoundEffect_List[0].Play();
                }

            }
            #endregion

            #region player select
            if (Level_Response == game_states.PlayerSelect)
            {
                if (Keyboard.GetState().IsKeyDown(Keys.D1) & buttonRelease == true)
                {
                    buttonRelease = false;
                    numberOfPlayers = 1;
                    Level_Response = game_states.Continue;
                    SoundEffect_List[0].Play();
                    // Create level here :)
                    Game_Level = new Level(1, numberOfPlayers, Model_List, Texture_List, Font_list, SoundEffect_List);//, Animation_List);

                }
                if (Keyboard.GetState().IsKeyDown(Keys.D2) & buttonRelease == true)
                {
                    buttonRelease = false;
                    numberOfPlayers = 2;
                    Level_Response = game_states.Continue;
                    SoundEffect_List[0].Play();
                    // Create level here :)
                    Game_Level = new Level(1, numberOfPlayers, Model_List, Texture_List, Font_list, SoundEffect_List);//, Animation_List);

                }

            }
            #endregion

            
            if (Keyboard.GetState().IsKeyUp(Keys.P) && Keyboard.GetState().IsKeyUp(Keys.R) && 
                Keyboard.GetState().IsKeyUp(Keys.D0) && Keyboard.GetState().IsKeyUp(Keys.D1) && Keyboard.GetState().IsKeyUp(Keys.D2))
                buttonRelease = true;
            

            #region pausing game
            if (Level_Response == game_states.Continue)
            if (Keyboard.GetState().IsKeyDown(Keys.P) & buttonRelease == true)
            {   // to pause game
                SoundEffect_List[0].Play();
                MediaPlayer.Pause();
                buttonRelease = false;
                Level_Response = game_states.Pause; // testing 
            }

            if (Level_Response == game_states.Pause)
            {
                if (Keyboard.GetState().IsKeyDown(Keys.P) & buttonRelease == true)
                { // unpause
                    SoundEffect_List[0].Play();
                    MediaPlayer.Resume();
                    Level_Response = game_states.Continue; // testing 
                    buttonRelease = false;
                }
                // Show level menu - here have choices 
            }
            #endregion

            #region Restarting Game

            if (Level_Response == game_states.Restart)
            { // restart game with 2 players at the moment
                SoundEffect_List[0].Play();
                Game_Level = new Level(1, numberOfPlayers, Model_List, Texture_List, Font_list, SoundEffect_List);
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
                SoundEffect_List[0].Play();
                Exit();
            }

            #endregion

            #region Game Won

            if (Level_Response == game_states.Complete)
            {
                // do somethign if needed - maybe play a sound 
                //MediaPlayer.Stop();
                if (endsongflag == true)
                {
                    MediaPlayer.Play(Win_Song);
                    //MediaPlayer.Resume();
                    endsongflag = false;
                }

            }

            #endregion 



            if (Level_Response == game_states.Continue)
            {
                MediaPlayer.Resume();


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

                
                #region Kinect Controlled
                //Player1 Controls - keyboard
                if (myControlType == ControlType._Kinect)
                {
                    #region Player1 Controls

                    
                    Game_Level.Player_Move(0,(int)handvalue.X);
                    
                    
                    if (kinectShoot == true)
                        Game_Level.Player_Shoot(0);
                    #endregion


                    // Update level 
                    Level_Response = (game_states)Game_Level.Update_Level(gameTime);
                    // TODO: Add your update logic here

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

            #region You Win
            if (Level_Response == game_states.Complete)
                spriteBatch.Draw(WinScreen, new Vector2(0, 0), Color.White);

            #endregion

            //Texture2D rect = Content.Load<Texture2D>(@"2D Animation\Explosion");

            

            //priteBatch.Draw(rect, handvalue, Color.White);

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

                        effect.View = Matrix.CreateLookAt(new Vector3(45f, 30f, 100f),
                                                          new Vector3(35f, 30f, -70f),
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
