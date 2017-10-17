package com.madhavanmalolan.ffmpegandroidlibrary;

/**
 * Created by madhavan on 10/17/17.
 */

public class Controller {

    private static Controller instance;
    public static Controller getInstance(){
        if(instance == null){
            System.loadLibrary("ffmpeg");
            instance = new Controller();
        }
        return instance;
    }

    private Controller(){
    }

    public native void run(String[] argv);
}
