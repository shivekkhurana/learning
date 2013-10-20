/* 
<APPLET CODE=hanoi.class WIDTH=400 HEIGHT=400>
</APPLET>
*/

import java.applet.*;
import java.awt.*;
import java.awt.event.*;


public class hanoi extends Applet {

  private TextArea textA;  // text output display
  private Checkbox peg_a_src;
  private Checkbox peg_b_src;
  private Checkbox peg_c_src;
  private Checkbox peg_a_dest;
  private Checkbox peg_b_dest;
  private Checkbox peg_c_dest;
  private Disk[] diska;  // disk characteristics object array
  private Font font;
  private static final int MAX_DISKS = 10;  // maximum # disks permitted
  private int numDisks;
  private static final int INIT_NUM_DISKS = 2;  // initial number of disks
  private TextField textNDisks;
  private static final int WIDTH_FACTOR = 8;  // how wide disks show

  // Disks indicate what peg and postition, mostly independent of graphics
  // settings which are in paint().  Note that pegWidth is a graphical
  // width in pixels, however.

  class Disk {
    private int pegNum;  // 1, 2, or 3 for A, B, or C
    private int pegStep;  // which position:  1 at base, 2 next up, etc.
    private int pegWidth;  // graphical width set by constructor

    Disk(int num, int step) {
      pegNum = num;
      pegStep = step;
      pegWidth = 0;
    }
    void setPegNum(int num) {
      pegNum = num;
    }
    void setPegStep(int step) {
      pegStep = step;
    }
    void setPegWidth(int width) {
      pegWidth = width;
    }
    int getPegNum() {
      return pegNum;
    } 
    int getPegStep() {
      return pegStep;
    }
    int getPegWidth() {
      return pegWidth;
    }
  }

  // Create GUI, define button press event methods, initialize

