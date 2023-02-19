float startX, startY, endX, endY;
class Tendril
{
  public final static int SEG_LENGTH = 4; //length of each segment in the tendril
  private int myNumSegments, myX, myY;
  private double myAngle;
  
  public Tendril(int len, double theta, int x, int y)
  {
    myNumSegments = len;
    myAngle = theta;
    myX = x;
    myY = y;
  }
  public void show()
  {
    startX = myX;
    startY = myY;
    if (myNumSegments > 5)
      stroke(255);
    else {
      stroke(255, 0, 0);
    }
    for (int i = 0; i < myNumSegments; i++) {
      myAngle += Math.random() * .4 - .2;
      endX = startX + cos((float)myAngle) * SEG_LENGTH;
      endY = startY + sin((float)myAngle) * SEG_LENGTH;
      line(startX, startY, startX = endX, startY = endY);
    }
    if (myNumSegments >= 3) {
      Cluster cluster = new Cluster(myNumSegments / 7, (int)endX, (int)endY);
    }
  }
}
