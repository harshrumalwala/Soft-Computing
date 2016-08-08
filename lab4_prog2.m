display('Enter size of Fuzzy Set A');
n1=input('n = ');
display('Enter Fuzzy Set A');
a=zeros(2,n1);
for i=1:n1
    a(1,i)=input('');
    a(2,i)=input('');
end
display(a);

display('Enter size of Fuzzy Set B');
n2=input('n = ');
display('Enter Fuzzy Set B');
b=zeros(2,n2);
for i=1:n2
    b(1,i)=input('');
    b(2,i)=input('');
end
display(b);

for i=1:n1
    for j=1:n2
        if(a(2,i)<b(2,j))
            r(i,j)=a(2,i)
        end
        if(a(2,i)>=b(2,j))
            r(i,j)=b(2,j)
        end
    end
end

display(r,'R');

display('Enter size of Fuzzy Set C');
n3=input('n = ');
display('Enter Fuzzy Set C');
c=zeros(2,n3);
for i=1:n3
    c(1,i)=input('');
    c(2,i)=input('');
end
display(c);

display('Enter size of Fuzzy Set D');
n4=input('n = ');
display('Enter Fuzzy Set D');
d=zeros(2,n4);
for i=1:n4
    d(1,i)=input('');
    d(2,i)=input('');
end
display(d);

for i=1:n3
    for j=1:n4
        if(c(2,i)<d(2,j))
            s(i,j)=c(2,i)
        end
        if(c(2,i)>=d(2,j))
            s(i,j)=d(2,j)
        end
    end
end

display(s,'S');

for i=1:n1
    for k=1:n4
        for j=1:n2
            p=zeros(0,n2+5);
            if(r(i,j)<=s(j,k))
                p(j)=r(i,j)
            end
            
            if(r(i,j)>s(j,k))
                p(j)=s(j,k)
            end
            
            rs(i,k)= max(p);
            
        end
    end
end

display(rs);

for i=1:n3
    for k=1:n2
        for j=1:n4
            p=zeros(0,n4+5);
            if(s(i,j)<=r(j,k))
                p(j)=s(i,j)
            end
            
            if(s(i,j)>r(j,k))
                p(j)=r(j,k)
            end
            
            sr(i,k)= max(p);
            
        end
    end
end

display(sr);