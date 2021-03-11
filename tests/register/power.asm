    push 1
    push 12
    stack
    load
next_power: store
    jumpz done
    load
    push 3
    mul
    store
    push 1
    sub
    load
    stack
    jump next_power
done: pop
    print
