function output = Sigmoid_Func_1_Increase(Gen, iter)
    if Gen < iter
        output = 0;
    else
        Net = 15 * ( (Gen-iter) / Gen ) - 9.9;
        sigmoid = sigmf(Net, [1 0]);
        output = sigmoid < rand;
    end
end