  public void init() {

    setLayout(new BorderLayout());

    setBackground(Color.white);

    font = new Font("Helvetica", Font.BOLD, 24);

    Panel p1 = new Panel();
    p1.setLayout(new GridLayout(1, 3));

    p1.setBackground(Color.cyan);
    add("South", p1);

    // Create A-B-C checkboxes in panels and labels
    CheckboxGroup src_group = new CheckboxGroup();
    peg_a_src = new Checkbox("A", false, src_group);
    peg_b_src = new Checkbox("B", false, src_group);
    peg_c_src = new Checkbox("C", false, src_group);
    Panel pSrc = new Panel();
    pSrc.setLayout(new GridLayout(3, 1));
    pSrc.add(peg_a_src);
    pSrc.add(peg_b_src);
    pSrc.add(peg_c_src);

    CheckboxGroup dest_group = new CheckboxGroup();
    peg_a_dest = new Checkbox("A", false, dest_group);
    peg_b_dest = new Checkbox("B", false, dest_group);
    peg_c_dest = new Checkbox("C", false, dest_group);
    Panel pDest = new Panel();
    pDest.setLayout(new GridLayout(3, 1));
    pDest.add(peg_a_dest);
    pDest.add(peg_b_dest);
    pDest.add(peg_c_dest);

    Panel pChecks = new Panel();
    pChecks.setLayout(new GridLayout(1, 2));
    Label srcLabel = new Label("Source:");
    Label destLabel = new Label("Dest:");
    pChecks.add(pSrc);
    pChecks.add(pDest);

    Panel pCheckL = new Panel();
    pCheckL.setLayout(new FlowLayout());
    pCheckL.add(srcLabel);
    pCheckL.add(destLabel);
    Panel pCheckArea = new Panel();
    pCheckArea.setLayout(new FlowLayout());
    pCheckArea.add(pCheckL);
    pCheckArea.add(pChecks);

    // Move button and button press action
    Button bMove = new Button("MOVE");
    bMove.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent e) {

        // Insert disk movement message "backwards", including disks that
        // are involved in the move
        String message = " ";
        textA.insert("\n", 0);
        int i1 = 0;
        int i2 = 0;
        if (peg_a_src.getState() == true) {
          message += "A->";
          //textA.insert("A->", 0);
          i1 = 1;
        }
        if (peg_b_src.getState() == true) {
          message += "B->";
          //textA.insert("B->", 0);
          i1 = 2;
        }
        if (peg_c_src.getState() == true) {
          message += "C->";
          textA.insert("C->", 0);
          i1 = 3;
        }
        if (peg_a_dest.getState() == true) {
          message += "A";
          //textA.insert("A", 0);
          i2 = 1;
        }
        if (peg_b_dest.getState() == true) {
          message += "B";
          //textA.insert("B", 0);
          i2 = 2;
        }
        if (peg_c_dest.getState() == true) {
          message += "C";
          //textA.insert("C", 0);
          i2 = 3;
        }


        // Actual move occurs in here, and a message string such as "Disk
        // moved" or "Failed" returned to display to the user.
        textA.setText(towerMove(i1, i2) + message);

        repaint();
      }
    });

    // Reset button just places all pegs on first tower upon
    // button action
    Button bReset = new Button("RESET");
    bReset.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent e) {
        int i1;
        for (i1 = 0; i1 < numDisks; i1++) {
          diska[i1].setPegNum(1);
          diska[i1].setPegStep(i1+1);
        }

        repaint();

        // Get the number of disks from the # disks text input.  Reset peg
        // widths which may grow or shrink; make sure entry is not too large
        // or small.  Non-numeric entry resets to initial # of disks.
        try {
          numDisks = Integer.parseInt(textNDisks.getText());
        }
        catch (IllegalArgumentException ex) {
          numDisks = INIT_NUM_DISKS;
        }
        if (numDisks > MAX_DISKS) {
          numDisks = MAX_DISKS;
        }
        if (numDisks < 1) {
          numDisks = 1;
        }
        textNDisks.setText("" + numDisks);
        SetDiskWidths();
        textA.insert("All disks RESET" + "\n", 0);
      }
    });

    // Create then initially set the number of disks
    Label textL = new Label("# disks:");
    textNDisks = new TextField("0");
    textNDisks.setText("" + INIT_NUM_DISKS);
    numDisks = Integer.parseInt(textNDisks.getText());

    // Create buttons panel
    Panel pOpts = new Panel();
    pOpts.setLayout(new FlowLayout());
    pOpts.add(bMove);
    pOpts.add(bReset);
    pOpts.add(textL);
    pOpts.add(textNDisks);

    textA = new TextArea("", 10, 40);

    // Add panels to overall control panel
    p1.add(pCheckArea);
    p1.add(pOpts);
    p1.add(textA);

    // Initial disk object creation:  create all of them now even if
    // some aren't used for the initial number of disks
    diska = new Disk[MAX_DISKS];
    int i3;
    for (i3 = 0; i3 < MAX_DISKS; i3++) {
      diska[i3] = new Disk(1, i3 + 1);
    }
    SetDiskWidths();
  }

  // Upon redraw event this redraws based on current disk information
  public void paint(Graphics g) {

    // Draw titles in drawing area
    g.setColor(Color.blue);
    g.setFont(font);
    g.drawString("Towers of Brahma", 105, 25);
    g.drawString("A", 95, 190);
    g.drawString("B", 195, 190);
    g.drawString("C", 295, 190);

    // Draw pegs with bases as simple black lines
    g.setColor(Color.black);
    g.fillRect(0, 200, 400, 4);
    g.fillRect(60, 160, 84, 4);
    g.fillRect(100, 40, 4, 124);
    g.fillRect(160, 160, 84, 4);
    g.fillRect(200, 40, 4, 124);
    g.fillRect(260, 160, 84, 4);
    g.fillRect(300, 40, 4, 124);

    // Draw disks based on which peg they are on and their
    // position on the pegs
    g.setColor(Color.blue);
    int i1;
    for (i1 = 0; i1 < numDisks; i1++) {
      g.fillRect(diska[i1].getPegNum() * 100 - diska[i1].getPegWidth() / 2 +2,
       160 - diska[i1].getPegStep() * 10, diska[i1].getPegWidth(), 9);
    }
  }

  // Set disk widths for when the number of disks is set or reset
  public void SetDiskWidths() {
    int i1;
    for (i1 = 0; i1 < numDisks; i1++) {
      diska[i1].setPegWidth((numDisks - i1) * WIDTH_FACTOR);
    }
  }
  
  // Move from one peg to another:  return status string
  public String towerMove(int pegSrc, int pegDest) {
    if (pegSrc == 0 || pegDest == 0)
      return "No source/dest";
    if (pegSrc == pegDest)
      return "Same pegs";
    //get source peg disk number
    int i1;
    for (i1 = numDisks - 1; i1 >= 1 - 1; i1--) {
      if (diska[i1].getPegNum() == pegSrc)
        break;
    }
    if (i1 < 0)
      return "No source disk";

    int i2;
    for (i2 = numDisks - 1; i2 >= 1 - 1; i2--) {
      if (diska[i2].getPegNum() == pegDest)
        break;
    }

    // See if a larger base or no disk is on the destination
    // peg
    int pegWidth1;
    int pegWidth2;
    pegWidth1 = diska[i1].getPegWidth();
    if (i2 >= 0) {
      pegWidth2 = diska[i2].getPegWidth();
      if (pegWidth1 >= pegWidth2) {
        return "Disk too large";
      }
    }

    // The disk can be moved to the new peg
    if (i2 >= 0)
      diska[i1].setPegStep(diska[i2].getPegStep() + 1);
    else
      diska[i1].setPegStep(1);
    diska[i1].setPegNum(pegDest);
    //check for win
    int flag = 0;
    for (i2 = numDisks - 1; i2 >= 0; i2--) {
      if(diska[i2].getPegNum() != 3){
        flag = 1;
        break;
      } 
    }
    if(flag == 0) return "You Won !";
    else return "Moved disk";
  }
}