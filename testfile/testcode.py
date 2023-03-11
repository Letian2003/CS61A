def hailstone(x):
    """Print the hailstone sequence starting at x and return its
    length.

    >>> a = hailstone(10)
    10
    5
    16
    8
    4
    2
    1
    >>> a
    7
    """
    "*** YOUR CODE HERE ***"
    cnt=0
    while x>1:
        cnt+=1
        print(x)
        if x%2==0:
            x//=2
        else:
            x=x*3+1
    cnt+=1 
    print(1)
    return cnt
        
a=hailstone(10)
print(a)