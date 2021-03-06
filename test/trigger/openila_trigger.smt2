; SMT-LIBv2 description generated by Yosys 0.7+658 (git sha1 12440fcc, gcc 7.3.0-16ubuntu3 -fPIC -O2)
; yosys-smt2-module openila_trigger
(declare-sort |openila_trigger_s| 0)
(declare-fun |openila_trigger_is| (|openila_trigger_s|) Bool)
; yosys-smt2-register $formal$/home/luke/proj/openila/hdl/openila_trigger.v:62$4_CHECK 1
(declare-fun |openila_trigger#0| (|openila_trigger_s|) (_ BitVec 1)) ; $formal$/home/luke/proj/openila/hdl/openila_trigger.v:62$4_CHECK
(define-fun |openila_trigger_n $formal$/home/luke/proj/openila/hdl/openila_trigger.v:62$4_CHECK| ((state |openila_trigger_s|)) Bool (= ((_ extract 0 0) (|openila_trigger#0| state)) #b1))
; yosys-smt2-register $formal$/home/luke/proj/openila/hdl/openila_trigger.v:62$4_EN 1
(declare-fun |openila_trigger#1| (|openila_trigger_s|) (_ BitVec 1)) ; $formal$/home/luke/proj/openila/hdl/openila_trigger.v:62$4_EN
(define-fun |openila_trigger_n $formal$/home/luke/proj/openila/hdl/openila_trigger.v:62$4_EN| ((state |openila_trigger_s|)) Bool (= ((_ extract 0 0) (|openila_trigger#1| state)) #b1))
; yosys-smt2-register $formal$/home/luke/proj/openila/hdl/openila_trigger.v:65$5_CHECK 1
(declare-fun |openila_trigger#2| (|openila_trigger_s|) (_ BitVec 1)) ; $formal$/home/luke/proj/openila/hdl/openila_trigger.v:65$5_CHECK
(define-fun |openila_trigger_n $formal$/home/luke/proj/openila/hdl/openila_trigger.v:65$5_CHECK| ((state |openila_trigger_s|)) Bool (= ((_ extract 0 0) (|openila_trigger#2| state)) #b1))
; yosys-smt2-register $formal$/home/luke/proj/openila/hdl/openila_trigger.v:65$5_EN 1
(declare-fun |openila_trigger#3| (|openila_trigger_s|) (_ BitVec 1)) ; $formal$/home/luke/proj/openila/hdl/openila_trigger.v:65$5_EN
(define-fun |openila_trigger_n $formal$/home/luke/proj/openila/hdl/openila_trigger.v:65$5_EN| ((state |openila_trigger_s|)) Bool (= ((_ extract 0 0) (|openila_trigger#3| state)) #b1))
; yosys-smt2-register $past$/home/luke/proj/openila/hdl/openila_trigger.v:64$1$0 1
(declare-fun |openila_trigger#4| (|openila_trigger_s|) (_ BitVec 1)) ; $past$/home/luke/proj/openila/hdl/openila_trigger.v:64$1$0
(define-fun |openila_trigger_n $past$/home/luke/proj/openila/hdl/openila_trigger.v:64$1$0| ((state |openila_trigger_s|)) Bool (= ((_ extract 0 0) (|openila_trigger#4| state)) #b1))
; yosys-smt2-input clk 1
; yosys-smt2-wire clk 1
; yosys-smt2-clock clk posedge
(declare-fun |openila_trigger#5| (|openila_trigger_s|) Bool) ; \clk
(define-fun |openila_trigger_n clk| ((state |openila_trigger_s|)) Bool (|openila_trigger#5| state))
; yosys-smt2-wire match_stage1 1
(declare-fun |openila_trigger#6| (|openila_trigger_s|) (_ BitVec 8)) ; \stage1_val
(declare-fun |openila_trigger#7| (|openila_trigger_s|) (_ BitVec 8)) ; \sample
(define-fun |openila_trigger#8| ((state |openila_trigger_s|)) (_ BitVec 8) (bvxor (|openila_trigger#6| state) (|openila_trigger#7| state))) ; $xor$/home/luke/proj/openila/hdl/openila_trigger.v:28$6_Y
(declare-fun |openila_trigger#9| (|openila_trigger_s|) (_ BitVec 8)) ; \stage1_mask
(define-fun |openila_trigger#10| ((state |openila_trigger_s|)) (_ BitVec 8) (bvand (|openila_trigger#8| state) (|openila_trigger#9| state))) ; $and$/home/luke/proj/openila/hdl/openila_trigger.v:28$7_Y
(define-fun |openila_trigger#11| ((state |openila_trigger_s|)) Bool (not (or  (= ((_ extract 0 0) (|openila_trigger#10| state)) #b1) (= ((_ extract 1 1) (|openila_trigger#10| state)) #b1) (= ((_ extract 2 2) (|openila_trigger#10| state)) #b1) (= ((_ extract 3 3) (|openila_trigger#10| state)) #b1) (= ((_ extract 4 4) (|openila_trigger#10| state)) #b1) (= ((_ extract 5 5) (|openila_trigger#10| state)) #b1) (= ((_ extract 6 6) (|openila_trigger#10| state)) #b1) (= ((_ extract 7 7) (|openila_trigger#10| state)) #b1)))) ; \match_stage1
(define-fun |openila_trigger_n match_stage1| ((state |openila_trigger_s|)) Bool (|openila_trigger#11| state))
; yosys-smt2-wire match_stage2 1
(declare-fun |openila_trigger#12| (|openila_trigger_s|) (_ BitVec 8)) ; \stage2_val
(define-fun |openila_trigger#13| ((state |openila_trigger_s|)) (_ BitVec 8) (bvxor (|openila_trigger#12| state) (|openila_trigger#7| state))) ; $xor$/home/luke/proj/openila/hdl/openila_trigger.v:29$9_Y
(declare-fun |openila_trigger#14| (|openila_trigger_s|) (_ BitVec 8)) ; \stage2_mask
(define-fun |openila_trigger#15| ((state |openila_trigger_s|)) (_ BitVec 8) (bvand (|openila_trigger#13| state) (|openila_trigger#14| state))) ; $and$/home/luke/proj/openila/hdl/openila_trigger.v:29$10_Y
(define-fun |openila_trigger#16| ((state |openila_trigger_s|)) Bool (not (or  (= ((_ extract 0 0) (|openila_trigger#15| state)) #b1) (= ((_ extract 1 1) (|openila_trigger#15| state)) #b1) (= ((_ extract 2 2) (|openila_trigger#15| state)) #b1) (= ((_ extract 3 3) (|openila_trigger#15| state)) #b1) (= ((_ extract 4 4) (|openila_trigger#15| state)) #b1) (= ((_ extract 5 5) (|openila_trigger#15| state)) #b1) (= ((_ extract 6 6) (|openila_trigger#15| state)) #b1) (= ((_ extract 7 7) (|openila_trigger#15| state)) #b1)))) ; \match_stage2
(define-fun |openila_trigger_n match_stage2| ((state |openila_trigger_s|)) Bool (|openila_trigger#16| state))
; yosys-smt2-input rst_n 1
; yosys-smt2-wire rst_n 1
(declare-fun |openila_trigger#17| (|openila_trigger_s|) Bool) ; \rst_n
(define-fun |openila_trigger_n rst_n| ((state |openila_trigger_s|)) Bool (|openila_trigger#17| state))
; yosys-smt2-input sample 8
; yosys-smt2-wire sample 8
(define-fun |openila_trigger_n sample| ((state |openila_trigger_s|)) (_ BitVec 8) (|openila_trigger#7| state))
; yosys-smt2-register sm1_state 1
; yosys-smt2-wire sm1_state 1
(declare-fun |openila_trigger#18| (|openila_trigger_s|) (_ BitVec 1)) ; \sm1_state
(define-fun |openila_trigger_n sm1_state| ((state |openila_trigger_s|)) Bool (= ((_ extract 0 0) (|openila_trigger#18| state)) #b1))
; yosys-smt2-register sm2_state 1
; yosys-smt2-wire sm2_state 1
(declare-fun |openila_trigger#19| (|openila_trigger_s|) (_ BitVec 1)) ; \sm2_state
(define-fun |openila_trigger_n sm2_state| ((state |openila_trigger_s|)) Bool (= ((_ extract 0 0) (|openila_trigger#19| state)) #b1))
; yosys-smt2-input stage1_mask 8
; yosys-smt2-wire stage1_mask 8
(define-fun |openila_trigger_n stage1_mask| ((state |openila_trigger_s|)) (_ BitVec 8) (|openila_trigger#9| state))
; yosys-smt2-input stage1_val 8
; yosys-smt2-wire stage1_val 8
(define-fun |openila_trigger_n stage1_val| ((state |openila_trigger_s|)) (_ BitVec 8) (|openila_trigger#6| state))
; yosys-smt2-input stage2_mask 8
; yosys-smt2-wire stage2_mask 8
(define-fun |openila_trigger_n stage2_mask| ((state |openila_trigger_s|)) (_ BitVec 8) (|openila_trigger#14| state))
; yosys-smt2-input stage2_val 8
; yosys-smt2-wire stage2_val 8
(define-fun |openila_trigger_n stage2_val| ((state |openila_trigger_s|)) (_ BitVec 8) (|openila_trigger#12| state))
; yosys-smt2-output trigger 1
; yosys-smt2-wire trigger 1
(define-fun |openila_trigger#20| ((state |openila_trigger_s|)) Bool (or  (= ((_ extract 0 0) (|openila_trigger#18| state)) #b1) false  (= ((_ extract 0 0) (|openila_trigger#19| state)) #b1) false)) ; $logic_or$/home/luke/proj/openila/hdl/openila_trigger.v:35$12_Y
(define-fun |openila_trigger#21| ((state |openila_trigger_s|)) Bool (and (or  (|openila_trigger#16| state) false) (or  (|openila_trigger#20| state) false))) ; \trigger
(define-fun |openila_trigger_n trigger| ((state |openila_trigger_s|)) Bool (|openila_trigger#21| state))
; yosys-smt2-assert 0 /home/luke/proj/openila/hdl/openila_trigger.v:65
(define-fun |openila_trigger_a 0| ((state |openila_trigger_s|)) Bool (or (= ((_ extract 0 0) (|openila_trigger#2| state)) #b1) (not (= ((_ extract 0 0) (|openila_trigger#3| state)) #b1)))) ; $assert$/home/luke/proj/openila/hdl/openila_trigger.v:65$26
(define-fun |openila_trigger#22| ((state |openila_trigger_s|)) Bool (not (or  (|openila_trigger#17| state) false))) ; $0$formal$/home/luke/proj/openila/hdl/openila_trigger.v:59$2_CHECK[0:0]$28
(define-fun |openila_trigger#23| ((state |openila_trigger_s|)) Bool (|openila_trigger_is| state)) ; $0$formal$/home/luke/proj/openila/hdl/openila_trigger.v:59$2_EN[0:0]$29
; yosys-smt2-assume 0 /home/luke/proj/openila/hdl/openila_trigger.v:59
(define-fun |openila_trigger_u 0| ((state |openila_trigger_s|)) Bool (or (|openila_trigger#22| state) (not (|openila_trigger#23| state)))) ; $assume$/home/luke/proj/openila/hdl/openila_trigger.v:59$24
; yosys-smt2-assume 1 /home/luke/proj/openila/hdl/openila_trigger.v:62
(define-fun |openila_trigger_u 1| ((state |openila_trigger_s|)) Bool (or (= ((_ extract 0 0) (|openila_trigger#0| state)) #b1) (not (= ((_ extract 0 0) (|openila_trigger#1| state)) #b1)))) ; $assume$/home/luke/proj/openila/hdl/openila_trigger.v:62$25
(define-fun |openila_trigger#24| ((state |openila_trigger_s|)) Bool (and (or  (|openila_trigger#11| state) false) (or  (= ((_ extract 0 0) (|openila_trigger#18| state)) #b1) false))) ; $logic_and$/home/luke/proj/openila/hdl/openila_trigger.v:52$16_Y
(define-fun |openila_trigger#25| ((state |openila_trigger_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|openila_trigger#19| state)) #b1) #b0 (ite (|openila_trigger#24| state) #b1 #b0))) ; $0\sm2_state[0:0]
(define-fun |openila_trigger#26| ((state |openila_trigger_s|)) Bool (= (ite (|openila_trigger#17| state) #b1 #b0) #b0)) ; $techmap$procdff$53.$eq$/usr/local/bin/../share/yosys/adff2dff.v:16$58_Y
(define-fun |openila_trigger#27| ((state |openila_trigger_s|)) (_ BitVec 1) (ite (|openila_trigger#26| state) #b0 (|openila_trigger#25| state))) ; $procdff$53.NEXT_Q
(define-fun |openila_trigger#28| ((state |openila_trigger_s|)) (_ BitVec 1) (ite (= ((_ extract 0 0) (|openila_trigger#18| state)) #b1) #b0 (ite (|openila_trigger#11| state) #b1 #b0))) ; $0\sm1_state[0:0]
(define-fun |openila_trigger#29| ((state |openila_trigger_s|)) Bool (= (ite (|openila_trigger#17| state) #b1 #b0) #b0)) ; $techmap$procdff$52.$eq$/usr/local/bin/../share/yosys/adff2dff.v:16$58_Y
(define-fun |openila_trigger#30| ((state |openila_trigger_s|)) (_ BitVec 1) (ite (|openila_trigger#29| state) #b0 (|openila_trigger#28| state))) ; $procdff$52.NEXT_Q
(define-fun |openila_trigger#31| ((state |openila_trigger_s|)) Bool (and (or  (= ((_ extract 0 0) (|openila_trigger#4| state)) #b1) false) (or  (|openila_trigger#16| state) false))) ; $logic_and$/home/luke/proj/openila/hdl/openila_trigger.v:64$23_Y
(define-fun |openila_trigger#32| ((state |openila_trigger_s|)) (_ BitVec 1) (ite (|openila_trigger#31| state) #b1 #b0)) ; $0$formal$/home/luke/proj/openila/hdl/openila_trigger.v:65$5_EN[0:0]$22
(define-fun |openila_trigger_a| ((state |openila_trigger_s|)) Bool 
  (|openila_trigger_a 0| state)
)
(define-fun |openila_trigger_u| ((state |openila_trigger_s|)) Bool (and
  (|openila_trigger_u 0| state)
  (|openila_trigger_u 1| state)
))
(define-fun |openila_trigger_i| ((state |openila_trigger_s|)) Bool (and
  (= (= ((_ extract 0 0) (|openila_trigger#1| state)) #b1) false) ; $formal$/home/luke/proj/openila/hdl/openila_trigger.v:62$4_EN
  (= (= ((_ extract 0 0) (|openila_trigger#3| state)) #b1) false) ; $formal$/home/luke/proj/openila/hdl/openila_trigger.v:65$5_EN
))
(define-fun |openila_trigger_h| ((state |openila_trigger_s|)) Bool true)
(define-fun |openila_trigger_t| ((state |openila_trigger_s|) (next_state |openila_trigger_s|)) Bool (and
  (= (|openila_trigger#27| state) (|openila_trigger#19| next_state)) ; $techmap$procdff$53.$procdff$63 \sm2_state
  (= (|openila_trigger#30| state) (|openila_trigger#18| next_state)) ; $techmap$procdff$52.$procdff$63 \sm1_state
  (= (ite (|openila_trigger#11| state) #b1 #b0) (|openila_trigger#4| next_state)) ; $procdff$47 $past$/home/luke/proj/openila/hdl/openila_trigger.v:64$1$0
  (= (|openila_trigger#32| state) (|openila_trigger#3| next_state)) ; $procdff$51 $formal$/home/luke/proj/openila/hdl/openila_trigger.v:65$5_EN
  (= (ite (|openila_trigger#21| state) #b1 #b0) (|openila_trigger#2| next_state)) ; $procdff$50 $formal$/home/luke/proj/openila/hdl/openila_trigger.v:65$5_CHECK
  (= #b1 (|openila_trigger#1| next_state)) ; $procdff$49 $formal$/home/luke/proj/openila/hdl/openila_trigger.v:62$4_EN
  (= (ite (|openila_trigger#17| state) #b1 #b0) (|openila_trigger#0| next_state)) ; $procdff$48 $formal$/home/luke/proj/openila/hdl/openila_trigger.v:62$4_CHECK
)) ; end of module openila_trigger
; yosys-smt2-topmod openila_trigger
; end of yosys output
