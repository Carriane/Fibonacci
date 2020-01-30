class MyMath
    
  def self.recursive_fib(n)
    if (n <= 2)
      return 1
    else
      return recursive_fib(n-1) + recursive_fib(n-2)
    end
  end
  # [0, 1, 1, 2, 3, 2, 2, 2, 2, 2]
  #                       |  |
  # 4th element. Keep adding last two numbers until we reach the desired element.
  def self.iterative_fib(c) #4
    first = 0
    second = 1
    nextterm = 0
    count = 1

    while(c > count ) # c = 4 count = 4
      if(c <= 1 ) 
        nextterm = c
      else
        nextterm = first + second #nextterm = 3
        first = second # first = 2
        second = nextterm # second = 3
      end
      count +=1
    end
    return nextterm
  end

end

 require 'benchmark'
 num = 35
 Benchmark.bm do |x|
   x.report("recursive_fib") { MyMath.recursive_fib(num) }
   x.report("iterative_fib")  { MyMath.iterative_fib(num)  }
  end




