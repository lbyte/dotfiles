Vim�UnDo� �:�&��1��h�������eA�w�y�'u      4perf record -F 599 -p `pgrep -n node` -g -- sleep 10      4      %       %   %   %    W�f-   	 _�                           ����                                                                                                                                                                                                                                                                                                                                                             Wh��     �               4perf record -F 199 -p `pgrep -n node` -g -- sleep 205�_�                       4    ����                                                                                                                                                                                                                                                                                                                                                             Wh��    �               4perf record -F 599 -p `pgrep -n node` -g -- sleep 205�_�                        �    ����                                                                                                                                                                                                                                                                                                                                                             Wh�     �               �perf script | egrep -v "( __libc_start| LazyCompile | v8::internal::| Builtin:| Stub:| LoadIC:|\[unknown\]| LoadPolymorphicIC:)" | sed 's/ LazyCompile:[*~]\?/ /' | ./FlameGraph/stackcollapse-perf.pl > graph/out.perf-folded5�_�      !                      ����                                                                                                                                                                                                                                                                                                                                                             Wh�-     �               echo ">>after 5�_�       "           !          ����                                                                                                                                                                                                                                                                                                                                                             Wh�/    �               echo ">> after 5�_�   !   #           "      4    ����                                                                                                                                                                                                                                                                                                                                                             Wh�J     �               4perf record -F 599 -p `pgrep -n node` -g -- sleep 105�_�   "   $           #          ����                                                                                                                                                                                                                                                                                                                                                             Wh�M    �               3perf record -F 599 -p `pgrep -n node` -g -- sleep 55�_�   #   %           $      3    ����                                                                                                                                                                                                                                                                                                                                                             W�f(     �               3perf record -F 999 -p `pgrep -n node` -g -- sleep 55�_�   $               %          ����                                                                                                                                                                                                                                                                                                                                                             W�f,   	 �               4perf record -F 999 -p `pgrep -n node` -g -- sleep 105�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Wg��    �               �perf script -f | egrep -v "( __libc_start| LazyCompile | v8::internal::| Builtin:| Stub:| LoadIC:|\[unknown\]| LoadPolymorphicIC:)" | sed 's/ LazyCompile:[*~]\?/ /' | ./FlameGraph/stackcollapse-perf.pl > graph/out.perf-folded5�_�                       (    ����                                                                                                                                                                                                                                                                                                                                                             Wf:�     �               (sudo sysctl kernel.perf_event_paranoid=05�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Wf:�     �                    "sudo sysctl kernel.kptr_restrict=05�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Wf:�     �                #needed 5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Wf:�     �                	# needed 5�_�                       	    ����                                                                                                                                                                                                                                                                                                                                                             Wf;�     �                # needed for perf5�_�                       (    ����                                                                                                                                                                                                                                                                                                                                                             Wf;�     �               (sudo sysctl kernel.perf_event_paranoid=0   #5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Wf;�     �                   #5�_�      
                     ����                                                                                                                                                                                                                                                                                                                                                             Wf;�     �         	      # 5�_�         	       
      3    ����                                                                                                                                                                                                                                                                                                                                                             Wf;�     �         	       5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                             Wf;�     �         
      7# sample the node process 199 times in a second (199hz)5�_�                       5    ����                                                                                                                                                                                                                                                                                                                                                             Wf<     �         
      7# sample the node process 199 times in a second (199Hz)5�_�                       7    ����                                                                                                                                                                                                                                                                                                                                                             Wf<     �         
      F# sample the node process 199 times in a second (199Hz) for 20 seconds5�_�                       �    ����                                                                                                                                                                                                                                                                                                                                                             Wf<�     �      	   
      �perf script | egrep -v "( __libc_start| LazyCompile | v8::internal::| Builtin:| Stub:| LoadIC:|\[unknown\]| LoadPolymorphicIC:)" | sed 's/ LazyCompile:[*~]\?/ /' | ./FlameGraph/stackcollapse-perf.pl > graph/out.perf-folded5�_�                       �    ����                                                                                                                                                                                                                                                                                                                                                             Wf<�     �      	   
      �perf script | egrep -v "( __libc_start| LazyCompile | v8::internal::| Builtin:| Stub:| LoadIC:|\[unknown\]| LoadPolymorphicIC:)" | sed 's/ LazyCompile:[*~]\?/ /' | ./FlameGraph/stackcollapse-perf.pl >out.perf-folded5�_�                       �    ����                                                                                                                                                                                                                                                                                                                                                             Wf<�     �      	   
      �perf script | egrep -v "( __libc_start| LazyCompile | v8::internal::| Builtin:| Stub:| LoadIC:|\[unknown\]| LoadPolymorphicIC:)" | sed 's/ LazyCompile:[*~]\?/ /' | ./FlameGraph/stackcollapse-perf.pl > out.perf-folded5�_�                   	   A    ����                                                                                                                                                                                                                                                                                                                                                             Wf<�     �      
   
      J./FlameGraph/flamegraph.pl --colors=js < graph/out.perf-folded > graph.svg5�_�                    	   )    ����                                                                                                                                                                                                                                                                                                                                                             Wf<�     �      
   
      D./FlameGraph/flamegraph.pl --colors=js < out.perf-folded > graph.svg5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Wf=G     �          
          # needed for perf5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             Wf=I     �                # Before executing this 5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Wf=b     �                # Before you executing this 5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Wf=e     �                # Before you execute this 5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             Wf=i     �                E# Before you execute this script you should run you node application 5�_�                       3    ����                                                                                                                                                                                                                                                                                                                                                             Wf=�     �                F# Before you execute this script you should run your node application 5�_�                        F    ����                                                                                                                                                                                                                                                                                                                                                             Wf=�    �                J# Before you execute this script you should run your node application with   # "node --perf-basic-prof"    5�_�                   	   A    ����                                                                                                                                                                                                                                                                                                                                                             Wf<�     �      
   
      Q./FlameGraph/flamegraph.pl --colors=js < graph/out.perf-folded >  graph/graph.svg5�_�                     	   A    ����                                                                                                                                                                                                                                                                                                                                                             Wf<�     �      
   
      R./FlameGraph/flamegraph.pl --colors=js < graph/out.perf-folded >   graph/graph.svg5�_�              
   	      4    ����                                                                                                                                                                                                                                                                                                                                                             Wf;�     �         	      4perf record -F 199 -p `pgrep -n node` -g -- sleep 20�         	     perf record -F 199 -p `pgrep -n node` -g -- sleep 20perf script | egrep -v "( __libc_start| LazyCompile | v8::internal::| Builtin:| Stub:| LoadIC:|\[unknown\]| LoadPolymorphicIC:)" | sed 's/ LazyCompile:[*~]\?/ /' | ./FlameGraph/stackcollapse-perf.pl > graph/out.perf-folded5��