# For more information about using CMake with Android Studio, read the
# documentation: https://d.android.com/studio/projects/add-native-code.html

# Sets the minimum version of CMake required to build the native library.

cmake_minimum_required(VERSION 3.4.1)

set(CMAKE_BUILD_TYPE Release)
set(CMAKE_CXX_FLAGS_RELEASE "-Ofast -std=c++11 -Wno-initializer-overrides")
set(CMAKE_C_FLAGS_RELEASE "-Ofast -Wno-initializer-overrides")

# Creates and names a library, sets it as either STATIC
# or SHARED, and provides the relative paths to its source code.
# You can define multiple libraries, and CMake builds them for you.
# Gradle automatically packages shared libraries with your APK.

add_library( # Sets the name of the library.
             FlappyBird

             # Sets the library as a shared library.
             SHARED

             # Provides a relative path to your source file(s).
src/main/cpp/FlappyBirdGame/NumberRenderer.h
src/main/cpp/FlappyBirdGame/Level.cpp
src/main/cpp/FlappyBirdGame/PipePair.cpp
src/main/cpp/FlappyBirdGame/Bird.h
src/main/cpp/FlappyBirdGame/Bird.cpp
src/main/cpp/FlappyBirdGame/NumberRenderer.cpp
src/main/cpp/FlappyBirdGame/Level.h
src/main/cpp/FlappyBirdGame/PipePair.h
src/main/cpp/FlappyBirdGame/MainMenu.h
src/main/cpp/FlappyBirdGame/MainMenu.cpp
src/main/cpp/Core/Game.cpp
src/main/cpp/Core/FileLoader.cpp
src/main/cpp/Core/AudioManager.cpp
src/main/cpp/Core/Game.h
src/main/cpp/Core/ShaderManager.h
src/main/cpp/Core/FileLoader.h
src/main/cpp/Core/Transform.h
src/main/cpp/Core/Transform.cpp
src/main/cpp/Core/lodepng.cpp
src/main/cpp/Core/AudioManager.h
src/main/cpp/Core/Logger.h
src/main/cpp/Core/MeshManager.cpp
src/main/cpp/Core/ShaderManager.cpp
src/main/cpp/Core/MeshManager.h
src/main/cpp/Core/TextureManager.cpp
src/main/cpp/Core/TextureManager.h
src/main/cpp/Core/Vector2.cpp
src/main/cpp/Core/Input.h
src/main/cpp/Core/Vector2.h
src/main/cpp/Core/Input.cpp
src/main/cpp/Core/Matrix4.cpp
src/main/cpp/Core/lodepng.h
src/main/cpp/Core/GameTime.cpp
src/main/cpp/Core/Matrix4.h
src/main/cpp/Core/GameTime.h
src/main/cpp/Core/Scene.h
src/main/cpp/Rendering/Material.cpp
src/main/cpp/Rendering/Mesh.h
src/main/cpp/Rendering/Shader.cpp
src/main/cpp/Rendering/Shader.h
src/main/cpp/Rendering/FrameBuffer.cpp
src/main/cpp/Rendering/ShapeRenderer.h
src/main/cpp/Rendering/Texture.cpp
src/main/cpp/Rendering/ShapeRenderer.cpp
src/main/cpp/Rendering/Mesh.cpp
src/main/cpp/Rendering/FrameBuffer.h
src/main/cpp/Rendering/RenderingEngine.h
src/main/cpp/Rendering/PostProcessEffects
src/main/cpp/Rendering/PostProcessEffects/VignettePass.h
src/main/cpp/Rendering/PostProcessEffects/GrayscalePass.cpp
src/main/cpp/Rendering/PostProcessEffects/GrayscalePass.h
src/main/cpp/Rendering/PostProcessEffects/ClassicTheme.cpp
src/main/cpp/Rendering/PostProcessEffects/VignettePass.cpp
src/main/cpp/Rendering/PostProcessEffects/ClassicTheme.h
src/main/cpp/Rendering/RenderPass.h
src/main/cpp/Rendering/Material.h
src/main/cpp/Rendering/Texture.h
src/main/cpp/Rendering/RenderPass.cpp
src/main/cpp/Rendering/RenderingEngine.cpp
src/main/cpp/Components/Camera.cpp
src/main/cpp/Components/Sprite.h
src/main/cpp/Components/ParticleSystem.h
src/main/cpp/Components/GameObject.h
src/main/cpp/Components/GameObjectGroup.cpp
src/main/cpp/Components/Camera.h
src/main/cpp/Components/Sprite.cpp
src/main/cpp/Components/ParticleSystem.cpp
src/main/cpp/Components/GameObjectGroup.h
src/main/cpp/Components/GameObject.cpp
src/main/cpp/Physics/Collider.h
src/main/cpp/Physics/PhysicsWorld.h
src/main/cpp/Physics/Collider.cpp
src/main/cpp/Physics/PhysicsWorld.cpp
src/main/cpp/FlappyBird.cpp

             )

# Searches for a specified prebuilt library and stores the path as a
# variable. Because CMake includes system libraries in the search path by
# default, you only need to specify the name of the public NDK library
# you want to add. CMake verifies that the library exists before
# completing its build.

find_library( # Sets the name of the path variable.
              log-lib

              # Specifies the name of the NDK library that
              # you want CMake to locate.
              log )

# Specifies libraries CMake should link to your target library. You
# can link multiple libraries, such as libraries you define in this
# build script, prebuilt third-party libraries, or system libraries.

target_link_libraries( # Specifies the target library.
                       FlappyBird android EGL GLESv3 OpenSLES

                       # Links the target library to the log library
                       # included in the NDK.
                       ${log-lib} )
