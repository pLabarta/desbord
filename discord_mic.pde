import processing.sound.*;
Amplitude amp;
AudioIn mic;

DisbordUser user;



void setup() {
 size(600,600);
 background(22);
 Sound.inputDevice(16);
 Sound.list();
 mic = new AudioIn(this, 0);
 amp = new Amplitude(this);
 user = new DisbordUser(mic, amp);
}

void draw() {
  user.update();
  user.render();
}
