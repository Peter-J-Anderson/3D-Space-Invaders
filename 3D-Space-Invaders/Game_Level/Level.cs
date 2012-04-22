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
using Defence_Bunker_Framework;
using Laser_Framework;
using Alien_Framework;
using Cannon_Framework;
using Animation_2D_Framework;
using HUD_Framework;
namespace Game_Level
{
    public class Level
    {
        #region Variable
        // Game Boundries           
        public enum Game_Boundries
        {
            LeftHandSide = 0,      // lhs
            Top = 67,                // top
            RightHandSide = 76,    // rhs
            Bottom = 0          // bottom
        };

        public enum Level_State
        {
            Continue,
            Failed,
            Complete,
            Pause,
            Restart,
            Exit
        };


        Level_State myLevel_State = Level_State.Continue;
        // Level attributes
        int level { get; set; }
        int players;

        // HUD stuff - hud per level
        HUD myHUD;

        // interval for movement
        float interval = 100;

        //List of models for this level
        List<Model> Model_List;

        List<Texture2D> Texture_List;
        List<SoundEffect> SoundEffect_List = new List<SoundEffect>();

        List<SpriteFont> HUD_Font_List;
        Alien Mystery_Ship;
        List<Alien> Mystery_Ship_List = new List<Alien>();

        // Holds the Cannon for this level
        List<Cannon> Player_List = new List<Cannon>();
        private Cannon Player_Cannon;

        // Will hold the laser for each player
        private List<Laser> Player_Laser_List = new List<Laser>();

        // Holds the aliens for this level 
        private List<List<Alien>> Alien_Column;
        private List<Alien> Alien_Row;

        // Will hold the lasers from aliens
        private List<Laser> Alien_Laser_List = new List<Laser>();

        // Movement timer
        // Timers are used to detemine when objects move
        float AlienShootTimer = 0f; // Movement of Alien Lasers

        bool AlienShootFlag = false;


        #endregion



        // Movement speed of aliens
        private float alien_Speed { get; set; }
        private int aliens_Killed { get; set; }

        // How often all the aliens shoot (e.g. one from all the aliens per second)
        private float alien_Fire_Rate { get; set; }

        // Hold the bunkers 
        private List<Defence_Bunker> Bunker_List = new List<Defence_Bunker>();


        public Level(int _level, int _players, List<Model> _model_List, List<Texture2D> _texture_List, List<SpriteFont> _font_List, List<SoundEffect> _soundEffect_List)
        {
            players = _players;
            level = _level;
            Model_List = _model_List;
            Texture_List = _texture_List;
            myHUD = new HUD(Texture_List[0]);   // hud background
            HUD_Font_List = _font_List;
            SoundEffect_List = _soundEffect_List;
            Initialise();
        }


        private void Initialise()
        {
            //alien_Speed = 0.5f;
            Alien_Column = new List<List<Alien>>();

            Level_Setup();
        }

        private void Level_Setup()
        {
            // Each level will start with 55 aliens, not including the Mystery-ship
            aliens_Killed = 0;

            // Staring fire rate = 1 per second
            Update_Alien_Fire_Rate();

            // Create aliens 
            Create_Aliens();

            // Create Cannons
            Create_Cannon();

            // Create Bunkers
            Create_Bunker();
        }

        private void Create_Aliens()
        {

            for (int i = 0; i < 11; i++) // loop through each column
            {
                Alien_Row = new List<Alien>();
                for (int j = 0; j < 1; j++) // for each row in the column put an Alien
                {
                    Alien_Row.Add(new Alien(new Vector3((float)Game_Boundries.LeftHandSide + (6 * i), ((float)Game_Boundries.Top - 13) - 1 * j, 0), new Vector3(0.5f, 0, 0),
                    Space_Invader_Char.Character_Types.Invader_30, Model_List[(int)Space_Invader_Char.Character_Types.Invader_30]));
                }
                
                for (int j = 1; j < 3; j++)
                {
                    Alien_Row.Add(new Alien(new Vector3((float)Game_Boundries.LeftHandSide + (6 * i), ((float)Game_Boundries.Top - 13) - 4.5f * j, 0), new Vector3(0.5f, 0, 0),
                    Space_Invader_Char.Character_Types.Invader_20, Model_List[(int)Space_Invader_Char.Character_Types.Invader_20]));
                }

                for (int j = 3; j < 5; j++)
                {
                    Alien_Row.Add(new Alien(new Vector3((float)Game_Boundries.LeftHandSide + (6 * i), ((float)Game_Boundries.Top - 13) - 4.5f * j, 0), new Vector3(0.5f, 0, 0),
                    Space_Invader_Char.Character_Types.Invader_10, Model_List[(int)Space_Invader_Char.Character_Types.Invader_10]));
                }
                Alien_Column.Add(Alien_Row);
                Update_Alien_Speed();
            }
        }

