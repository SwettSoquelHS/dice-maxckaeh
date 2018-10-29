Die dieRoll1;
Die dieRoll2;
Die dieRoll3;
Die dieRoll4;
Die dieRoll5;
Die dieRoll6;
Die dieRoll7;
Die dieRoll8;
Die dieRoll9;
int total;
int grandTotal = 0;

void setup(){
  size(350, 350);
  //no loop means that draw is only called once
  //OR if you ever call redraw()
  noLoop();
  
  dieRoll1 = new Die(0,0);
  dieRoll2 = new Die(60,0);
  dieRoll3 = new Die(120,0);
  dieRoll4 = new Die(0,60);
  dieRoll5 = new Die(60,60);
  dieRoll6 = new Die(120,60);
  dieRoll7 = new Die(0,120);
  dieRoll8 = new Die(60,120);
  dieRoll9 = new Die(120,120);
  
  
}

void draw(){
  background(150);
  dieRoll1.show();
  dieRoll2.show();
  dieRoll3.show();
  dieRoll4.show();
  dieRoll5.show();
  dieRoll6.show();
  dieRoll7.show();
  dieRoll8.show();
  dieRoll9.show();
  
  
  textSize(16);
  fill(0);
  text("Current Total: " + total, 10, 340);
  grandTotal = grandTotal + total;
  text("Grand Total: " + grandTotal, 190, 340);
  //your code here
}

void mousePressed(){
  dieRoll1.roll();
  dieRoll2.roll();
  dieRoll3.roll();
  dieRoll4.roll();
  dieRoll5.roll();
  dieRoll6.roll();
  dieRoll7.roll();
  dieRoll8.roll();
  dieRoll9.roll();
  
  //to redraw your processing script
  redraw();
}


//Dice: Models a single 6 sided dice cube
//Each instance should randomly assign itself a value from 1 to 6
class Die {
	//variable declarations for your Die instances here
	int x_pos,y_pos;

  int randomRoll;
  
	//constructor
	Die(int x, int y){
    x_pos = x;
    y_pos = y;
    randomRoll = int(random(1,6));
    
		//variable initializations here
	}
	
	//Simulate a roll of a die
	void roll(){
    randomRoll = int(random(1,6));
    
    total = 0;
		//your code here, 
		//should randomly assign a value from 1 to 6
	}
	
	/*
	  Use the randomly assigned roll value to draw the face of a die
	*/
	void show(){
    pushMatrix();
    translate(x_pos,y_pos);
		//your code here
    fill(255);
    rect(x_pos+20, y_pos+20, 55, 55, 7);
    if(randomRoll == 1){
      fill(0);
      ellipse(x_pos+48, y_pos+48, 10, 10);
      total++;
    } else if(randomRoll == 2){
      fill(0);
      ellipse(x_pos+33, y_pos+63, 10, 10);
      ellipse(x_pos+63, y_pos+33, 10, 10);
      total+=2;
    } else if(randomRoll == 3){
      fill(0);
      ellipse(x_pos+48, y_pos+48, 10, 10);
      ellipse(x_pos+33, y_pos+63, 10, 10);
      ellipse(x_pos+63, y_pos+33, 10, 10);
      total+=3;
    } else if(randomRoll == 4){
      fill(0);
      ellipse(x_pos+33, y_pos+33, 10, 10);
      ellipse(x_pos+63, y_pos+63, 10, 10);
      ellipse(x_pos+33, y_pos+63, 10, 10);
      ellipse(x_pos+63, y_pos+33, 10, 10);
      total+=4;
    } else if(randomRoll == 5){
      fill(0);
      ellipse(x_pos+48, y_pos+48, 10, 10);
      ellipse(x_pos+33, y_pos+33, 10, 10);
      ellipse(x_pos+63, y_pos+63, 10, 10);
      ellipse(x_pos+33, y_pos+63, 10, 10);
      ellipse(x_pos+63, y_pos+33, 10, 10);
      total+=5;
    } else if(randomRoll == 6){
      fill(0);
      ellipse(x_pos+33, y_pos+48, 10, 10);
      ellipse(x_pos+63, y_pos+48, 10, 10);
      ellipse(x_pos+33, y_pos+33, 10, 10);
      ellipse(x_pos+63, y_pos+63, 10, 10);
      ellipse(x_pos+33, y_pos+63, 10, 10);
      ellipse(x_pos+63, y_pos+33, 10, 10);
      total+=6;
    }
    popMatrix();
  }
}
