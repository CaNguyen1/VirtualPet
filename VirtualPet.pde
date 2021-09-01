import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

public void setup() {
  size(400, 400);
  arduino = new Arduino(this, Arduino.list()[0], 57600); //change the [0] to a [1] or [2] etc. if your program doesn't work
}

public void draw() {
   //background(#8C8E8D);
  int y = arduino.analogRead(5);
  int j = arduino.analogRead(5);
  PImage img;
  img = loadImage("stageCat.jpg");
  image(img, 0-105, 0);


  if  (y < 88)
    y = 88;
  if  (y > 93)
    y = 93;
   
  if (j < 0)
  j = 0;
  if (j > 73)
  j = 73;
  System.out.println(y);
  //head shape and eye shape
    noStroke();
    fill(#9D9D92);
    //fill(#EA8A40);
    ellipse(200,200,130,100);
    triangle(120,140,135,200,165,155);
    triangle(280,140,265,200,235,155);
    fill(#D3CE37);
    ellipse(170,185,40,20);
    ellipse(230,185,40,20);

//whiskers and nose
    fill(#EAA6C2);
    triangle(200,200,185,210,215,210);
    stroke(2);
    line(155,230,180,220);
    line(155,200,180,220);
    line(155,215,180,220);
    line(245,230,220,220);
    line(245,200,220,220);
    line(245,215,220,220);
   fill(#030303);
  ellipse(170, 2*y, 5, 5);
  ellipse(230, 2*y, 5, 5);
  fill(#050505);
  rect(176, 2*j, 50, 8);
  fill(#FFFFFF);
  rect(181, 2*j-34, 40, 35);
  fill(#050505);
  rect(181, 2*j-34, 40, 25);
  rect(181, 2*j-34, 40, 15);
}
