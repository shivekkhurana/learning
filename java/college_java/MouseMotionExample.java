//mouse motion

import java.awt.*;
import java.applet.*;
import java.awt.event.*; 

/*
	<applet code="MouseMotionExample.class" width=500 height=400></applet>
*/

public class MouseMotionExample extends Applet implements MouseMotionListener{
	/*
	MouseMotionListner
		*mouseMoved();
		*mouseDragged();
	*/
	String msg;
	int x,y; // x and y coordinate

	public void init(){
		x = 0;
		y = 0;
		msg = "Here";
		addMouseMotionListener(this);
	}

	public void paint(Graphics g){
		g.drawString(msg, x, y);
	}

	public void mouseMoved(MouseEvent me){
		x = me.getX();
		y = me.getY();
		repaint();
	}

	public void mouseDragged(MouseEvent me){}
}