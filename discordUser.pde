import processing.sound.*;


class DisbordUser {
  float voiceThresh = 0.05;
  boolean talking;
  float voice;
  float voiceSize;
  AudioIn mic;
  Amplitude amp;
  
  DisbordUser(AudioIn audioIn, Amplitude amplitude) {
    mic = audioIn;
    amp = amplitude;
    
    mic.start();
    amp.input(mic);
  }
  
  void update() {
    float voiceAmp = amp.analyze();
    println(voiceAmp);
    voice += (voiceAmp - voice) * 0.02;
    if (voice > voiceThresh) {
      talking = true;
      voiceSize = 300;
    } else {
      talking = false;
    }
    println(talking);
  }
  
  void render() {
    background(22);
    noStroke();
    fill(50,255,100);
    circle(width/2,height/2,voiceSize);
    fill(255,255,0);
    circle(width/2,height/2, 200);
     voiceSize -= 10;
    if (voiceSize < 0) {
      voiceSize = 0;
    }
  }
}

class RandomDiscordUser {
  boolean talking;
  float inputAmp;
  SoundFile file;
  
  
  
  //String[] files = new String["audio1.mp3","audio2.mp3"]
  
  RandomDiscordUser() {
    // Puedo meter la carpeta entera
    File dir = new File(dataPath("voces"));
    File[] files = dir.listFiles();
    for (int i = 0; i < files.length; i++)
    {
      String path = files[i].getName();
      println(path);
    }  
    
    //println(filenames.length + " jpg files in specified directory");
    //for (int i = 0; i < filenames.length; i++) {
    //  println(filenames[i]);
    //}
  }
}
