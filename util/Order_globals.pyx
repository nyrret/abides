# distutils: language=c++

cdef int Order_order_id = 0
cdef vector[int] Order_order_ids

cdef class Order:
    cpdef __init__(self, agent_id, time_placed, symbol, quantity, is_buy_order, order_id=None, tag=None)
    cpdef generateOrderId(self)
    cpdef to_dict(self)
