void change(int i,int j)
{
  if(i == 0 || j == 0 || j == height-1 || i == width-1)
  {
    c = color(0); 
  }
  else
  {
    c = (pic.get(i,j) + pic.get(i-1,j) + pic.get(i,j-1) + pic.get(i+1,j) + pic.get(i,j+1));  
  }
}