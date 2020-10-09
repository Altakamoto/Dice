void setup()
{
  size(400,450);
  noLoop();
}
void draw()
{
  background(201);
  int total = 0;
  int ones = 0;
  int twos = 0;
  int threes = 0;
  int fours = 0;
  int fives = 0;
  int sixes = 0;
  for(int x = 0; x < 400; x+= 50) {
    for(int y = 0; y < 400; y+= 50) {
      Die bob = new Die(x, y);
      bob.show();
      if(bob.one == true) {
        total++;
        ones++;
      }else if(bob.two == true) {
        total += 2;
        twos++;
      }else if(bob.three == true) {
        total += 3;
        threes++;
      }else if(bob.four == true) {
        total += 4;
        fours++;
      }else if(bob.five == true) {
        total += 5;
        fives++;
      }else {
        total += 6;
        sixes++;
      } 
    }
  }
   text("Ones: " + ones, 0, 412.5);
   text("Twos: " + twos, 0, 425);
   text("Threes: " + threes, 0, 437.5);
   text("Fours: " + fours, 75, 412.5);
   text("Fives: " + fives, 75, 425);
   text("Sixes: " + sixes, 75, 437.5);
   text("Total: " + total, 200, 425);
   text("Average: " + total/64, 200, 437.5);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY;
  boolean one, two, three, four, five, six;
  
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
    roll();
  }
  void roll()
  {
    int rolling = (int)(Math.random()*6+1);
    if(rolling == 1)
      one = true;
    else if(rolling == 2)
      two = true;
    else if(rolling == 3)
      three = true;
    else if(rolling == 4)
      four = true;
    else if(rolling == 5)
      five = true;
    else
      six = true;    
  }
  void show()
  {
    fill(255);
    square(myX, myY, 50);
    fill(0);
    if(one == true) {
      circle(myX + 25, myY + 25, 5);
    }else if(two == true) {
      circle(myX + 16.6, myY + 25, 5);
      circle(myX + 33.2, myY + 25, 5);
    }else if(three == true) {
      circle(myX + 25, myY + 16.6, 5);
      circle(myX + 16.6, myY + 33.2, 5);
      circle(myX + 33.2, myY + 33.2, 5);
    }else if(four == true) {
      circle(myX + 16.6, myY + 16.6, 5);
      circle(myX + 33.2, myY + 16.6, 5);
      circle(myX + 16.6, myY + 33.2, 5);
      circle(myX + 33.2, myY + 33.2, 5);
    }else if(five == true) {
      circle(myX + 25, myY + 25, 5);
      circle(myX + 16.6, myY + 16.6, 5);
      circle(myX + 33.2, myY + 16.6, 5);
      circle(myX + 16.6, myY + 33.2, 5);
      circle(myX + 33.2, myY + 33.2, 5);
    }else {
      circle(myX + 25, myY + 16.6, 5);
      circle(myX + 25, myY + 33.2, 5);
      circle(myX + 16.6, myY + 16.6, 5);
      circle(myX + 33.2, myY + 16.6, 5);
      circle(myX + 16.6, myY + 33.2, 5);
      circle(myX + 33.2, myY + 33.2, 5);
    }
  }
}
