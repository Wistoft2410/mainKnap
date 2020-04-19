/*
knap = class 
 Anders = navn
 */
  
import processing.serial.*;

color g = color(20, 75, 200);

Knap minKnap;

void setup() {
  size(600, 600);
  minKnap = new Knap(100, 100, 100, 50, "Tryk mig!", 0, 200, 200);
}

void draw() {
  background(200);

  if(minKnap.registrerKlik()){
    background(g);
  }
  
  delay(10);
  minKnap.update();
  minKnap.tegnKnap();
}
