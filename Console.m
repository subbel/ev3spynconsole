inp = "y";
disp("Input the following commands:");
disp("Forward = w");
disp("Left = a");
disp("Backwards = s");
disp("Right = d");
while inp=="y"
    x = input("Enter car movement : ",'s');
    if x == "a"
        brick.MoveMotor('C',26);
        pause(2);
        brick.StopAllMotors();
    elseif x == "d"
        brick.MoveMotor('B',26);
        pause(2);
        brick.StopAllMotors();    
    elseif x == "w"
        brick.MoveMotor('C',26);
        brick.MoveMotor('B',26);
        pause(2)
    elseif x == "s"
        brick.MoveMotor('C',-26);
        brick.MoveMotor('B',-26);
        pause(2)
    else
        disp("Enter valid statement");
    end
    brick.StopAllMotors()
    inp = input("Continue : (y/n)",'s');
end
inp = "n";