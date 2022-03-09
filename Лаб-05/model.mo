model Project
  parameter  Real a=0.54;
  parameter  Real b=0.031;
  parameter  Real c=0.62;
  parameter  Real d=0.07;
  
  Real x(start=10);
  Real y(start=30);
  
  equation
    der(x)= -a*x + b*x*y;
    der(y)= c*y - d*x*y;

  
  annotation(experiment(StartTime=0, StopTime=250, Tplerance=1e-06,Interval=0.05));

end Project;