        private void Create_Mystery_Ship()
        {
            // Create and draw the Mystery Ship
            Mystery_Ship = new Alien(new Vector3((float)Game_Boundries.LeftHandSide - 10, (float)Game_Boundries.Top - 10, 0), new Vector3(0.3f, 0, 0),
            Space_Invader_Char.Character_Types.Invader_Mystery, Model_List[(int)Space_Invader_Char.Character_Types.Invader_Mystery]);

            Mystery_Ship_List.Add(Mystery_Ship);
        }

        private void Create_Bunker()
        {
            // this will create the bunker based on a start location
            // start with a basic block to represent the bunkers
            for (int i = 0; i < 7; i++)
            {
                Bunker_List.Add(new Defence_Bunker(new Vector3((float)Game_Boundries.LeftHandSide + (5 + i * 10),
                                                               (float)Game_Boundries.Bottom + 15, 0), 5,
                    Model_List[(int)Space_Invader_Char.Character_Types.Bunker_Block]));
            }
        }

        private void Create_Cannon()
        {
            for (int i = 0; i < players; i++)
                Create_Player_Cannon();

        }

        private void Create_Player_Cannon()
        {
            Player_Cannon = new Cannon(new Vector3((float)Game_Boundries.LeftHandSide + 20,
                (float)Game_Boundries.Bottom + 10, 0), new Vector3(0.5f, 0, 0), 3,
                 Model_List[(int)Space_Invader_Char.Character_Types.Cannon]);
            Player_List.Add(Player_Cannon);
        }

        private void Create_Player_Laser(int _playerNumber)
        {
            Player_Laser_List.Add(Player_List[_playerNumber].Laser(Model_List[(int)Space_Invader_Char.Character_Types.Laser], "Player" + _playerNumber));
        }

        private void Update_Alien_Speed()
        {
            // NOTE: FIND A BETTER WAY TO DO THIS

            alien_Speed = ((float)level + (float)aliens_Killed) / interval;

            //for (int i = 0; i < Alien_Column.Count; i++)
            //for (int j = 0; j < Alien_Column[i].Count; j++)
            //    Alien_Column[i][j].Velocity = new Vector3(alien_Speed, 0, 0);

            //Update_Alien_Fire_Rate();

        }

        private void Update_Alien_Fire_Rate()
        {
            // setting global fire rate
            alien_Fire_Rate = (55 + level) * 10;// aliens_Killed + level) * 10;
        }

        //game update functions
        public int Update_Level(GameTime gameTime)
        {
            Update_Timers(gameTime);
            Alien_Collision();
            Player_Collision();

            Update_Laser_Position();
            Update_Alien_Position();
            Update_Alien_Shooting();
            Reset_Flags();
            
            if (myLevel_State == Level_State.Failed)
                return (int)myLevel_State;


            for (int _value = 0; _value < Player_List.Count; _value++)
            {
                myLevel_State = Level_State.Failed;
                if (Player_List[_value].Lives > 0)
                {
                    myLevel_State = Level_State.Continue;
                    break;
                    //return (int)myLevel_State;
                }
            }


            if (aliens_Killed == 55)
            {
                myLevel_State = Level_State.Complete;
                //return (int)myLevel_State;
            }

            /*  int values 
             *   0 = continue
             *   1 = failed
             *   2 = complete - create next level with all points and crap 
             */
            return (int)myLevel_State;

        }

        #region Updates for level

        private void Update_Timers(GameTime gameTime)
        {
            #region Timer Control
            // Update game timers
            float tempTime = (float)gameTime.ElapsedGameTime.TotalMilliseconds;
            AlienShootTimer += tempTime;

            if (AlienShootTimer > alien_Fire_Rate)
            {
                AlienShootFlag = true;
                AlienShootTimer = 0;
            }

            #endregion

            // Update alien/Cannon cooldowns
            for (int i = 0; i < Alien_Column.Count; i++)
                for (int j = 0; j < Alien_Column[i].Count; j++)
                {
                    Alien_Column[i][j].Update_Cooldown(gameTime);
                }

            // Update Cooldown for Player1
            for (int i = 0; i < Player_List.Count; i++)
            {
                Player_List[i].Update_Cooldown(gameTime);
            }

            //for (int i = 0; i < Animation_List.Count; i++)
            //{
            //    Animation_List[i].Update_Animation(tempTime);
            //}
        }

