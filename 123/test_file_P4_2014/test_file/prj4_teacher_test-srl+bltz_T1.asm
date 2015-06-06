    .data
array: .word  0 : 10                # "array" of 10 words
cnt: .word  0                       # counter of loop
      
    .text
    move   $v0, $0					# $v0 is the base of array
    ori    $sp, $v0, 0x80           # set the start address of stack
    
    # write some data to array
    ori		$v1, $0, 40			   # $v1 is the base of cnt
    move    $s0, $v1	           # $s0 point to the base address of array
    ori     $s1, $s1, 11
    subu	$s1, $0, $s1
    sw      $s1, 0($s0)             

    jal     pow2
    
Main_Finish:
    beq 	$0, $0, Main_Finish
    
# initialize the array with 1, 2, ..., 1024
pow2 :
	ori		$t4, $0, 16
    subu   	$sp, $sp, $t4           # alloc 4 words from stack
    sw	    $ra, 0($sp)				# push
	sw		$a0, 4($sp)
	sw		$s0, 8($sp)
	
	move    $s0, $v1
    lw      $a0, 0($s0)
    move    $s0, $v0		    	
	ori     $t0, $0, 40
	addu	$s0, $s0, $t0			# $s0: point to the end address of array
	
    ori     $t0, $0, 1024           # $t0 = 1024
    ori     $t1, $0, 0xAABB		    # $t1 = 0xAABB0000
    ori     $t2, $0, 1              # $t2 = 1
	ori     $t3, $0, 4				# $t3 = 4
	
Loop:
    sw		$t0, 0($s0)				# store power into Memory
    subu	$s0, $s0, $t3
    srl     $t0, $t0, 1				# logic right shift $t0
    addu	$a0, $a0, $t2			# $a0++
    bltz    $a0, Loop       		# if ($a0<0) then Loop
    
	lw      $s0, 8($sp)				# pop
	lw      $a0, 4($sp)
    lw      $ra, 0($sp)            	
    addu    $sp, $sp, $t4           # restore stack
    jr      $ra
