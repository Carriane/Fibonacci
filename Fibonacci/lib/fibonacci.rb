class MyMath
    
  def recrusive_fib(n)
    if (n<=2)
      return 1
    else
      return (fib(n-1)+fib(n-2))
    end
  end

  def iterative_fib
    first=0
    second=1
    nextterm=0

    while(c<=n+1)
      if(c<=1)
        nextterm=c
      else
        puts nextterm
        nextterm=first+second
        first=second
        second=nextterm
      end
      c+=1
    end
  end

end

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end



