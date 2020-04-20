class Knap4 {

  PVector pos = new PVector(0, 0);
  float width = 0;
  float height = 0;
  color k = #FADFC2; 
  String tekst; 
  Boolean presset = false; 
  Boolean trykket = false; 

  //Konstruktør til at lave vores knap
  Knap4(int x, int y, int w, int h, String t, color kk) {

    pos.x = x;
    pos.y = y;
    width = w; 
    height = h; 
    color k = kk; 
    tekst  = t;
  }
  
  //skal placeres i void draw() for at kunne virke, ellers kan knappen ikke trykkes på
  void update4() {

    if (mousePressed == true && mouseButton == LEFT && presset == false) 
    {
      presset = true;
      if (mouseX>= pos.x && mouseX <= pos.x+width && mouseY>= pos.y && mouseY <= pos.y+height) 
      {
        trykket = true;
      }
    }else{
      trykket = false;
      presset = false;
    }
  }
  
  //skal placeres i void draw() for at kunne gengive knap til skærm
  void tegnKnap4(){
    
    fill(k);
    rect(pos.x,pos.y,width,height);
    
    fill(0);
    textAlign(CENTER, CENTER);
    text(tekst, pos.x+(width/2), pos.y+(height/2));
  }
  boolean registrerKlik(){
   return trykket; 
  }
}
