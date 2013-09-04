//imports
import java.awt.*;
import java.applet.*;
/*
<applet code="AppletParam.class" width=400 height=400>
<param name="message" value="Howdy, there!">
</applet>
*/
public class AppletParam extends Applet{
	final String msg = "Hello World !";
	public void init(){
	}

	public void start(){

	}

	public void paint(Graphics g){
		String inputFromPage = this.getParameter("message");
  		if (inputFromPage == null) inputFromPage = msg;
  		g.drawString(inputFromPage, 50, 25);
	}

	public void destroy(){

	}
}