        private void Alien_Collision()
        {
            #region Alien Lasers with Bunkers
            // Alien lasers with bunkers


            for (int i = 0; i < Bunker_List.Count; i++)
            {
                for (int ii = 0; ii < Bunker_List[i].Bunker_Column.Count; ii++)
                    for (int jj = 0; jj < Bunker_List[i].Bunker_Column[ii].Count; jj++)
                        for (int j = 0; j < Alien_Laser_List.Count; j++)
                        {
                            if (Bunker_List[i].Bunker_Column[ii][jj].Check_Collision(Alien_Laser_List[j].myBoundingSphere))
                            {
                                //Animation_List.Add(new Animation_2D(new Vector2(Bunker_List[i].Bunker_Column[ii][jj].Position.X,
                                //                                                Bunker_List[i].Bunker_Column[ii][jj].Position.Y),
                                //                                    4,
                                //                                    4,
                                //                                    Texture_List[0]));

                                Bunker_List[i].Bunker_Column[ii].RemoveAt(jj);
                                Alien_Laser_List.RemoveAt(j);

                                return;
                            }
                        }
            }
            #endregion

            #region Alien Lasers with Cannon

            for (int i = 0; i < players; i++)
            {
                if (Player_List[i].Lives > 0)
                    for (int j = 0; j < Alien_Laser_List.Count; j++)
                    {
                        if (Alien_Laser_List[j].myBoundingSphere.Intersects(Player_List[i].myBoundingSphere))
                        {
                            SoundEffect_List[2].Play();
                            Player_List[i].Lives--;
                            Alien_Laser_List.RemoveAt(j);
                            for (int _value = 0; _value < Player_List.Count; _value++)
                            {
                                if (Player_List[_value].Lives > 0)
                                {
                                    myLevel_State = Level_State.Continue;
                                    return;
                                }
                            }
                            return;
                        }
                    }
            }
            #endregion

            #region Alien with Player Cannon

            if (Bunker_List.Count == 0)  // No need to check if the aliens havent made it past the bunkers 
                for (int i = 0; i < Alien_Column.Count; i++)
                    for (int j = 0; j < Alien_Column[i].Count; j++)
                    {
                        for (int k = 0; k < Player_List.Count; k++)
                            if (Alien_Column[i][j].myBoundingSphere.Intersects(Player_List[k].myBoundingSphere))
                            {
                                myLevel_State = Level_State.Failed;
                                return;
                            }
                    }

            #endregion


        }

        private void Player_Collision()
        {
            #region Player Lasers with Aliens
            for (int i = 0; i < Alien_Column.Count; i++)
                for (int j = 0; j < Alien_Column[i].Count; j++)
                {
                    for (int k = 0; k < Player_Laser_List.Count; k++)
                    {
                        if (Player_Laser_List[k].myBoundingSphere.Intersects(Alien_Column[i][j].myBoundingSphere))
                        {

                            for (int kk = 0; kk < Player_List.Count; kk++)
                            {
                                if (Player_Laser_List[k].Owner == Player_List[kk].myName)
                                {
                                    Player_List[kk].Points += Alien_Column[i][j].Points;
                                }
                            }

                            Alien_Column[i].RemoveAt(j);

                            aliens_Killed++;
                            if (aliens_Killed == 2 || aliens_Killed == 40)
                            {
                                Create_Mystery_Ship();
                            }

                            if (Alien_Column[i].Count == 0)
                                Alien_Column.RemoveAt(i);
                            Player_Laser_List.RemoveAt(k);
                            return;
                        }
                    }
                }


            for (int i = 0; i < Mystery_Ship_List.Count; i++)
            {
                // NOTE: fix this so it is a song no a effect - loop it
                SoundEffect_List[3].Play();

                if (Mystery_Ship_List[i].Position.X > (int)Game_Boundries.RightHandSide + 3)
                {
                    Mystery_Ship_List.RemoveAt(i);
                    break;
                }
                for (int k = 0; k < Player_Laser_List.Count; k++)
                {
                    if (Player_Laser_List[k].myBoundingSphere.Intersects(Mystery_Ship_List[i].myBoundingSphere))
                    {


                        for (int kk = 0; kk < Player_List.Count; kk++)
                        {
                            
                            if (Player_Laser_List[k].Owner == Player_List[kk].myName)
                            {
                                Player_List[kk].Points += 100;
                            }
                        }
                        SoundEffect_List[2].Play();
                        Mystery_Ship_List.RemoveAt(i);

                        Player_Laser_List.RemoveAt(k);
                        return;
                    }
                }
            }
            #endregion

            #region Player Cannon Lasers with Bunkers
            for (int i = 0; i < Bunker_List.Count; i++)
            {
                for (int j = 0; j < Player_Laser_List.Count; j++)
                {
                    if (Bunker_List[i].Check_Collision(Player_Laser_List[j].myBoundingSphere))
                    {
                        Player_Laser_List.RemoveAt(j);
                        return;
                    }
                }
            }
            #endregion
        }


