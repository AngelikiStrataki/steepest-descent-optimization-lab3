function thema1i()

    syms fs xs ys

    f =@(x1,x2)   (x1.^2)/3 + 3*x2.^2;
    fs= (xs.^2)/3 + 3*ys.^2;
  
    df_dx1 = diff(fs,xs);              
    df_dx2 = diff(fs,ys);

    grad_x1 = matlabFunction(df_dx1, 'Vars', {xs, ys});
    grad_x2 = matlabFunction(df_dx2, 'Vars', {xs, ys});

    e = 0.001;
    k = 1;
    x1(1) = 0.1;
    x2(1) = 0.1;
    z(1) = f(x1(1),x2(1));
    g = 0.1;
    STEP_MAX = 1000;
    grand_f = gradient(fs, [xs, ys]);

    while ( norm(subs(grand_f, [xs, ys], [x1(k), x2(k)])) >= e   &&   k< STEP_MAX) 
         x1(k+1) = x1(k) - g * grad_x1(x1(k), x2(k));
         x2(k+1) = x2(k) - g * grad_x2(x1(k), x2(k));
         z(k + 1) = f(x1(k + 1), x2(k + 1));
         k = k + 1;
    end

    %scatter3(point(:, 1), point(:, 2), point(:, 3), 'r', 'filled');
    plot(1:k,z,'-or');
    fprintf("Αριθμός επαναλήψεων είναι %d\n", k)
    fprintf("x=%1.2f, y=%1.2f, z=%1.2f\n", x1(end), x2(end), z(end))


end