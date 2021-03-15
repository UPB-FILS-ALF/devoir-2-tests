    push 99
print_next_number: jumpz exit
    load
    store
    store
    read 
    print
    pop
    push 1
    sub
    jump print_next_number
exit: pop