int xOG = 0;
int yOG = 500;
int lenOG = 500;
int col = 0;

public void setup()
{
  size (500, 500);
}
public void draw()
{
  background (0);
  sierpinski (xOG, yOG, lenOG);
}
public void mouseDragged()//optional
{
  lenOG = mouseX;
}
public void keyPressed() {
  if (key == 'c') {
    if (col <= 5) {
      col++;
    } else {
      col = 0;
    }
  }
}
public void sierpinski(int x, int y, int len)
{
  switch (col) {
  case 0:
    fill(x, len, y);
    break;

  case 1:
    fill (len, x, y);
    break;

  case 2:
    fill (x, y, len);
    break;

  case 3:
    fill (y, len, x);
    break;

  case 4:
    fill (len, y, x);
    break;

  case 5:
    fill (y, x, len);
    break;

  case 6:
    fill (255);
    break;
  }

  if (len <= 10) {
    triangle (x, y, x+len/2, y-len, x+len, y);
  } else {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
