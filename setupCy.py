from setuptools import setup
from Cython.Build import cythonize

setup(
      ext_modules=cythonize([
          'util/OrderBook.pyx',
          'util/order/Order.pyx',
          'util/order/LimitOrder.pyx'
      ], annotate=True)
 )
