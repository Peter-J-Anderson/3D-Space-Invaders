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


namespace WindowsGame1
{

    class Game1 : Microsoft.Xna.Framework.Game
    {

        private Matrix view;
        private Matrix proj;

        private GraphicsDeviceManager graphics;
        private ContentManager contentManager;

        private Model sphere;
        private Texture2D sphereTexture;

        // Set the avatar position and rotation variables.
        Vector3 avatarPosition = new Vector3(0, 0, -22);
        float avatarYaw;

        // Set the direction the camera points without rotation.
        Vector3 cameraReference = new Vector3(0, 0, 10);

        // Set rates in world units per 1/60th second (the default fixed step interval)
        float rotationSpeed = 1f / 60f;
        float forwardSpeed = 25f / 60f;

        // Set information about the game window.
        static int screenWidth = 800;
        static int screenHeight = 600;
        static float aspectRatio = (float)screenWidth / (float)screenHeight;

        // Set field of view of the camera in radians (pi/4 is 45 degrees).
        static float FOV = MathHelper.PiOver4;

        // Set z-values of the near and far clipping planes.
        static float nearClip = 5.0f;
        static float farClip = 1000.0f;


        struct WorldObject
        {
            public Vector3 position;
            public Vector3 velocity;
            public Model model;
            public Texture2D texture2D;
            public Vector3 lastPosition;
            public void MoveForward()
            {
                lastPosition = position;
                position += velocity;
            }
            public void Backup()
            {
                position -= velocity;
            }
            public void ReverseVelocity()
            {
                velocity.X = -velocity.X;
            }
        }

        WorldObject sphere1;
        WorldObject sphere2;
        WorldObject endSphere1;
        WorldObject endSphere2;
        /// <summary>
        /// LoadContent will be called once per game and is the place to load
        /// all of your content.
        /// </summary>
        protected override void LoadContent()
        {
            // Create a new SpriteBatch, which can be used to draw textures.
            spriteBatch = new SpriteBatch(GraphicsDevice);

            // TODO: use this.Content to load your game content here
        }

        /// <summary>
        /// UnloadContent will be called once per game and is the place to unload
        /// all content.
        /// </summary>
        protected override void UnloadContent()
        {
            // TODO: Unload any non ContentManager content here
        }
        static void CheckForCollisions(ref WorldObject c1, ref WorldObject c2)
        {
            for (int i = 0; i < c1.model.Meshes.Count; i++)
            {
                // Check whether the bounding boxes of the two cubes intersect.
                BoundingSphere c1BoundingSphere = c1.model.Meshes[i].BoundingSphere;
                c1BoundingSphere.Center += c1.position;

                for (int j = 0; j < c2.model.Meshes.Count; j++)
                {
                    BoundingSphere c2BoundingSphere = c2.model.Meshes[j].BoundingSphere;
                    c2BoundingSphere.Center += c2.position;

                    if (c1BoundingSphere.Intersects(c2BoundingSphere))
                    {
                        c2.ReverseVelocity();
                        c1.Backup();
                        c1.ReverseVelocity();
                        return;
                    }
                }
            }
        }


        void UpdateCamera()
        {
            // Calculate the camera's current position.
            Vector3 cameraPosition = avatarPosition;

            // Copy the camera's reference vector.
            Vector3 cameraLookat = cameraReference;

            // Create a vector pointing the direction the camera is facing.
            cameraLookat = Vector3.Transform(cameraLookat, Matrix.CreateRotationY(avatarYaw));

            // Calculate the position the camera is looking at.
            cameraLookat += cameraPosition;

            // Set up the view matrix and projection matrix.
            view = Matrix.CreateLookAt(cameraPosition, cameraLookat, new Vector3(0.0f, 1.0f, 0.0f));
            proj = Matrix.CreatePerspectiveFieldOfView(FOV, aspectRatio, nearClip, farClip);
        }

        protected override void Draw(GameTime gameTime)
        {
            base.Draw(gameTime);

            UpdateCamera();
            GraphicsDevice device = graphics.GraphicsDevice;
            device.Clear(ClearOptions.Target | ClearOptions.DepthBuffer, new Vector4(0, 0, 0, 255), 1.0f, 0);

            DrawModel(sphere1.model, Matrix.CreateTranslation(sphere1.position), sphere1.texture2D);

            DrawModel(sphere2.model, Matrix.CreateTranslation(sphere2.position), sphere2.texture2D);
            DrawModel(endSphere1.model, Matrix.CreateTranslation(endSphere1.position), endSphere1.texture2D);
            DrawModel(endSphere2.model, Matrix.CreateTranslation(endSphere2.position), endSphere2.texture2D);
        }

