# Full functionality FFMPEG for Android
 [ ![Download](https://api.bintray.com/packages/madhavanmalolan/android/ffmpegandroidlibrary/images/download.svg) ](https://bintray.com/madhavanmalolan/android/ffmpegandroidlibrary/_latestVersion) 

## Gradle Build

The library is available on `jcenter()`

App level build.gradle

```
    compile 'com.madhavanmalolan.android:ffmpegandroidlibrary:0.0.4'

```
## Usage

Use the Controller singleton class's `run` method to execute your commands.
`run` takes as argument an array of `String`s which are the arguments you would send to the ffmpeg command on cli.

For example,
If the command you want to run is (to mute a video) :
```
ffmpeg -y -i input_file.mp4 -vcodec copy -an output_file.mp4
```

The equivalent Java code for the same would be


```
    Controller.getInstance().run(new String{
        "-y",
	"-i",
	"input_file.mp4",
	"-vcodec",
	"copy",
	"-an",
	"output_file.mp4"
    });
```

## Contribute
Feel free to modify this (overly simple) library to suit your needs. PRs accepted!


## License
This project is bound by the MIT license. Feel free to use it and not tell others about it! Please be nice, and do tell others though :)
