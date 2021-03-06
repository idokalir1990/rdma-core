# SPDX-License-Identifier: (GPL-2.0 OR Linux-OpenIB)
# Copyright (c) 2019, Mellanox Technologies. All rights reserved.
from pyverbs.base cimport PyverbsObject, PyverbsCM
cimport pyverbs.libibverbs as v

cdef class CompChannel(PyverbsCM):
    cdef v.ibv_comp_channel *cc
    cpdef close(self)
    cdef object context

cdef class CQ(PyverbsCM):
    cdef v.ibv_cq *cq
    cpdef close(self)
    cdef object context

cdef class CqInitAttrEx(PyverbsObject):
    cdef v.ibv_cq_init_attr_ex attr

cdef class CQEX(PyverbsCM):
    cdef v.ibv_cq_ex *cq
    cdef v.ibv_cq *ibv_cq
    cpdef close(self)
    cdef object context

cdef class WC(PyverbsObject):
    cdef v.ibv_wc wc

cdef class PollCqAttr(PyverbsObject):
    cdef v.ibv_poll_cq_attr attr

cdef class WcTmInfo(PyverbsObject):
    cdef v.ibv_wc_tm_info info
