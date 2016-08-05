====================
Binary Code Analysis
====================

.. class:: center

   Code:   IAN

   Ac.Year:    2016/2017

   Term:   Summer

   Language:   Czech

   Credits:    4

   Completion: classified accreditation

.. page::

List of topics
--------------

1. Computer architectures in general, registers, implicit and explicit stack operations. The x86 and x86_64 computer architectures, common instructions. System V ABI on x86_64 architecture, red zone.
2. Compilation, linking, and running code. Examples of compiler optimizations, stack optimizations (leaf and tail calls, function inlining), linker script, understanding of the Unix binary file (ELF, objdump).
3. Linux crash dump analysis, DWARF debug symbols, using the crash(8) tool.
4. Linux crash dump analysis, understanding kernel Oops, kernel flags, sysrq.
5. Kernel process and memory management, task_struct, vmas, SLAB allocator.
6. Interrupt processing, postponing work, bottom halves, softirqs and tasklets, work queues.
7. Live kernel tracing (SystemTap, ftrace), locks, deadlocks and hangs and their analysis and reconstruction

Paragraphs and Notes
--------------------

Binary code analysis is a new approach for:

* application security testing 
* transforming software security

Let us **emphasize**:

.. class:: blockquote

   *Kernel is a complex piece of software.*

.. note::

   Ideally, kernels never crash. In reality, the crashes sometimes
   occur, for whatever reason.

.. page::

Figure sample
-------------

For raster images, rst2pdf supports anything PIL (The Python Imaging 
Library) supports.  For vector image support, you need to install 
svglib that would consume the following image formats:

* Postscript (PS) and Encapsulated Postscript (EPS)
* XFIG
* Scalable Vector Graphics (SVG)

.. figure:: images/linux.png
   :align: right
   :scale: 30

   This is how Linux looks like.

.. page::

Tables
------

We can draw ASCII tables by hand or `on the web <http://www.tablesgenerator.com/markdown_tables>`_ and render them into PDF:

.. space:: 10

+-----------+-----------+----------------+
| Hour/sem  | Lectures  | Sem. Exercises |
+===========+===========+================+
| a         | b         | c              |
|           |           |                |
| aa        |           |                |
+-----------+-----------+----------------+
| d         | e         | f              |
+-----------+-----------+----------------+
| g         | h         | i              |
+-----------+-----------+----------------+
| j         | k         | l              |
+-----------+-----------+----------------+

.. page::

Console output
--------------

Pre-formatted console capture:

.. code-block:: console

   Configured dump device:  0xffffffff
   Configured dump flags:  KL_DUMP_FLAGS_DISKDUMP
   Configured dump level:  KL_DUMP_LEVEL_HEADER| KL_DUMP_LEVEL_KERN
   Configured dump compression method:  KL_DUMP_COMPRESS_GZIP

.. page::

Assembly fragments
------------------

Sample assembly listing with syntax highlighting:

.. code-block:: asm
   :linenos: true

   .text  # start of code segment

   .globl _start
   _start:
         movl $4, %eax   # EAX will serve as a counter for 
                         # the number of words left to be summed 
         movl $0, %ebx   # EBX will store the sum
         movl $x, %ecx   # ECX will point to the current 
                         # element to be summed
   top:  addl (%ecx), %ebx
         addl $4, %ecx   # move pointer to next element
         decl %eax       # decrement counter
         jnz top         # if counter not 0, then loop again
   done: movl %ebx, sum  # done, store result in "sum"

.. page::

C language snippets
-------------------

Sample C language code:

.. code-block:: C
   :linenos: true

   struct sample *sample_clone(struct sample *sample) {
       if (sample == NULL) {
           return NULL;
       }
       /*
        * For function calls that span multiple lines, align them 
        * to the right.
        */
       return sample_new(sample->first_field, sample->second_field,
                     sample->mode, sample->state, sample->next);
   }

More syntax highlighters could be looked up
`at Pygments web site <http://pygments.org/docs/lexers/>`_.

.. page::

About slides generator
----------------------

Rst2pdf can generate rich, good quality PDFs from lightly marked 
up text files, and it doesn't require installing gigabytes of 
software to do it. Your documents can now be placed under 
version control, unlike with "office" tools. You can read more 
about how it works in the 
`handbook <http://rst2pdf.ralsina.me/handbook.html>`_ or even
`try it on-line <http://www.rst2pdf.net/>`_.

.. page::

Installation instructions
-------------------------

Follow the following screencast to setup your RsT-to-PDF building
environment. Python 2.7 was used.

.. code-block:: bash

   # dnf install python-virtualenv
   $ mkdir ~/.virtenvs
   $ virtualenv ~/.virtenvs/bca
   $ source ~/.virtenvs/bca/bin/activate
   (bca)$ pip install rst2pdf
   ... installing many Python packages ...
   ... In case of falures, some *-devel .rpm's might be missing.
   (bca)$ rst2pdf -e preprocess -s slides.style -o slides.pdf slides.rst
   (bca)$ xpdf slides.pdf

.. page::

Custom stylesheet
-----------------

These slides were built with the following stylesheet. Make sure to
pass it to rst2pdf (with -s option).

.. code-block:: json
   :include: slides.style

.. footer::

   © Brno University of Technology | http://www.vutbr.cz | Slide ###Page### of ###Total###

