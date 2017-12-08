LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := app
LOCAL_LDFLAGS := -Wl,--build-id
LOCAL_SRC_FILES := \
	/backup/downloads/FlappyBird-NDK/app/src/main/jni/FlappyBirdGame/Level.cpp \
	/backup/downloads/FlappyBird-NDK/app/src/main/jni/FlappyBirdGame/PipePair.cpp \
	/backup/downloads/FlappyBird-NDK/app/src/main/jni/FlappyBirdGame/Bird.cpp \
	/backup/downloads/FlappyBird-NDK/app/src/main/jni/FlappyBirdGame/NumberRenderer.cpp \
	/backup/downloads/FlappyBird-NDK/app/src/main/jni/FlappyBirdGame/MainMenu.cpp \
	/backup/downloads/FlappyBird-NDK/app/src/main/jni/Core/Game.cpp \
	/backup/downloads/FlappyBird-NDK/app/src/main/jni/Core/FileLoader.cpp \
	/backup/downloads/FlappyBird-NDK/app/src/main/jni/Core/AudioManager.cpp \
	/backup/downloads/FlappyBird-NDK/app/src/main/jni/Core/Transform.cpp \
	/backup/downloads/FlappyBird-NDK/app/src/main/jni/Core/lodepng.cpp \
	/backup/downloads/FlappyBird-NDK/app/src/main/jni/Core/MeshManager.cpp \
	/backup/downloads/FlappyBird-NDK/app/src/main/jni/Core/ShaderManager.cpp \
	/backup/downloads/FlappyBird-NDK/app/src/main/jni/Core/TextureManager.cpp \
	/backup/downloads/FlappyBird-NDK/app/src/main/jni/Core/Vector2.cpp \
	/backup/downloads/FlappyBird-NDK/app/src/main/jni/Core/Input.cpp \
	/backup/downloads/FlappyBird-NDK/app/src/main/jni/Core/Matrix4.cpp \
	/backup/downloads/FlappyBird-NDK/app/src/main/jni/Core/GameTime.cpp \
	/backup/downloads/FlappyBird-NDK/app/src/main/jni/Rendering/Material.cpp \
	/backup/downloads/FlappyBird-NDK/app/src/main/jni/Rendering/Shader.cpp \
	/backup/downloads/FlappyBird-NDK/app/src/main/jni/Rendering/FrameBuffer.cpp \
	/backup/downloads/FlappyBird-NDK/app/src/main/jni/Rendering/Texture.cpp \
	/backup/downloads/FlappyBird-NDK/app/src/main/jni/Rendering/ShapeRenderer.cpp \
	/backup/downloads/FlappyBird-NDK/app/src/main/jni/Rendering/Mesh.cpp \
	/backup/downloads/FlappyBird-NDK/app/src/main/jni/Rendering/PostProcessEffects/GrayscalePass.cpp \
	/backup/downloads/FlappyBird-NDK/app/src/main/jni/Rendering/PostProcessEffects/ClassicTheme.cpp \
	/backup/downloads/FlappyBird-NDK/app/src/main/jni/Rendering/PostProcessEffects/VignettePass.cpp \
	/backup/downloads/FlappyBird-NDK/app/src/main/jni/Rendering/RenderPass.cpp \
	/backup/downloads/FlappyBird-NDK/app/src/main/jni/Rendering/RenderingEngine.cpp \
	/backup/downloads/FlappyBird-NDK/app/src/main/jni/Components/Camera.cpp \
	/backup/downloads/FlappyBird-NDK/app/src/main/jni/Components/GameObjectGroup.cpp \
	/backup/downloads/FlappyBird-NDK/app/src/main/jni/Components/Sprite.cpp \
	/backup/downloads/FlappyBird-NDK/app/src/main/jni/Components/ParticleSystem.cpp \
	/backup/downloads/FlappyBird-NDK/app/src/main/jni/Components/GameObject.cpp \
	/backup/downloads/FlappyBird-NDK/app/src/main/jni/Physics/Collider.cpp \
	/backup/downloads/FlappyBird-NDK/app/src/main/jni/Physics/PhysicsWorld.cpp \
	/backup/downloads/FlappyBird-NDK/app/src/main/jni/FlappyBird.cpp \
	/backup/downloads/FlappyBird-NDK/app/src/main/jni/Application.mk \
	/backup/downloads/FlappyBird-NDK/app/src/main/jni/Android.mk \

LOCAL_C_INCLUDES += /backup/downloads/FlappyBird-NDK/app/src/main/jni
LOCAL_C_INCLUDES += /backup/downloads/FlappyBird-NDK/app/src/debug/jni

include $(BUILD_SHARED_LIBRARY)
