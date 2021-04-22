# distutils: language=c++

cdef class Order:
    cdef public int agent_id
    cdef public object time_placed
    cdef public str symbol
    cdef public float quantity
    cdef public unsigned int is_buy_order
    cdef public int order_id
    cdef public object fill_price
    cdef public object tag

    cdef generateOrderId(self)
