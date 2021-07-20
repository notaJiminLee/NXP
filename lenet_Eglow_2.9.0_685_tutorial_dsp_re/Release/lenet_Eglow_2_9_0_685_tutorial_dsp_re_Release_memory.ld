/*
 * GENERATED FILE - DO NOT EDIT
 * Copyright (c) 2008-2013 Code Red Technologies Ltd,
 * Copyright 2015, 2018-2019 NXP
 * (c) NXP Semiconductors 2013-2021
 * Generated linker script file for MIMXRT685S
 * Created from memory.ldt by FMCreateLinkMemory
 * Using Freemarker v2.3.30
 * MCUXpresso IDE v11.3.0 [Build 5222] [2021-01-11] on 2021. 3. 15 ¿ÀÈÄ 9:46:39
 */

MEMORY
{
  /* Define each memory region */
  QSPI_FLASH (rx) : ORIGIN = 0x8000000, LENGTH = 0x1000000 /* 16M bytes (alias Flash) */  
  SRAM (rwx) : ORIGIN = 0x10000, LENGTH = 0x2f0000 /* 3008K bytes (alias RAM) */  
  USB_RAM (rwx) : ORIGIN = 0x40140000, LENGTH = 0x4000 /* 16K bytes (alias RAM2) */  
}

  /* Define a symbol for the top of each memory region */
  __base_QSPI_FLASH = 0x8000000  ; /* QSPI_FLASH */  
  __base_Flash = 0x8000000 ; /* Flash */  
  __top_QSPI_FLASH = 0x8000000 + 0x1000000 ; /* 16M bytes */  
  __top_Flash = 0x8000000 + 0x1000000 ; /* 16M bytes */  
  __base_SRAM = 0x10000  ; /* SRAM */  
  __base_RAM = 0x10000 ; /* RAM */  
  __top_SRAM = 0x10000 + 0x2f0000 ; /* 3008K bytes */  
  __top_RAM = 0x10000 + 0x2f0000 ; /* 3008K bytes */  
  __base_USB_RAM = 0x40140000  ; /* USB_RAM */  
  __base_RAM2 = 0x40140000 ; /* RAM2 */  
  __top_USB_RAM = 0x40140000 + 0x4000 ; /* 16K bytes */  
  __top_RAM2 = 0x40140000 + 0x4000 ; /* 16K bytes */  