        #region Player Controls

        public void Player_Shoot(int _player)
        {
            if (Player_List[_player].Lives > 0)
            {
                if (Player_List[_player].ShotFlag == false) SoundEffect_List[1].Play();   
                Player_Laser_List.Add(Player_List[_player].Laser(Model_List[(int)Space_Invader_Char.Character_Types.Laser], "Player" + _player));
                 
            }
        }

        public void Player_Move_Left(int _player)
        {
            if (Player_List[_player].Lives > 0)
                if (Player_List[_player].Position.X > (int)Game_Boundries.LeftHandSide)
                    Player_List[_player].update_Positon(Cannon.Movement_Direction.Left);
        }
        public void Player_Move(int _player, int _xPosition)
        {
            if (Player_List[_player].Lives > 0 && _xPosition > 0 && _xPosition < (int)Game_Boundries.RightHandSide)
                if (Player_List[_player].Position.X > (int)Game_Boundries.LeftHandSide)
                    Player_List[_player].set_Position(_xPosition);
        }

        public void Player_Move_Right(int _player)
        {
            if (Player_List[_player].Lives > 0)
                if (Player_List[_player].Position.X < (int)Game_Boundries.RightHandSide)
                    Player_List[_player].update_Positon(Cannon.Movement_Direction.Right);
        }
        #endregion

        private void Update_Laser_Position()
        {
            // Alien Lasesrs
            for (int i = 0; i < Alien_Laser_List.Count; i++)
            {
                Alien_Laser_List[i].update_Positon(new Vector3(Alien_Laser_List[i].Velocity.X,
                                                               Alien_Laser_List[i].Velocity.Y,
                                                               Alien_Laser_List[i].Velocity.Z));
                if (Alien_Laser_List[i].Position.X > (float)Game_Boundries.RightHandSide ||
                    Alien_Laser_List[i].Position.X < (float)Game_Boundries.LeftHandSide ||
                    Alien_Laser_List[i].Position.Y > (float)Game_Boundries.Top ||
                    Alien_Laser_List[i].Position.Y < (float)Game_Boundries.Bottom)
                    Alien_Laser_List.RemoveAt(i);

            }
            // Player1 Lasers
            for (int i = 0; i < Player_Laser_List.Count; i++)
            {
                Player_Laser_List[i].update_Positon(new Vector3(Player_Laser_List[i].Velocity.X,
                                                                 Player_Laser_List[i].Velocity.Y,
                                                                 Player_Laser_List[i].Velocity.Z));
                if (Player_Laser_List[i].Position.X > (float)Game_Boundries.RightHandSide ||
                    Player_Laser_List[i].Position.X < (float)Game_Boundries.LeftHandSide ||
                    Player_Laser_List[i].Position.Y > (float)Game_Boundries.Top ||
                    Player_Laser_List[i].Position.Y < (float)Game_Boundries.Bottom)
                    Player_Laser_List.RemoveAt(i);
            }
        }

