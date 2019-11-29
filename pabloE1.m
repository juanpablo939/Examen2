a=[1 4 -6 -1 5.1 1; 1.1 -2.4 -10.5 7.1 1 -5.8; -3.4 -4.8 -3.1 +5.1 2 9.2; 1 -2.1 1.3 4 -7.1 50; 1 0 0 -1.3 2.1 10.5]
[m,n]=size(a);

for j=1:m-1
    for z=2:m
        if a(j,j)==0
            t=a(j,:);a(j,:)=a(z,:)
            a(z,:)=t
        end
    end
    for i=j+1:m
        a(i,:)=a(i,:)-a(j,:)*(a(i,j)/a(j,j));
    end
end
for j=m:-1:2
    for i=j-1:-1:1
        a(i,:)=a(i,:)-a(j,:)*(a(i,j)/a(j,j));
    end
end

for s=1:m
    a(s,:)=a(s,:)/a(s,s);
    x(s)=a(s,n);
end
a
x'