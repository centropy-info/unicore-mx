/* lengths from d046_efm32gg990_datasheet.pdf table 1.1, offset from
 * d0034_efm32tg_reference_manual.pdf figure 5.2.
 *
 * the origins and memory structure are constant over all giantgeckos, but the
 * MEMORY section requires the use of constants, and has thus to be duplicated
 * over the chip variants.
 * */

MEMORY
{
	rom (rx) : ORIGIN = 0, LENGTH = 1024k
	ram (rwx) : ORIGIN = 0x20000000, LENGTH = 128k
}

INCLUDE ucmx_efm32gg.ld;
