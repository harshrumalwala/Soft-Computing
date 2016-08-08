choice=menu('option','gamma','S','L','triangle','pi','G');

if(choice==1)
    
a=input('a = ');
b=input('b = ');
n=input('n = ');
x=input('x = ');

j=0;
for i=1:n
    if(x(i)<=a)
        y(i)=0;
    elseif (x(i)>a&x(i)<=b)
            y(i)=(x(i)-a)/(b-a);
    elseif (x(i)>b)
            y(i)=1;        
    end
end

plot(y)
end

if (choice == 2)

a=input('a = ');
b=input('b = ');
c=input('c = ');
n=input('n = ');
x=input('x = ');

j=0;
for i=1:n
    if(x(i)<=a)
        y(i)=0;
    elseif (x(i)>a&x(i)<=b)
        y(i)=2*(((x(i)-a)*(x(i)-a))/((c-a)*(c-a)));
    elseif (x(i)>b&x(i)<=c)
        y(i)=1-2*(((x(i)-c)*(x(i)-c))/((c-a)*(c-a)));
    else
        y(i)=1;
    end
end

plot(y)
    
end

if(choice==3)
    
a=input('a = ');
b=input('b = ');
n=input('n = ');
x=input('x = ');

j=0;
for i=1:n
    if(x(i)<=a)
        y(i)=1;
    elseif (x(i)>a&x(i)<=b)
            y(i)=1+((a-x(i))/(b-a));
    elseif (x(i)>b)
            y(i)=0;        
    end
end

plot(y)
end

if (choice == 4)

a=input('a = ');
b=input('b = ');
c=input('c = ');
n=input('n = ');
x=input('x = ');

j=0;
for i=1:n
    if(x(i)<=a)
        y(i)=0;
    elseif (x(i)>a&x(i)<=b)
        y(i)=(x(i)-a)/(b-a);
    elseif (x(i)>b&x(i)<=c)
        y(i)=1+((b-x(i))/(c-b));
    else
        y(i)=0;
    end
end

plot(y)
    
end

if (choice == 5)

a=input('a = ');
b=input('b = ');
c=input('c = ');
d=input('d = ');
n=input('n = ');
x=input('x = ');

j=0;
for i=1:n
    if(x(i)<=a)
        y(i)=0;
    elseif (x(i)>a&x(i)<=b)
        y(i)=(x(i)-a)/(b-a);
    elseif (x(i)>b&x(i)<=c)
        y(i)=1;
    elseif (x(i)>c&x(i)<=d)
        y(i)=1+((c-x(i))/(d-c));
    else
        y(i)=0;
    end
end

plot(y)
    
end

if (choice == 6)

m=input('m = ');
s=input('s = ');
n=input('n = ');
x=input('x = ');


j=0;
for i=1:n
    y(i) = exp(-(((x(i)-m)*(x(i)-m))/(2*s*s)))
end

plot(y)
    
end

