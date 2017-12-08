package com.amu.flappybird;

import android.app.Activity;
import android.opengl.GLSurfaceView;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.Window;
import android.view.WindowManager;

public class GameActivity extends Activity implements OnTouchListener {

  NativeRenderer renderer;
  GLSurfaceView glSurface;

  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);

    // hide title bar
    requestWindowFeature(Window.FEATURE_NO_TITLE);
    getWindow().setFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN,
        WindowManager.LayoutParams.FLAG_FULLSCREEN);

    // create instance of native renderer
    renderer = new NativeRenderer(getResources());

    // create new opengl surface
    glSurface = new GLSurfaceView(this);

    // window format
    if (getWindowManager().getDefaultDisplay().getPixelFormat() == 1) {
      glSurface.setEGLConfigChooser(8, 8, 8, 0, 24, 8);
    } else if (getWindowManager().getDefaultDisplay().getPixelFormat() == 4) {
      glSurface.setEGLConfigChooser(5, 6, 5, 0, 24, 8);
    }

    // opengl context version
    glSurface.setEGLContextClientVersion(2);
    // preserve egl context on pausing
    glSurface.setPreserveEGLContextOnPause(true);
    // set renderer
    glSurface.setRenderer(renderer);
    // add touch listener
    glSurface.setOnTouchListener(this);

    // add view to layout
    setContentView(glSurface);
  }

  @Override
  public boolean onTouch(View v, MotionEvent event) {
    final int action = (Build.VERSION.SDK_INT >= Build.VERSION_CODES.FROYO)
        ? event.getActionMasked()
        : event.getAction();
    int N = event.getHistorySize();
    int P = event.getPointerCount();
    long time = event.getEventTime();

    if (action == MotionEvent.ACTION_UP || action == MotionEvent.ACTION_POINTER_UP) {
      Log.i("", "Updating pressure with -1");
      renderer.onTouch((int) event.getX(), (int) event.getY(), -1);
    } else if (action == MotionEvent.ACTION_DOWN || action == MotionEvent.ACTION_POINTER_DOWN || action == MotionEvent.ACTION_MOVE) {
      int j = (Build.VERSION.SDK_INT >= Build.VERSION_CODES.FROYO)
          ? event.getActionIndex()
          : 0;
      float p = event.getPressure(j);
      Log.i("", "Updating pressure with " + p);
      renderer.onTouch((int) event.getX(), (int) event.getY(), (int)(10000 * p));

    }
    return true;
  }

  protected void onDestroy() {
    // destroy native objects
    renderer.OnQuit();

    super.onDestroy();

    // exit from the application (clean up)
    System.exit(0);
  }

  protected void onPause() {
    super.onPause();

    // pause native game
    renderer.pause();

    // pause glSurface
    glSurface.onPause();
  }

  protected void onResume() {
    super.onResume();

    // resume native game
    renderer.resume();

    // resume glSurface
    glSurface.onResume();
  }
}
