using Microsoft.Xna.Framework.Graphics;   //   for Texture2D
using Microsoft.Xna.Framework;  //  for Vector2
using Microsoft.Xna.Framework.Content;

namespace Animation_2D_Framework
{
    public class Animation_2D
    {
       

         Vector2 Position;
        private Texture2D texture { get; set; }
        Rectangle sourceRect;
        float animTimer = 0f;  //A Timer variable
        float interval = 100f;
        bool destroy = false;

        private int NumFramesX { get; set; }
        private int NumFramesY { get; set; }
        private int CurrentX { get; set; }
        private int CurrentY { get; set; }


        public Animation_2D(Vector2 _position, int _numFramesX, int _numFramesY, Texture2D _texture)
        {
            float tempx = 800 / 126;
            float tempy = 480 / 67;

            this.Position.X = (_position.X) * tempx;
            this.Position.Y = (_position.Y) * tempy;

            NumFramesX = _numFramesX;
            NumFramesY = _numFramesY;
            texture = _texture;
        }
        
        public bool Draw(SpriteBatch spriteBatch)
        {
            
            sourceRect.X = texture.Width / NumFramesX * CurrentX;
            sourceRect.Y = texture.Height / NumFramesY * CurrentY;
            sourceRect.Width = texture.Width / NumFramesX;
            sourceRect.Height = texture.Height / NumFramesY;

            spriteBatch.Draw(texture, Position, sourceRect, Color.White, 0.0f, Vector2.Zero, 0.25f, SpriteEffects.FlipVertically, 0.0f);


            return destroy;   // continue animation
        }

        public void Update_Animation(float _interval)
        {
            animTimer += _interval;
            if (animTimer > interval)
            {
              
                //Show the next frame
                CurrentX++;
                //Reset the timer
                animTimer = 0.0f;
            }
            if (CurrentX == NumFramesX)
            {
                if (CurrentY == NumFramesY)
                {
                    destroy = true;
                }
                else
                {
                    CurrentX = 0;
                    CurrentY++;
                }
            }
            
        
        }

    }
}
