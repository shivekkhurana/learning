import java.awt.*;
import java.applet.*;
import java.awt.event.*; 

/*
	<applet code="MouseEventExamples.class" width=500 height=400></applet>
*/

public class MouseEventExamples extends Applet implements MouseListener{
	/*
		MouseLisetner
			*mouseClicked
			*mouseReleased
			*mouseEntered
			*mouseExited
			*mousePressed
	*/
	int x,y;
	boolean clicked_inside = false;
	public void init(){

	}
	public void paint(Graphics g){
		g.setColor(Color.red);
		g.fillRect(10,10,100,140);
		if(clicked_inside){
			g.drawString("Clicked inside !", x, y);
		}
	}
	public void mouseClicked (MouseEvent me) {
		x = me.getX();
		y = me.getY();

		if(x>= 10 && y>=10 && x<= 110 && y<=150){
			//clicked inside rectangle
			clicked_inside = true;
		}
		repaint();
	} 
	public void mouseEntered (MouseEvent me) {} 
	public void mousePressed (MouseEvent me) {} 
	public void mouseReleased (MouseEvent me) {}  
	public void mouseExited (MouseEvent me) {}  

}