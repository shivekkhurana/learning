//imports
import java.awt.*;
import java.applet.*;

public class SimpleApplet extends Applet{
	final String msg = "Hello World !";
	public void init(){
	}

	public void start(){

	}

	public void paint(Graphics g){
		g.drawString(msg,20, 20);
	}

	public void destroy(){

	}
}