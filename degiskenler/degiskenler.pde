
float x   = 200;
float y   = 200;
float hiz = 2;

void setup(){
  size(700,700);
  smooth();
}

void draw(){
  background(0);
  x = x + hiz; 
  ellipse(x,y,60,60); /*Tanımlanan değişkenlere göre konum değişikliği yapılır.
                        x e hiz eklendiği için konum sürekli değişir.*/
}