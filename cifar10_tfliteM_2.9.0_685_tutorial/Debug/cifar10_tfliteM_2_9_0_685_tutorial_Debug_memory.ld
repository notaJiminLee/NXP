/*
 * GENERATED FILE - DO NOT EDIT
 * Copyright (c) 2008-2013 Code Red Technologies Ltd,
 * Copyright 2015, 2018-2019 NXP
 * (c) NXP Semiconductors 2013-2021
 * Generated linker script file for MIMXRT685S
 * Created from memory.ldt by FMCreateLinkMemory
 * Using Freemarker v2.3.30
 * MCUXpresso IDE v11.3.0 [Build 5222] [2021-01-11] on 2021. 3. 25 ¿ÀÈÄ 5:56:30
 */

MEMORY
{
  /* Define each memory region */
  QSPI_FLASH (rx) : ORIGIN = 0x8000000, LENGTH = 0x800000 /* 8M bytes (alias Flash) */  
  SRAM (rwx) : ORIGIN = 0x80000, LENGTH = 0x180000 /* 1536K bytes (alias RAM) */  
  SRAM_ROM (rwx) : ORIGIN = 0x0, LENGTH = 0x20000 /* 128K bytes (alias RAM2) */  
  SRAM_SHARED (rwx) : ORIGIN = 0x20000, LENGTH = 0x60000 /* 384K bytes (alias RAM3) */  
  SRAM_DSP (rwx) : ORIGIN = 0x200000, LENGTH = 0x280000 /* 2560K bytes (alias RAM4) */  
  USB_RAM (rwx) : ORIGIN = 0x40140000, LENGTH = 0x4000 /* 16K bytes (alias RAM5) */  
}

  /* Define a symbol for the top of each memory region */
  __base_QSPI_FLASH = 0x8000000  ; /* QSPI_FLASH */  
  __base_Flash = 0x8000000 ; /* Flash */  
  __top_QSPI_FLASH = 0x8000000 + 0x800000 ; /* 8M bytes */  
  __top_Flash = 0x8000000 + 0x800000 ; /* 8M bytes */  
  __base_SRAM = 0x80000  ; /* SRAM */  
  __base_RAM = 0x80000 ; /* RAM */  
  __top_SRAM = 0x80000 + 0x180000 ; /* 1536K bytes */  
  __top_RAM = 0x80000 + 0x180000 ; /* 1536K bytes */  
  __base_SRAM_ROM = 0x0  ; /* SRAM_ROM */  
  __base_RAM2 = 0x0 ; /* RAM2 */  
  __top_SRAM_ROM = 0x0 + 0x20000 ; /* 128K bytes */  
  __top_RAM2 = 0x0 + 0x20000 ; /* 128K bytes */  
  __base_SRAM_SHARED = 0x20000  ; /* SRAM_SHARED */  
  __base_RAM3 = 0x20000 ; /* RAM3 */  
  __top_SRAM_SHARED = 0x20000 + 0x60000 ; /* 384K bytes */  
  __top_RAM3 = 0x20000 + 0x60000 ; /* 384K bytes */  
  __base_SRAM_DSP = 0x200000  ; /* SRAM_DSP */  
  __base_RAM4 = 0x200000 ; /* RAM4 */  
  __top_SRAM_DSP = 0x200000 + 0x280000 ; /* 2560K bytes */  
  __top_RAM4 = 0x200000 + 0x280000 ; /* 2560K bytes */  
  __base_USB_RAM = 0x40140000  ; /* USB_RAM */  
  __base_RAM5 = 0x40140000 ; /* RAM5 */  
  __top_USB_RAM = 0x40140000 + 0x4000 ; /* 16K bytes */  
  __top_RAM5 = 0x40140000 + 0x4000 ; /* 16K bytes */  
