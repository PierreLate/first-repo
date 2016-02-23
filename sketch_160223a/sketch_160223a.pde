void settings() { size(400, 800, P2D);
}
void setup() {
      background(#86C7FF);
noLoop(); }
void draw() { 
  plant(15, 0.4, 0.8);
}
void leaf() {
      stroke(#3C8E3B);
      fill(0, 255, 0);
      beginShape();
        vertex(100.0, -70.0);
        bezierVertex(90.0, -60.0, 40.0, -100.0, 0.0, 0.0);
        bezierVertex(0.0, 0.0, 100.0, 40.0, 100.0, -70.0);
      endShape();
      
    }
void plant(int numLeaves, float minLeafScale, float maxLeafScale) {
  
  line(width/2, 0, width/2, height); // the plant's stem
  fill(#3C8E3B);
  int gap = height/numLeaves;
  float angle = 0;
  for (int i=0; i<numLeaves; i++) {
    int x = width/2;
    int y = gap*i + (int)random(gap);
    float scale = random(minLeafScale, maxLeafScale);

    pushMatrix();
    translate(x, y);
    rotate(angle);
    scale(scale);
    leaf();

    popMatrix();
    
    angle += PI; // alternate the side for each leaf
    
} }