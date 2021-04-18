# distutils: language=c++

import sys

from util.order.OrderPyx cimport OrderPyx

cdef class OrderBook:
    cdef object owner
    cdef str symbol
    cdef object bids
    cdef object asks 
    cdef public object last_trade
    cdef public object book_log
    cdef object quotes_seen
    cdef public object history
    cdef object order_id_to_history_idx
    cdef int history_idx_counter
    cdef int orders_since_most_recent_trade
    cdef object last_update_ts
    cdef object _transacted_volume

    cpdef handleLimitOrder(order_book, OrderPyx order)
    cpdef getInsideBids(self, unsigned long long depth=*)
    cpdef isEqualPrice(self, OrderPyx order, OrderPyx o)
