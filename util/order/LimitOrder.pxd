# distutils: language=c++

from util.order.Order cimport Order

cdef class LimitOrder(Order):
    cdef public float limit_price
