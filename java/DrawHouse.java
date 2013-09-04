/*  
Applet will paint special shapes and use colors and fonts 
Only new methods are explained 
*/ 
import java.awt.*; 
import java.applet.*; 
/*
<applet code="DrawHouse.class" width=400 height=400>
</applet>
*/
public class DrawHouse extends Applet
{ 

 // Specify variables that will be needed everywhere, anytime here 
 // The font variable 
    Font bigFont; 
    int delay;
    Thread animator;
    int a,b,c,d;

 // The colors you will use 
     Color redColor; 
     Color weirdColor; 
     Color bgColor; 

 // now lets draw things on screen 
     public void paint(Graphics g)  
     { 
  // tell g to use your font 
      g.setFont(bigFont); 
      g.drawString("Shapes and Colors",80,20); 

  // Now we tell g to change the color 
      g.setColor(Color.red);

  // This will draw a rectangle (xco,yco,xwidth,height); 
      g.drawRect(100,100,100,100); 

  // This will fill a rectangle 
      g.fillRect(120,140,60,60); 

  // change colors again 

      g.setColor(Color.red);

  // a circle (int x, int y, int width, int height,int startAngle, int arcAngle); 
  // ovals are also possible this way. 

      g.fillArc(120,120,60,60,0,360); 

      g.setColor(Color.red); 

  // Draw a line (int x1, int y1, int x2, int y2) 

      g.drawLine(100,100,150,50); 
      g.drawLine(200,100,150,50); 

  // reset the color to the standard color for the next time the applets paints 
  // an applet is repainted when a part was'nt visible anymore 
  // happens most often because of browser minimizing or scrolling.  

      g.fillArc(220,220,160,160,100,460);
      g.setColor(Color.black); 
      g.fillArc(255,255,30,30,0,360);
      g.fillArc(315,255,30,30,0,360);

      g.setColor(Color.white); 
      g.fillArc(260,260,10,10,0,360);
      g.fillArc(320,260,10,10,0,360);

      g.setColor(Color.black); 
      g.fillArc(270,290,60,60,0,-180);

      g.drawString("Yo yo !",100,290); 
     } 

} 

