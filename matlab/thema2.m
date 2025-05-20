function thema2()

    syms fs xs ys

    f =@(x1,x2)   (x1.^2)/3 + 3*x2.^2;
    fs= (xs.^2)/3 + 3*ys.^2;
  
    df_dx1 = diff(fs,xs);              
    df_dx2 = diff(fs,ys);

    grad_x1 = matlabFunction(df_dx1, 'Vars', {xs, ys});
    grad_x2 = matlabFunction(df_dx2, 'Vars', {xs, ys});

    e = 0.01;
    k = 1;
    s=5;
    
    g = 0.5;
    STEP_MAX = 50;
    grand_f = gradient(fs, [xs, ys]);
    %x1 = [-10,5]; 
    %x2 = [-8,12];
  
    x1(1) = 5;
    x2(1) = -5;
    z(1) = f(x1(1),x2(1));   



    while ( norm(subs(grand_f, [xs, ys], [x1(k), x2(k)])) >= e   &&   k< STEP_MAX) 
        x1_bar = x1(k) - s * grad_x1(x1(k), x2(k));
        x2_bar = x2(k) - s * grad_x2(x1(k), x2(k)); 
        
        if x1_bar <=-10
            x1_bar=-10;
        elseif x1_bar>=5
                x1_bar=5;
        end
        
        if x2_bar <=-8
            x2_bar=-8;
        elseif x2_bar>=12
                x2_bar=12;
        end
 
         x1(k+1) = x1(k) + g * (x1_bar-x1(k));
         x2(k+1) = x2(k) + g * (x2_bar-x2(k));
         z(k+1) = f(x1(k + 1), x2(k + 1));
         k = k + 1;
    end

    %scatter3(point(:, 1), point(:, 2), point(:, 3), 'r', 'filled');
    plot(1:k,z,'-or');
    fprintf("Αριθμός επαναλήψεων είναι %d\n", k)
    fprintf("x=%1.2f, y=%1.2f, z=%1.2f\n", x1(end), x2(end), z(end))


end