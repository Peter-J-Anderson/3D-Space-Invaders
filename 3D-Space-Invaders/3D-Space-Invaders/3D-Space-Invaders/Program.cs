using System;

namespace _3D_Space_Invaders
{
#if WINDOWS || XBOX
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        static void Main(string[] args)
        {
            using (Space_Invaders game = new Space_Invaders())
            {
                game.Run();
            }
        }
    }
#endif
}

