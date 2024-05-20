import processing.sound.*;


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
