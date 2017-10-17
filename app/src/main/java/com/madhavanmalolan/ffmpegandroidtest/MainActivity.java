package com.madhavanmalolan.ffmpegandroidtest;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;

import com.madhavanmalolan.ffmpegandroidlibrary.Controller;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        String filein = getExternalFilesDir(null).getAbsoluteFile()+"/in.mp4";
        String fileout = getExternalFilesDir(null).getAbsoluteFile()+"/out.mp4";
        setContentView(R.layout.activity_main);
        Controller.getInstance().run(new String[]{
                "-y",
                "-i",
                filein,
                "-vcodec",
                "copy",
                "-an",
                fileout
        });

    }
}
