float color1 = random(0,255);
float color2 = random(0,255);
float color3 = random(0,255);

Button btn1; //btn2, btn3, btn4, btn5, btn6, btn7, btn8, btn9, btn10, btn11, btn12, btn13;

void setup(){
  size(400,400);
  background(255,255,255);
  btn1 = new Button(5,10,400,400,""); //
}

void draw(){
 btn1.drawButton(255,0,0,27,27); 
 btn1.isMouseInside();
 btn1.handleMouseClick();
}

class Button{
  int x,y,width,height;
  String label;


public Button() {
    this.x =  0;
    this.y =  0;
    this.width = 72;
    this.height = 35;
    this.label = "Click";
   //this.mousePressed();
} 

public Button(int x, int y, int width, int height, String label){
 this.x = x;
 this.y = y;
 this.width = width;
 this.height = height;
 this.label = label;
 //this.mousePressed();
}

void drawButton (int color1, int color2, int color3, int w, int h) {
    fill(color1, color2, color3);
    rect(this.x, this.y, w, h, 5);
    fill(0, 0, 0);
    textSize(19);
    textAlign(LEFT, TOP);
    text(this.label, this.x+10, this.y+this.height/4);
};

 void write (int color1, int color2, int color3){
    stroke(color1, color2, color3);
    line(pmouseX,pmouseY,mouseX,mouseY);
    
};

boolean isMouseInside(){
    return (mouseX > this.x && mouseX < (this.x + this.width) && mouseY > this.y && mouseY < (this.y + this.height));
}

void handleMouseClick(){ //<>//
     if (this.isMouseInside()&& mousePressed) {
        //this.onClick();
        btn1.mouseDragged(255,0,0);
    }
} 

//draw method
void mouseDragged(int color1, int color2, int color3){
  if(mouseX>10){
  noStroke();
  fill(color1,color2,color3);
  ellipse(mouseX,mouseY,30,30);
  }
}

}

