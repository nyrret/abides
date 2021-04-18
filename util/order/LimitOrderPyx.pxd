# distutils: language=c++

from util.order.OrderPyx cimport OrderPyx

cdef class LimitOrderPyx(OrderPyx):
    cdef public float limit_price
