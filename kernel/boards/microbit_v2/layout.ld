MEMORY
{
  # with bootloader
  # rom (rx)  : ORIGIN = 0x00008000, LENGTH = 224K
  # without bootloader
  rom (rx)  : ORIGIN = 0x00000000, LENGTH = 256K
  prog (rx) : ORIGIN = 0x00040000, LENGTH = 256K
  ram (rwx) : ORIGIN = 0x20000000, LENGTH = 128K
}

MPU_MIN_ALIGN = 8K;
PAGE_SIZE = 4K;

INCLUDE ../../../tock/boards/kernel_layout.ld
