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

using Cannon_Framework;

namespace HUD_Framework
{
    public class HUD
    {
        public Texture2D Background { get; set; }

        public HUD(Texture2D _background)//, List<Cannon> _playerList)
        {
            Background = _background;
        }

        public void Update_HUD()
        { 
        
        }

        public void Draw_HUD(SpriteBatch spriteBatch)
        {
            // Draw backgroup 
            spriteBatch.Draw(Background, new Vector2(0, 0), Color.White);
        }

    }
}