/*
//new method for onClick
void onClick (int color1, int color2, int color3){
  mousePressed(); {
        mouseDragged();
            if(mouseX<300){
                noStroke();
                fill(255, 255, 255); //color1, color2, color3
                ellipse(mouseX, mouseY, 30,30);
            }
        };
} 

/* eraser
Button btn1 = new Button({
    x: 311,
    y: 91,
    label: "Eraser",
    mousePressed() {
        mouseDragged()
            if(mouseX<300){
                noStroke();
                fill(255, 255, 255);
                ellipse(mouseX, mouseY, 30,30);
            }
        };
    }
});

//paint
var btn2 = new Button({
    x: 311,
    y: 15,
    label: "Paint",
    onClick: function() {
        mouseDragged = function(){
             if(mouseX<300){
                noStroke();
                fill(color1, color2, color3);
                ellipse(mouseX, mouseY, 20, 20);
             }
    };
    }
});
btn2.draw(255,206,115,61,32);

//reset?
var btn3 = new Button({
    x: 311,
    y: 130,
    label: "Reset",
    onClick: function() {
            noStroke();
            fill(255, 255, 255);
            rect(0,0,310,400);
    }
});
btn3.draw(255,206,115,61,32);

//pencil
var btn13 = new Button({
    x: 311,
    y: 53,
    label:"Pencil ",
    onClick: function() {
        mouseDragged = function(){
             if(mouseX<300){
                line(pmouseX,pmouseY,mouseX,mouseY);
             } 
            
    };
}
});
btn13.draw(255,206,115,61,32);

//red
var btn4 = new Button ({
    x: 311,
    y: 187,
    label:" ",
    onClick: function() {
        mouseDragged = function(){
            if(mouseX<300){
                noStroke();
                fill(255, 0, 0);
                ellipse(mouseX, mouseY, 20, 20);
            }
             if(btn13.onClick){
                stroke(255,0,0);
                line(pmouseX,pmouseY,mouseX,mouseY);
            } 
            
    };
    }
});
btn4.draw(255,0,0,27,27);


//yellow
var btn5 = new Button({
    x: 346,
    y: 187,
    label:" ",
    onClick: function() {
        mouseDragged = function(){
             if(mouseX<300){
                noStroke();
                fill(255, 242, 0);
                ellipse(mouseX, mouseY, 20, 20);
             }
               if(btn13.onClick){
                stroke(255,242,0);
                line(pmouseX,pmouseY,mouseX,mouseY);
            } 
    };
    }
});
btn5.draw(243,247,0,27,27);

//green
var btn6 = new Button({
    x: 312,
    y: 220,
    label:" ",
    onClick: function() {
        mouseDragged = function(){
             if(mouseX<300){
                noStroke();
                fill(0, 255, 0);
                ellipse(mouseX, mouseY, 20, 20);
             } if(btn13.onClick){
                 stroke(0, 255, 0);
                 line(pmouseX,pmouseY,mouseX,mouseY);
             }
    };
    }
});
btn6.draw(0,255,0,27,27);

//blue
var btn7 = new Button({
    x: 347,
    y: 220,
    label:" ",
    onClick: function() {
        mouseDragged = function(){
             if(mouseX<300){
                noStroke();
                fill(0, 0, 255);
                ellipse(mouseX, mouseY, 20, 20);
             }
               if(btn13.onClick){
                stroke(0,0,255);
                line(pmouseX,pmouseY,mouseX,mouseY);
            } 
    };
    }
});
btn7.draw(0,0,255,27,27);

//orange
var btn8 = new Button({
    x: 312,
    y: 253,
    label:" ",
    onClick: function() {
        mouseDragged = function(){
             if(mouseX<300){
                noStroke();
                fill(255, 128, 0);
                ellipse(mouseX, mouseY, 20, 20);
             }
               if(btn13.onClick){
                stroke(255,128,0);
                line(pmouseX,pmouseY,mouseX,mouseY);
            } 
    };
    }
});
btn8.draw(255,128,0,27,27);

//light blue
var btn9 = new Button({
    x: 348,
    y: 253,
    label:" ",
    onClick: function() {
        mouseDragged = function(){
             if(mouseX<300){
                noStroke();
                fill(0, 251, 255);
                ellipse(mouseX, mouseY, 20, 20);
             }
               if(btn13.onClick){
                stroke(0,251,255);
                line(pmouseX,pmouseY,mouseX,mouseY);
            } 
    };
    }
});
btn9.draw(0,251,255,27,27);

//purple
var btn10 = new Button({
    x: 313,
    y: 287,
    label:" ",
    onClick: function() {
        mouseDragged = function(){
             if(mouseX<300){
                noStroke();
                fill(187, 0, 255);
                ellipse(mouseX, mouseY, 20, 20);
             }
               if(btn13.onClick){
                stroke(187,0,255);
                line(pmouseX,pmouseY,mouseX,mouseY);
            } 
    };
    }
});
btn10.draw(187,0,255,27,27);

//brown
var btn11 = new Button({
    x: 348,
    y: 287,
    label:" ",
    onClick: function() {
        mouseDragged = function(){
             if(mouseX<300){
                noStroke();
                fill(135, 80, 69);
                ellipse(mouseX, mouseY, 20, 20);
             }
               if(btn13.onClick){
                stroke(135,80,69);
                line(pmouseX,pmouseY,mouseX,mouseY);
            } 
    };
    }
});
btn11.draw(135,80,69,27,27);

//black
var btn12 = new Button({
    x: 348,
    y: 321,
    label:" ",
    onClick: function() {
        mouseDragged = function(){
             if(mouseX<300){
                noStroke();
                fill(0,0,0);
                ellipse(mouseX, mouseY, 20, 20);
             }
               if(btn13.onClick){
                stroke(0,0,0);
                line(pmouseX,pmouseY,mouseX,mouseY);
            } 
    };
    }
});
btn12.draw(0,0,0,27,27);

//pencil
var btn13 = new Button({
    x: 311,
    y: 53,
    label:"Pencil ",
    onClick: function() {
        mouseDragged = function(){
             if(mouseX<300){
                line(pmouseX,pmouseY,mouseX,mouseY);
             }
            
    };
}
});
btn13.draw(255,206,115,61,32);

mouseClicked = function() {
    btn1.handleMouseClick();
    btn2.handleMouseClick();
    btn3.handleMouseClick();
    btn4.handleMouseClick();
    btn5.handleMouseClick();
    btn6.handleMouseClick();
    btn7.handleMouseClick();
    btn8.handleMouseClick();
    btn9.handleMouseClick();
    btn10.handleMouseClick();
    btn11.handleMouseClick();
    btn12.handleMouseClick();
    btn13.handleMouseClick();
};

*/