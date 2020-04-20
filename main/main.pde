/*
knap = class 
 Anders = navn
 */

color b = #C5DBF0; 
color g = #FADFC2;

Knap1 minKnap;
Knap2 minKnap2;
Knap3 minKnap3;
Knap4 minKnap4;

Konto1 minKonto1;
Konto2 minKonto2;


void setup() {
  size(600, 600);

  minKnap = new Knap1(100, 100, 100, 25, "Indsæt 100 kr", g);
  minKnap2 = new Knap2(100, 133, 100, 25, "Fjern 100 kr", g);
  
  minKnap3 = new Knap3(300, 100, 100, 25, "Indsæt 100 kr", g);
  minKnap4 = new Knap4(300, 133, 100, 25, "Fjern 100 kr", g);
  
  minKonto1 = new Konto1(100, 233, 100, 25, "Konto 1", g);
  minKonto2 = new Konto2(300, 233, 100, 25, "Konto 2", g);
  


}

void draw() {
  background(b);

  if (minKnap.registrerKlik()) {
    background(0,250,0);
  }
  
  if (minKnap2.registrerKlik()){
    background(250,0,0);
  }
  
  if (minKnap3.registrerKlik()){
    background(0,250,0);
  }
  
  if (minKnap4.registrerKlik()){
    background(250,0,0);
  }
  

  minKnap.update();
  minKnap.tegnKnap();
  
  minKnap2.update2();
  minKnap2.tegnKnap2();
  
  minKnap3.update3();
  minKnap3.tegnKnap3();
  
  minKnap4.update4();
  minKnap4.tegnKnap4();
  
  minKonto1.konto1Update();
  minKonto1.tegnKonto1();
  
  minKonto2.konto2Update();
  minKonto2.tegnKonto2();
  
  
}