        // Update the position and direction of the avatar.
        void UpdateAvatarPosition()
        {
            KeyboardState keyboardState = Keyboard.GetState();

            GamePadState currentState = GamePad.GetState(PlayerIndex.One);

            if (keyboardState.IsKeyDown(Keys.Left) || (ButtonState.Pressed == currentState.DPad.Left))
            {
                // Rotate left.
                avatarYaw += rotationSpeed;
            }
            if (keyboardState.IsKeyDown(Keys.Right) || (ButtonState.Pressed == currentState.DPad.Right))
            {
                // Rotate right.
                avatarYaw -= rotationSpeed;
            }
            if (keyboardState.IsKeyDown(Keys.Up) || (ButtonState.Pressed == currentState.DPad.Up))
            {
                Matrix forwardMovement = Matrix.CreateRotationY(avatarYaw);
                Vector3 v = new Vector3(0, 0, forwardSpeed);
                v = Vector3.Transform(v, forwardMovement);
                avatarPosition.Z += v.Z;
                avatarPosition.X += v.X;
            }
            if (keyboardState.IsKeyDown(Keys.Down) || (ButtonState.Pressed == currentState.DPad.Down))
            {
                Matrix forwardMovement = Matrix.CreateRotationY(avatarYaw);
                Vector3 v = new Vector3(0, 0, -forwardSpeed);
                v = Vector3.Transform(v, forwardMovement);
                avatarPosition.Z += v.Z;
                avatarPosition.X += v.X;
            }
        }

        protected override void Update(GameTime gameTime)
        {
            base.Update(gameTime);

            UpdateAvatarPosition();

            sphere1.MoveForward();
            CheckForCollisions(ref sphere1, ref sphere2);
            CheckForCollisions(ref sphere1, ref endSphere1);
            CheckForCollisions(ref sphere1, ref endSphere2);

            sphere2.MoveForward();
            CheckForCollisions(ref sphere2, ref sphere1);
            CheckForCollisions(ref sphere2, ref endSphere1);
            CheckForCollisions(ref sphere2, ref endSphere2);
        }

        protected void LoadGraphicsContent(bool loadAllContent)
        {
            base.LoadGraphicsContent(loadAllContent);
            if (loadAllContent)
            {
                sphere = contentManager.Load<Model>("sphere");
                sphereTexture = contentManager.Load<Texture2D>("spheretexture");

                sphere1.model = sphere;
                sphere1.texture2D = sphereTexture;

                sphere2.model = sphere;
                sphere2.texture2D = sphereTexture;

                endSphere1.model = sphere;
                endSphere1.texture2D = sphereTexture;

                endSphere2.model = sphere;
                endSphere2.texture2D = sphereTexture;
            }
        }

        protected void UnloadGraphicsContent(bool unloadAllContent)
        {
            base.UnloadGraphicsContent(unloadAllContent);
            if (unloadAllContent)
            {
                contentManager.Unload();
            }
        }

        public Game1()
        {
            graphics = new Microsoft.Xna.Framework.GraphicsDeviceManager(this);
            contentManager = new ContentManager(Services);

            sphere1 = new WorldObject();
            sphere1.position = new Vector3(5, 0, 0);
            sphere1.velocity = new Vector3(-0.1f, 0, 0);

            sphere2 = new WorldObject();
            sphere2.position = new Vector3(-6, 0.5f, 0);
            sphere2.velocity = new Vector3(0.1f, 0, 0);

            endSphere1 = new WorldObject();
            endSphere1.position = new Vector3(10, 0, 0);
            endSphere1.velocity = new Vector3(0, 0, 0);

            endSphere2 = new WorldObject();
            endSphere2.position = new Vector3(-10, 0, 0);
            endSphere2.velocity = new Vector3(0, 0, 0);
        }



        void DrawModel(Model model, Matrix world, Texture2D texture)
        {
            foreach (ModelMesh mesh in model.Meshes)
            {
                foreach (BasicEffect be in mesh.Effects)
                {
                    be.Projection = proj;
                    be.View = view;
                    be.World = world;
                    be.Texture = texture;
                    be.TextureEnabled = true;
                }
                mesh.Draw();
            }
        }


    }
}
