def solve(a, b, n, func)
    s = 0
    h = (b-a) / n
    (0..n - 1).each do |i|
        x = a + i * h
        if block_given?
        s += yield(x)
        else
          s += func.call(x)
        end
        end
    h * s
end