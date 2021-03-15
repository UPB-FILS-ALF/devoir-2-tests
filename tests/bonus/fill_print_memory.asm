nop Fill memory


push 0
next_fill: push 1
    add
    load
    store
    store
    push 99
    sub
    jumpz done_fill
    push 0
    stack
    read
    print
    push 1
    add 
    stack
    load
    store
    push 0
    write
    store
    stack
    write
    stack
    jump next_fill
done_fill: stack



nop Print Memory
    push 99
next_print: jumpz exit
    load
    store
    store
    read 
    print
    pop
    push 1
    sub
    jump next_print
exit: pop
