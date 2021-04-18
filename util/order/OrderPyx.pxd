# distutils: language=c++

cdef class OrderPyx:
    cdef public str symbol

    cdef generateOrderId(self)