        private void Update_Alien_Position()
        {
            float yValue = 0;

            // Inverty speed and change vertical speed if needed
            // NOTE: SHOULD BE ABLE TO ONLY CHECK THE FIRST ALIEN OF EACH COLUMN
            //Update_Alien_Speed();

            if (alien_Speed < 0)
                alien_Speed = -(((float)level + (float)aliens_Killed) / interval);
            else if (alien_Speed > 0)
                alien_Speed = (((float)level + (float)aliens_Killed) / interval);

            if (Alien_Column.Count > 0)
            if (Alien_Column[Alien_Column.Count - 1][0].Position.X > (float)Game_Boundries.RightHandSide)
            {
                alien_Speed = -(Math.Abs(((float)level + (float)aliens_Killed) / interval));
                yValue = -0.5f;
            }
            else if (Alien_Column[0][0].Position.X < (float)Game_Boundries.LeftHandSide)
            {
                alien_Speed = Math.Abs(((float)level + (float)aliens_Killed) / interval);
                yValue = -0.5f;
            }
            for (int i = 0; i < Mystery_Ship_List.Count; i++)
            {
                Mystery_Ship_List[i].update_Positon(Mystery_Ship_List[i].Velocity);
            }

            for (int i = 0; i < Alien_Column.Count; i++)
            {
                for (int j = 0; j < Alien_Column[i].Count; j++)
                {
                    if (Alien_Column[i][j].Position.Y < (int)Game_Boundries.Bottom + 15)
                    {
                         myLevel_State = Level_State.Failed;
                        return;
                    }
                    Alien_Column[i][j].update_Positon(new Vector3(alien_Speed,
                                                             yValue,
                                                             0));
                    

                }
            }


        }

        private void Update_Alien_Shooting()
        {
            if (myLevel_State == Level_State.Failed)
                return;
            Random rand1 = new Random((int)DateTime.Now.Ticks & 0x0000FFFF);
            int shootingAlien = rand1.Next(0, (Alien_Column.Count));

            // Aliens shoot
            if (AlienShootFlag == true && aliens_Killed != 55)
            {
                // Randomly pick a column and make the bottom Alien shoot 
                Alien_Laser_List.Add(Alien_Column[shootingAlien][Alien_Column[shootingAlien].Count - 1].Laser(Model_List[(int)Space_Invader_Char.Character_Types.Laser], "Alien"));
                AlienShootFlag = false;
            }
        }

        private void Reset_Flags()
        {
            // Reset flags and movement values
            AlienShootFlag = false;
        }
        #endregion

        public void Draw_Level(SpriteBatch spriteBatch)
        {
            Draw_Lasers();
            Draw_Bunkers();
            Draw_Aliens();

            Draw_HUD(spriteBatch);


            // all players 
            for (int i = 0; i < Player_List.Count; i++)
                if (Player_List[i].Lives > 0)
                    Draw_Player(i);

        }

        #region Draw Level Objects

        private void Draw_HUD(SpriteBatch spriteBatch)
        {
            myHUD.Draw_HUD(spriteBatch);    // draw background 
            for (int i = 0; i < Player_List.Count; i++)
            {
                spriteBatch.DrawString(HUD_Font_List[0], "Player" + (i + 1) + " Stats", new Vector2(5, 10 + (100 * i)), Color.White);
                spriteBatch.DrawString(HUD_Font_List[0], "Score:" + Player_List[i].Points, new Vector2(5, 30 + (100 * i)), Color.White);
                spriteBatch.DrawString(HUD_Font_List[0], "Lives:" + Player_List[i].Lives, new Vector2(5, 50 + (100 * i)), Color.White);
            }

        }

        private void Draw_Lasers()
        {
            // Draw alien Lasers
            for (int i = 0; i < Alien_Laser_List.Count; i++)
            {
                Alien_Laser_List[i].Draw_Model();
            }

            for (int i = 0; i < Mystery_Ship_List.Count; i++)
                Mystery_Ship_List[i].Draw_Model();

            // Draw all player1 lasers
            for (int i = 0; i < Player_Laser_List.Count; i++)
            {
                Player_Laser_List[i].Draw_Model();
            }


        }

        private void Draw_Bunkers()
        {
            for (int i = 0; i < Bunker_List.Count; i++)
            {
                Bunker_List[i].Draw_Bunker();
            }
        }

        private void Draw_Aliens()
        {
            for (int i = 0; i < Alien_Column.Count; i++)
            {
                for (int j = 0; j < Alien_Column[i].Count; j++)
                    Alien_Column[i][j].Draw_Model();
            }
        }

        private void Draw_Player(int _player)
        {
            Player_List[_player].Draw_Model();
        }

        //private void Draw_Animations(SpriteBatch spriteBatch)
        //{
        //for (int i = 0; i < Animation_List.Count; i++)
        //{
        //  if (Animation_List[i].Draw(spriteBatch))
        //    {
        //        Animation_List.RemoveAt(i);
        //    }
        //}
        //}
        #endregion

    }
}
