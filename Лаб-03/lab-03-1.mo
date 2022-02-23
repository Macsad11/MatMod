model Project
  parameter  Real a(start=0.35);
  parameter  Real b(start=0.79);
  parameter  Real c(start=0.49);
  parameter  Real h(start=0.14); 
  Real y1(start=66000);
  Real y2(start=77000);
  
  equation
    der(y1)= -a*y1-b*y2 + sin(time+1)+2;
    der(y2)= -c*y1-h*y2 + cos(time+2)+1;

  
  annotation(experiment(StartTime=0, StopTime=1, Tplerance=1e-06,Interval=0.05));

end Project;

model Project
  parameter  Real a(start=0.258);
  parameter  Real b(start=0.67);
  parameter  Real c(start=0.46);
  parameter  Real h(start=0.31); 
  Real y1(start=66000);
  Real y2(start=77000);
  
  equation
    der(y1)= -a*y1-b*y2 + sin(2*time)+1;
    der(y2)= -c*y1*y2-h*y2 + cos(time)+1;

  
  annotation(experiment(StartTime=0, StopTime=1, Tplerance=1e-06,Interval=0.05));

end Project;