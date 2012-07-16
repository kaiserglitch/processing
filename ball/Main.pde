// Declaro la instancia
Atom [] atomCollection = new Atom [20];

void setup() {
  size(300, 300); 
  
// La inicializo
  for( int i=0; i<20; i++){
  atomCollection[i] = new Atom(random(0,width),random(0,200)); 
  }
}


void draw() {
  background(0);
  
// Llamo a su funcionalidad
  for( int i=0; i<20; i++){
  atomCollection[i].run();
  }
}
