======================
Computer architectures
======================

* Computer architectures in general
* registers
* implicit and explicit stack operations
* The x86 and x86_64 computer architectures, common instructions
* System V ABI on x86_64 architecture

.. page::

Computer
--------

* Von Neumann: CPU, Memory & IO devices
* Both code and data in the memory!
* No-Execute (NX) bit -> Harvard Architecture

.. page::

Registers
---------

* Fast "cache" to speed up memory access
* Various count of registers in architectures (JavaVM vs. SPARC)
* Not all registers need to be available at all times

  - SPARC register windows
  - ARM CPU modes

* Might be required to access the memory

  - load/store (RISC) vs. register (CISC) based architectures

.. page::

Memory
------

* A *non-continuous* linear space

  - PCI space, firmware, BIOS, ...

* Usually physical memory not directly accessible

  - each address considered as Virtual Memory address
  - VMA translated to PMA by MMU
  - segmantion vs. paging

.. page::

MMU
---
