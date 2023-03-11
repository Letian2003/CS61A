def improve(update, close, x=1):
    while not close(x):
        print(x)
        x = update(x)
    return x


def sq2_update(x):
    return 1/x + x/2


def sq2_close(x):
    return abs(x*x-2) < 1e-15


print(improve(sq2_update, sq2_close))
