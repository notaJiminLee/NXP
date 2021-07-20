/*
 * GENERATED FILE - DO NOT EDIT
 * Copyright (c) 2008-2013 Code Red Technologies Ltd,
 * Copyright 2015, 2018-2019 NXP
 * (c) NXP Semiconductors 2013-2021
 * Generated linker script file for MIMXRT685S
 * Created from linkscript.ldt by FMCreateLinkLibraries
 * Using Freemarker v2.3.30
 * MCUXpresso IDE v11.3.0 [Build 5222] [2021-01-11] on 2021. 3. 25 ¿ÀÈÄ 5:56:30
 */

INCLUDE "cifar10_tfliteM_2_9_0_685_tutorial_Debug_library.ld"
INCLUDE "cifar10_tfliteM_2_9_0_685_tutorial_Debug_memory.ld"

ENTRY(ResetISR)

SECTIONS
{
     /* Image Vector Table and Boot Data for booting from external flash */
    .boot_hdr : ALIGN(4)
    {
        FILL(0x00)
        __boot_hdr_start__ = ABSOLUTE(.) ;
        . = 0x400 ;
        __flash_conf_hdr_start__ = ABSOLUTE(.) ;
        KEEP(*(.flash_conf))
        __flash_conf_hdr_end__ = ABSOLUTE(.) ;
        . = 0x1000 ;
         __boot_hdr_end__ = ABSOLUTE(.) ;
    } >QSPI_FLASH

    /* MAIN TEXT SECTION */
    .text : ALIGN(4)
    {
        FILL(0xff)
        __vectors_start__ = ABSOLUTE(.) ;
        KEEP(*(.isr_vector))
        /* Global Section Table */
        . = ALIGN(4) ;
        __section_table_start = .;
        __data_section_table = .;
        LONG(LOADADDR(.data));
        LONG(    ADDR(.data));
        LONG(  SIZEOF(.data));
        LONG(LOADADDR(.data_RAM2));
        LONG(    ADDR(.data_RAM2));
        LONG(  SIZEOF(.data_RAM2));
        LONG(LOADADDR(.data_RAM3));
        LONG(    ADDR(.data_RAM3));
        LONG(  SIZEOF(.data_RAM3));
        LONG(LOADADDR(.data_RAM4));
        LONG(    ADDR(.data_RAM4));
        LONG(  SIZEOF(.data_RAM4));
        LONG(LOADADDR(.data_RAM5));
        LONG(    ADDR(.data_RAM5));
        LONG(  SIZEOF(.data_RAM5));
        __data_section_table_end = .;
        __bss_section_table = .;
        LONG(    ADDR(.bss));
        LONG(  SIZEOF(.bss));
        LONG(    ADDR(.bss_RAM2));
        LONG(  SIZEOF(.bss_RAM2));
        LONG(    ADDR(.bss_RAM3));
        LONG(  SIZEOF(.bss_RAM3));
        LONG(    ADDR(.bss_RAM4));
        LONG(  SIZEOF(.bss_RAM4));
        LONG(    ADDR(.bss_RAM5));
        LONG(  SIZEOF(.bss_RAM5));
        __bss_section_table_end = .;
        __section_table_end = . ;
        /* End of Global Section Table */

        *(.after_vectors*)

    } > QSPI_FLASH

    .text : ALIGN(4)
    {
       *(.text*)
       *(.rodata .rodata.* .constdata .constdata.*)
       . = ALIGN(4);
            /* C++ constructors etc */
            . = ALIGN(4);
            KEEP(*(.init))
            
            . = ALIGN(4);
            __preinit_array_start = .;
            KEEP (*(.preinit_array))
            __preinit_array_end = .;
            
            . = ALIGN(4);
            __init_array_start = .;
            KEEP (*(SORT(.init_array.*)))
            KEEP (*(.init_array))
            __init_array_end = .;
            
            KEEP(*(.fini));
            
            . = ALIGN(4);
            KEEP (*crtbegin.o(.ctors))
            KEEP (*(EXCLUDE_FILE (*crtend.o) .ctors))
            KEEP (*(SORT(.ctors.*)))
            KEEP (*crtend.o(.ctors))
            
            . = ALIGN(4);
            KEEP (*crtbegin.o(.dtors))
            KEEP (*(EXCLUDE_FILE (*crtend.o) .dtors))
            KEEP (*(SORT(.dtors.*)))
            KEEP (*crtend.o(.dtors))
            . = ALIGN(4);
            /* End C++ */
    } > QSPI_FLASH
    /*
     * for exception handling/unwind - some Newlib functions (in common
     * with C++ and STDC++) use this.
     */
    .ARM.extab : ALIGN(4)
    {
        *(.ARM.extab* .gnu.linkonce.armextab.*)
    } > QSPI_FLASH

    .ARM.exidx : ALIGN(4)
    {
        __exidx_start = .;
        *(.ARM.exidx* .gnu.linkonce.armexidx.*)
        __exidx_end = .;
    } > QSPI_FLASH
 
    _etext = .;
        
 
    /* USB_RAM */
    .m_usb_data (NOLOAD) :
    {
        *(m_usb_global)
    } > USB_RAM AT> USB_RAM
    /* DATA section for SRAM_ROM */

    .data_RAM2 : ALIGN(4)
    {
        FILL(0xff)
        PROVIDE(__start_data_RAM2 = .) ;
        PROVIDE(__start_data_SRAM_ROM = .) ;
        *(.ramfunc.$RAM2)
        *(.ramfunc.$SRAM_ROM)
        *(.data.$RAM2)
        *(.data.$SRAM_ROM)
        *(.data.$RAM2.*)
        *(.data.$SRAM_ROM.*)
        . = ALIGN(4) ;
        PROVIDE(__end_data_RAM2 = .) ;
        PROVIDE(__end_data_SRAM_ROM = .) ;
     } > SRAM_ROM AT>QSPI_FLASH

    /* DATA section for SRAM_SHARED */

    .data_RAM3 : ALIGN(4)
    {
        FILL(0xff)
        PROVIDE(__start_data_RAM3 = .) ;
        PROVIDE(__start_data_SRAM_SHARED = .) ;
        *(.ramfunc.$RAM3)
        *(.ramfunc.$SRAM_SHARED)
        *(.data.$RAM3)
        *(.data.$SRAM_SHARED)
        *(.data.$RAM3.*)
        *(.data.$SRAM_SHARED.*)
        . = ALIGN(4) ;
        PROVIDE(__end_data_RAM3 = .) ;
        PROVIDE(__end_data_SRAM_SHARED = .) ;
     } > SRAM_SHARED AT>QSPI_FLASH

    /* DATA section for SRAM_DSP */

    .data_RAM4 : ALIGN(4)
    {
        FILL(0xff)
        PROVIDE(__start_data_RAM4 = .) ;
        PROVIDE(__start_data_SRAM_DSP = .) ;
        *(.ramfunc.$RAM4)
        *(.ramfunc.$SRAM_DSP)
        *(.data.$RAM4)
        *(.data.$SRAM_DSP)
        *(.data.$RAM4.*)
        *(.data.$SRAM_DSP.*)
        . = ALIGN(4) ;
        PROVIDE(__end_data_RAM4 = .) ;
        PROVIDE(__end_data_SRAM_DSP = .) ;
     } > SRAM_DSP AT>QSPI_FLASH

    /* DATA section for USB_RAM */

    .data_RAM5 : ALIGN(4)
    {
        FILL(0xff)
        PROVIDE(__start_data_RAM5 = .) ;
        PROVIDE(__start_data_USB_RAM = .) ;
        *(.ramfunc.$RAM5)
        *(.ramfunc.$USB_RAM)
        *(.data.$RAM5)
        *(.data.$USB_RAM)
        *(.data.$RAM5.*)
        *(.data.$USB_RAM.*)
        . = ALIGN(4) ;
        PROVIDE(__end_data_RAM5 = .) ;
        PROVIDE(__end_data_USB_RAM = .) ;
     } > USB_RAM AT>QSPI_FLASH

    /* MAIN DATA SECTION */
    .uninit_RESERVED (NOLOAD) : ALIGN(4)
    {
        _start_uninit_RESERVED = .;
        KEEP(*(.bss.$RESERVED*))
       . = ALIGN(4) ;
        _end_uninit_RESERVED = .;
    } > SRAM AT> SRAM

    /* Main DATA section (SRAM) */
    .data : ALIGN(4)
    {
       FILL(0xff)
       _data = . ;
       PROVIDE(__start_data_RAM = .) ;
       PROVIDE(__start_data_SRAM = .) ;
       *(vtable)
       *(.ramfunc*)
       KEEP(*(CodeQuickAccess))
       KEEP(*(DataQuickAccess))
       *(RamFunction)
       *(.data*)
       . = ALIGN(4) ;
       _edata = . ;
       PROVIDE(__end_data_RAM = .) ;
       PROVIDE(__end_data_SRAM = .) ;
    } > SRAM AT>QSPI_FLASH

    /* BSS section for SRAM_ROM */
    .bss_RAM2 : ALIGN(4)
    {
       PROVIDE(__start_bss_RAM2 = .) ;
       PROVIDE(__start_bss_SRAM_ROM = .) ;
       *(.bss.$RAM2)
       *(.bss.$SRAM_ROM)
       *(.bss.$RAM2.*)
       *(.bss.$SRAM_ROM.*)
       . = ALIGN (. != 0 ? 4 : 1) ; /* avoid empty segment */
       PROVIDE(__end_bss_RAM2 = .) ;
       PROVIDE(__end_bss_SRAM_ROM = .) ;
    } > SRAM_ROM AT> SRAM_ROM

    /* BSS section for SRAM_SHARED */
    .bss_RAM3 : ALIGN(4)
    {
       PROVIDE(__start_bss_RAM3 = .) ;
       PROVIDE(__start_bss_SRAM_SHARED = .) ;
       *(.bss.$RAM3)
       *(.bss.$SRAM_SHARED)
       *(.bss.$RAM3.*)
       *(.bss.$SRAM_SHARED.*)
       . = ALIGN (. != 0 ? 4 : 1) ; /* avoid empty segment */
       PROVIDE(__end_bss_RAM3 = .) ;
       PROVIDE(__end_bss_SRAM_SHARED = .) ;
    } > SRAM_SHARED AT> SRAM_SHARED

    /* BSS section for SRAM_DSP */
    .bss_RAM4 : ALIGN(4)
    {
       PROVIDE(__start_bss_RAM4 = .) ;
       PROVIDE(__start_bss_SRAM_DSP = .) ;
       *(.bss.$RAM4)
       *(.bss.$SRAM_DSP)
       *(.bss.$RAM4.*)
       *(.bss.$SRAM_DSP.*)
       . = ALIGN (. != 0 ? 4 : 1) ; /* avoid empty segment */
       PROVIDE(__end_bss_RAM4 = .) ;
       PROVIDE(__end_bss_SRAM_DSP = .) ;
    } > SRAM_DSP AT> SRAM_DSP

    /* BSS section for USB_RAM */
    .bss_RAM5 : ALIGN(4)
    {
       PROVIDE(__start_bss_RAM5 = .) ;
       PROVIDE(__start_bss_USB_RAM = .) ;
       *(.bss.$RAM5)
       *(.bss.$USB_RAM)
       *(.bss.$RAM5.*)
       *(.bss.$USB_RAM.*)
       . = ALIGN (. != 0 ? 4 : 1) ; /* avoid empty segment */
       PROVIDE(__end_bss_RAM5 = .) ;
       PROVIDE(__end_bss_USB_RAM = .) ;
    } > USB_RAM AT> USB_RAM

    /* MAIN BSS SECTION */
    .bss : ALIGN(4)
    {
        _bss = .;
        PROVIDE(__start_bss_RAM = .) ;
        PROVIDE(__start_bss_SRAM = .) ;
        *(.bss*)
        *(COMMON)
        . = ALIGN(4) ;
        _ebss = .;
        PROVIDE(__end_bss_RAM = .) ;
        PROVIDE(__end_bss_SRAM = .) ;
        PROVIDE(end = .);
    } > SRAM AT> SRAM

    /* NOINIT section for SRAM_ROM */
    .noinit_RAM2 (NOLOAD) : ALIGN(4)
    {
       PROVIDE(__start_noinit_RAM2 = .) ;
       PROVIDE(__start_noinit_SRAM_ROM = .) ;
       *(.noinit.$RAM2)
       *(.noinit.$SRAM_ROM)
       *(.noinit.$RAM2.*)
       *(.noinit.$SRAM_ROM.*)
       . = ALIGN(4) ;
       PROVIDE(__end_noinit_RAM2 = .) ;
       PROVIDE(__end_noinit_SRAM_ROM = .) ;
    } > SRAM_ROM AT> SRAM_ROM

    /* NOINIT section for SRAM_SHARED */
    .noinit_RAM3 (NOLOAD) : ALIGN(4)
    {
       PROVIDE(__start_noinit_RAM3 = .) ;
       PROVIDE(__start_noinit_SRAM_SHARED = .) ;
       *(.noinit.$RAM3)
       *(.noinit.$SRAM_SHARED)
       *(.noinit.$RAM3.*)
       *(.noinit.$SRAM_SHARED.*)
       . = ALIGN(4) ;
       PROVIDE(__end_noinit_RAM3 = .) ;
       PROVIDE(__end_noinit_SRAM_SHARED = .) ;
    } > SRAM_SHARED AT> SRAM_SHARED

    /* NOINIT section for SRAM_DSP */
    .noinit_RAM4 (NOLOAD) : ALIGN(4)
    {
       PROVIDE(__start_noinit_RAM4 = .) ;
       PROVIDE(__start_noinit_SRAM_DSP = .) ;
       *(.noinit.$RAM4)
       *(.noinit.$SRAM_DSP)
       *(.noinit.$RAM4.*)
       *(.noinit.$SRAM_DSP.*)
       . = ALIGN(4) ;
       PROVIDE(__end_noinit_RAM4 = .) ;
       PROVIDE(__end_noinit_SRAM_DSP = .) ;
    } > SRAM_DSP AT> SRAM_DSP

    /* NOINIT section for USB_RAM */
    .noinit_RAM5 (NOLOAD) : ALIGN(4)
    {
       PROVIDE(__start_noinit_RAM5 = .) ;
       PROVIDE(__start_noinit_USB_RAM = .) ;
       *(.noinit.$RAM5)
       *(.noinit.$USB_RAM)
       *(.noinit.$RAM5.*)
       *(.noinit.$USB_RAM.*)
       . = ALIGN(4) ;
       PROVIDE(__end_noinit_RAM5 = .) ;
       PROVIDE(__end_noinit_USB_RAM = .) ;
    } > USB_RAM AT> USB_RAM

    /* DEFAULT NOINIT SECTION */
    .noinit (NOLOAD): ALIGN(4)
    {
        _noinit = .;
        PROVIDE(__start_noinit_RAM = .) ;
        PROVIDE(__start_noinit_SRAM = .) ;
        *(.noinit*)
         . = ALIGN(4) ;
        _end_noinit = .;
       PROVIDE(__end_noinit_RAM = .) ;
       PROVIDE(__end_noinit_SRAM = .) ;        
    } > SRAM AT> SRAM

    /* Reserve and place Heap within memory map */
    _HeapSize = 0x1000;
    .heap :  ALIGN(4)
    {
        _pvHeapStart = .;
        . += _HeapSize;
        . = ALIGN(4);
        _pvHeapLimit = .;
    } > SRAM

     _StackSize = 0x1000;
     /* Reserve space in memory for Stack */
    .heap2stackfill  :
    {
        . += _StackSize;
    } > SRAM
    /* Locate actual Stack in memory map */
    .stack ORIGIN(SRAM) + LENGTH(SRAM) - _StackSize - 0:  ALIGN(4)
    {
        _vStackBase = .;
        . = ALIGN(4);
        _vStackTop = . + _StackSize;
    } > SRAM

    /* Provide basic symbols giving location and size of main text
     * block, including initial values of RW data sections. Note that
     * these will need extending to give a complete picture with
     * complex images (e.g multiple Flash banks).
     */
    _image_start = LOADADDR(.text);
    _image_end = LOADADDR(.data) + SIZEOF(.data);
    _image_size = _image_end - _image_start;

    /* Provide symbols for MIMXRT600 parts for startup code to use
     * to set image to be plain load image or XIP.
     * Config : Plain load image = false
     */
    __imghdr_loadaddress = LOADADDR(.text);
    __imghdr_imagetype = 4;
}