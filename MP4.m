function MP4(height, velocity, angle, Ax, Ay)

T =(sqrt(abs((velocity*sind(angle))^2-2*Ay*height)) - velocity*sind(angle))/Ay;

if T <= 0
    T=(-sqrt(abs((velocity*sind(angle))^2-2*Ay*height)) - velocity*sind(angle))/Ay;
end

if height < 0
    error('Error! Input Height')
elseif Ay == 0
    error('Error! There would be no Free Fall')
    
end

t=0:0.1:T;
y = height + velocity.*sind(angle).*t+(1./2).*Ay.*t.^2;
x = velocity.*cosd(angle).*t+(1./2).*Ax.*t.^2;


plot(x,y,'-.g')
grid on
title('Projectile trajectory')
xlabel('Horizontal distance')
ylabel('Vertical distance')