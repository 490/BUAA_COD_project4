ori $0,$0,0		#$0=0
ori $1,$0,1		#$1=1
ori $2,$0,2		#$2=2
ori $3,$0,3		#$3=3
ori $4,$0,4		#$4=4
ori $5,$0,5		#$5=5
sw $0,0x00000000     	#$0�����һ���ڴ�
sw $1,0x00000020     	#$1�����һ���ڴ�
sw $2,0x00000040     	#$2�����һ���ڴ�
sw $3,0x00000080     	#$3�����һ���ڴ�
sw $4,0x000000a0     	#$4�����һ���ڴ�
sw $5,0x000000c0     	#$5�����һ���ڴ�
lw $6,0x00000000     	#ȡ���ڴ��е�����$6=0
lw $7,0x00000020     	#ȡ���ڴ��е�����$7=1
lw $8,0x00000040     	#ȡ���ڴ��е�����$8=2
lw $9,0x00000080     	#ȡ���ڴ��е�����$9=3
lw $10,0x000000a0     	#ȡ���ڴ��е�����$10=4
lw $11,0x000000c0     	#ȡ���ڴ��е�����$11=5
lui $6,1			#��1���ص�$6�ĸ�λ
lui $7,2			#��1���ص�$7�ĸ�λ
	beq 	$5,$11,go1		#$5=$0��ת�Ƶ�go1
	addu 	$12,$1,$2		#$12=1+2=3,beqָ����ȷ��ִ��
go1:	addu	$12,$1,$3		#$12=1+3=4
	beq	$5,$1,go2		#$5!=$1,���Բ�Ӧ��ת
	subu 	$13,$10,$3		#$13=4-3=1
go2:	addu 	$14,$3,$9		#$14=3+3=6
	ori	$20,$0,6			#$20=6
	ori	$22,$0,3			#$22=3
	jal 	go3			#ת�Ƶ�go3
	addu 	$15,$3,$4		#$15=3+4=7
	j 	go4			#ת�Ƶ�go4
	ori 	$17,$0,2			#$17=2
go3:	addu 	$16,$3,$5		#$16=3+5=8
	jr 	$ra			#���ص�jal��ĵ�һ��ָ��
go4:	addu 	$17,$5,$11		#$17=5+5=10
go5:	subu 	$20,$20,$1		#$20=$20-1=5
	beq	$20,$3,go6		#$20=3,go6
	beq 	$22,$3,go7		#$22=3,then go7
go7:	beq 	$11,$20,go5		#$11==$20ʱ��ת�Ƶ�go5,then,$20=4
	j 	go5			#��ת��go5��then $20=3
go8:	addu	$23,$1,$1		#$23=2
	jr	$ra			#���ص�jal��ĵ�һ��ָ��
go6:	jal 	go8			#��ת��go5��then $20=2
	addu	$21,$20,$1		#$21=2+1=3

