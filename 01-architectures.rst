
.. include:: footer.hdr

======================
Computer architectures
======================

* Computer architectures in general
* registers
* The x86 and x86_64 computer architectures, common instructions
* implicit and explicit stack operations
* System V ABI on x86_64 architecture

.. raw:: pdf

   PageBreak oneColumn

.. page::

Computer
--------

* Von Neumann: CPU, Memory & IO devices
* Both code and data in the memory!
* No-Execute (NX) bit -> Harvard Architecture

TODO: picture!

.. page::

CPU
---

* A set of computing cores
* Many (optional) integrated parts

  - Registers
  - computational part
  - MMU
  - caches
  - interrupt controller
  - power control
  - asynchronous accelerators

* Several computational modes (protection)

Instructions
------------

* The program representation in memory
* Trivial tasks performed by the CPU

  - load/store data from memory
  - computation on registers
  - functions calls / jumps
  - special instructions for TLB, interrupts, VMs...

.. page::

Registers
---------

* Fast "cache" to speed up memory access
* Various count of registers in architectures
* Not all registers need to be available at all times
* Might be required to access the memory

  - load/store (RISC) vs. register (CISC) based architectures

.. page::

Physical vs. Virtual Memory
---------------------------

* A *non-continuous* linear space

  - PCI space, firmware, BIOS, ...

* Usually physical memory not directly accessible

  - each address considered as Virtual Memory address
  - VMA translated to PMA by MMU
  - segmentation vs. paging

.. page::

MMU
---

* A transparent VMA->PMA translation unit
* Needs fast (native speed) cache - Translation Lookaside Buffer
* Software vs. hardware driven TLB

  - TLB invalidation

* Page tables
* Default page size

.. page::

Page tables
-----------

.. image:: images/paging.png
  :scale: 200%

.. page::

Real Mode Segmentation
----------------------

* 20bit width of physical addressing
* Separate segment for Code, Data, Stack and Extra

  - %cs, %ds, %ss, %es
  - later also %fs, %fs

* PMA = (segment << 4) + offset
* Segment prefix override
* Eg. 0x3EF:0x1234 == 0x5124
* 0x3EF:0x1234 == 0x3EE:1244 == 0x3ED:1254

.. page::

(32bit) Protected Mode Segmentation
-----------------------------------

* 24/32bit memory address line width
* Gate A20
* Segment register now points to a segment descriptor
* Segment descriptor table identified by GDT/LDT
* 64bit:

  - only %gs, %fs remains active
  - %cs, %ds, %ss, %ss must point to a all-memory segment descriptor

.. page::

Segment descriptor
------------------

.. code-block:: C
   :linenos: true

   struct desc_struct {
   ...
   struct {
       u16 limit0;
       u16 base0;
       unsigned base1: 8, type: 4, s: 1, dpl: 2,
           p: 1;
       unsigned limit: 4, avl: 1, l: 1, d: 1,
           g: 1, base2: 8;
   };

.. page::
