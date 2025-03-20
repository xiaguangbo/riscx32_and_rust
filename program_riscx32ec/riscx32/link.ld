MEMORY
{
    rom : ORIGIN = 0x00000000, LENGTH = 1K
    ram : ORIGIN = 0x00000400, LENGTH = 1K
}

SECTIONS
{
    .text :
    {
        *(.init*)
        *(.text*)
    } > rom

    .stack :
    {
        . = ORIGIN(ram) + LENGTH(ram);
        _stack_top = .;
    } > ram
}
