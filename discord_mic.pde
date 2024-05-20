import processing.sound.*;
Amplitude amp;
AudioIn in;

float voiceThresh = 0.3;
int voiceSize = 0;
boolean hablando = false;

// Amplitude average from mic
float[] ampSamples;

float talking;

RandomDiscordUser user;

void setup () {
 size(600,600);
 background(22);
 
 // init ampSamples
 
 // Amplitude
 // Create an Input stream which is routed into the Amplitude analyzer
  amp = new Amplitude(this);
  in = new AudioIn(this, 0);
  in.start();
  amp.input(in);
  
  user = new RandomDiscordUser();
}

void draw() {
  // amp analyze
  
  
  
  //println(amp.analyze());
  float voiceAmp = amp.analyze();
  
  talking += (voiceAmp - talking) * 0.01;
  
  //sumatotal= sumatotal * f - nuevo * (1-f); 
  
  
  
  
  if (talking > voiceThresh) {
    hablando = true;
    voiceSize = 300;
  }
  
  
  background(22);
  noStroke();
  fill(50,255,100);
  circle(width/2,height/2,voiceSize);
  fill(255,255,0);
  circle(width/2,height/2, 200);
  
  
  
  // update soundViz
  voiceSize -= 10;
  if (voiceSize < 0) {
    voiceSize = 0;
  }
}
