
.. include:: footer.hdr

====================
Binary Code Analysis
====================

.. raw:: pdf

   Spacer 0,80

.. image:: images/Logo_RH_RGB_Default.png
   :width: 500px
   :align: left

.. image:: images/FIT_zakladni_provedeni_loga_barva_EN.png
   :width: 500px
   :align: right

.. raw:: pdf

   PageBreak oneColumn

.. page::

Details
-------

* Code:   IAN
* Ac.Year:    2016/2017
* Term:   Summer
* Language:   Czech
* Credits:    4
* Completion: classified accreditation
* `<http://www.fit.vutbr.cz/study/course-l.php.en?id=11309>`_

.. page::

Motivation and goals
--------------------

.. class:: blockquote

    *"To present the tools and techniques which allow us to observe the behavior of a modern computer system."*

* Present tools for observing both the userland and kernel code
* Take a closer look at the basic system operations
* Debugg a system crashes from crashdump
* An excellent `Crash Dump Analysis <http://d3s.mff.cuni.cz/teaching/crash_dump_analysis/>`_  course at `MFF CUNI <http://www.mff.cuni.cz/to.en/>`_.

.. page::

People
------

* Stanislav Kozina <skozina@redhat.com>
* Robin Hack <rhack@redhat.com>
* Michael Petlan <mpetlan@redhat.com>
* Petr Holasek <pholasek@redhat.com>
* Ilya Etingof <ietingof@redhat.com>

.. page::

Syllabus of lectures:
---------------------

1. Computer architectures in general, registers, implicit and explicit stack operations. The x86 and x86_64 computer architectures, common instructions. System V ABI on x86_64 architecture, red zone.
2. Compilation, linking, and running code. Examples of compiler optimizations, stack optimizations (leaf and tail calls, function inlining), linker script, understanding of the Unix binary file (ELF, objdump).
3. Linux crash dump analysis, DWARF debug symbols, using the crash(8) tool.
4. Linux crash dump analysis, understanding kernel Oops, kernel flags, sysrq.

.. page::

Syllabus of lectures (cont):
----------------------------

5. Kernel process and memory management, task_struct, vmas, SLAB allocator.
6. Interrupt processing, postponing work, bottom halves, softirqs and tasklets, work queues.
7. Live kernel tracing (SystemTap, ftrace), locks, deadlocks and hangs and their analysis and reconstruction.

.. page::

Syllabus of computer exercises:
-------------------------------

1. Decomposition of an ELF binary file, decoding its sections, and code disassembling.
2. Using the crash(1) tool on Linux.
3. Crash dump analysis of a Linux system on the IA-32 architecture.
4. Crash dump analysis of a Linux system on the AMD64 architecture.
5. System tracing using SystemTap and ftrace.
6. Tracing and analysis of system deadlocks. 

.. page::

Required Skills
-------------------------------

* Basic C language programming (`IZP <http://www.fit.vutbr.cz/study/course-l.php.cs?id=11499>`_)
* Basic OS overview (`IOS <http://www.fit.vutbr.cz/study/courses/index.php?id=11462>`_)
* Assembly language (`ISU <http://www.fit.vutbr.cz/study/course-l.php.en?id=11420>`_)
* English language
* Basic UNIX shell usage

.. page::

Literature
----------

* `Ljubuncic, I.: Linux Kernel Crash Book, 2011 <http://www.dedoimedo.com/computers/crash-book.html>`_
* Drake, C., Brown, K.: Panic! UNIX System Crash Dump Analysis, Prentice Hall, 1995.
* `Hofmann, F.: The Solaris Operating System on x86 Platforms, Crashdump Analysis, Operating System Internals, 2005 <http://d3s.mff.cuni.cz/teaching/crash_dump_analysis/ref/book.pdf>`_
* `Intel Corporation: Intel 64 and IA-32 Architectures Software Developer Manuals, 2015 <http://www.intel.com/content/www/us/en/processors/architectures-software-developer-manuals.html>`_
* `Matz, M., Hubicka, J., Mitchell, M.: System V Application Binary Interface, AMD64 Architecture Processor Supplement, 2013 <http://www.x86-64.org/documentation/abi.pdf>`_
* The OSDev wiki (`http://wiki.osdev.org <http://wiki.osdev.org>`_)
