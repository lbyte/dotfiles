Vim�UnDo� y�D�NS�
)�{p��p�Mݜ8��HE�a   R   $    console.log('ApprovalDeskDone');   "         @       @   @   @    W��i    _�                     "   #    ����                                                                                                                                                                                                                                                                                                                                                             W��H     �   !   #   P      #    console.log("ApprovalDeskDone")5�_�                    B   !    ����                                                                                                                                                                                                                                                                                                                                                             W��Q     �   A   C   P      !	if(data['status'] == 'approved')5�_�                    C       ����                                                                                                                                                                                                                                                                                                                                                             W��R     �   B   E   P      		return true;5�_�                    E       ����                                                                                                                                                                                                                                                                                                                                                             W��U     �   D   F   Q      	else5�_�                    F       ����                                                                                                                                                                                                                                                                                                                                                             W��V     �   E   H   Q      		return false;5�_�                    H        ����                                                                                                                                                                                                                                                                                                                                                             W��Y     �   F   H   R          }    �   G   I   R       5�_�                    B       ����                                                                                                                                                                                                                                                                                                                                                             W��`     �   A   C   Q      "	if(data['status'] == 'approved'){5�_�      	              M       ����                                                                                                                                                                                                                                                                                                                                                             W��i     �   L   N   Q      !	if(data['status'] == 'rejected')5�_�      
           	   M       ����                                                                                                                                                                                                                                                                                                                                                             W��p     �   L   N   Q      	if(data.status == 'rejected')5�_�   	              
   N       ����                                                                                                                                                                                                                                                                                                                                                             W��q     �   M   P   Q      		return true;5�_�   
                 Q       ����                                                                                                                                                                                                                                                                                                                                                             W��z     �   P   R   R      		return false;5�_�                   Q       ����                                                                                                                                                                                                                                                                                                                            Q          Q          v       W���     �   P   T   R      		return false;�   Q   R   R    5�_�                    Q       ����                                                                                                                                                                                                                                                                                                                            Q          S          v       W���     �   O   Q   T      	else   {�   P   R   T      		{5�_�                    P       ����                                                                                                                                                                                                                                                                                                                            P          R          v       W���     �   N   P   S          }   else {�   O   Q   S      	else {5�_�                    Q       ����                                                                                                                                                                                                                                                                                                                            O          Q          v       W���     �   P   R   R      		}5�_�                    P       ����                                                                                                                                                                                                                                                                                                                            O          Q           V        W��     �   O   Q   R                  return false;5�_�                            ����                                                                                                                                                                                                                                                                                                                P          O          Q           V        W��    �                }; �                done(data); �                Eexports.onEndHandler = function(currentFlowObjectName, data, done) { �                 �   
             }; �   	             done(data); �      
          Gexports.onBeginHandler = function(currentFlowObjectName, data, done) { �      	           �                }; �                done(); �                7 exports.defaultErrorHandler = function(error, done) { �                }; �                done(); �                fexports.defaultEventHandler = function(eventType, currentFlowObjectName, handlerName, reason, done) { 5�_�                    L       ����                                                                                                                                                                                                                                                                                                                P          O          Q           V        W��$     �   K   M   R      	console.log("Rejected");�   L   M   R    5�_�                   A       ����                                                                                                                                                                                                                                                                                                                P          O          Q           V        W��7     �   @   B   R      	console.log("Approved");�   A   B   R    5�_�                   ;       ����                                                                                                                                                                                                                                                                                                                P          O          Q           V        W��A     �   :   <   R      $   console.log("Exclusive Gateway");�   ;   <   R    5�_�                    6       ����                                                                                                                                                                                                                                                                                                                P          O          Q           V        W��V     �   5   7   R          console.log("RejectDone");�   6   7   R    5�_�                     1       ����                                                                                                                                                                                                                                                                                                                P          O          Q           V        W��^     �   0   2   R          console.log("Reject");�   1   2   R    5�_�      !               ,       ����                                                                                                                                                                                                                                                                                                                P          O          Q           V        W��a     �   +   -   R           console.log("Publish Done");�   ,   -   R    5�_�       "           !   '       ����                                                                                                                                                                                                                                                                                                                P          O          Q           V        W��d     �   &   (   R          console.log("Publish");�   '   (   R    5�_�   !   #           "   "       ����                                                                                                                                                                                                                                                                                                                P          O          Q           V        W��f     �   !   #   R      $    console.log("ApprovalDeskDone");�   "   #   R    5�_�   "   $           #          ����                                                                                                                                                                                                                                                                                                                P          O          Q           V        W��n     �         R           console.log("ApprovalDesk");�         R    5�_�   #   %           $          ����                                                                                                                                                                                                                                                                                                                P          O          Q           V        W��q     �         R          console.log("End");�         R    5�_�   $   &           %          ����                                                                                                                                                                                                                                                                                                                P          O          Q           V        W��t    �         R      console.log("Start");�         R    5�_�   %   '           &           ����                                                                                                                                                                                                                                                                                                                          O          Q           V        W���     �         R      6 exports.defaultErrorHandler = function(error, done) {5�_�   &   (           '           ����                                                                                                                                                                                                                                                                                                                          O          Q           V        W���     �         R      done();5�_�   '   )           (           ����                                                                                                                                                                                                                                                                                                                          O          Q           V        W���     �         R      done();5�_�   (   *           )   
        ����                                                                                                                                                                                                                                                                                                                          O          Q           V        W���     �   	      R      done(data);5�_�   )   +           *           ����                                                                                                                                                                                                                                                                                                                          O          Q           V        W���     �         R      done(data);5�_�   *   ,           +           ����                                                                                                                                                                                                                                                                                                                                              V       W���     �         R      console.log('Start');   console.log(data);   done(data);5�_�   +   -           ,   7       ����                                                                                                                                                                                                                                                                                                                                              V       W���     �   6   8   R          done(data);5�_�   ,   .           -   7        ����                                                                                                                                                                                                                                                                                                                                              V       W���     �   6   8   R      done(data);5�_�   -   /           .   ;       ����                                                                                                                                                                                                                                                                                                                                              V       W���     �   :   <   R      $   console.log('Exclusive Gateway');5�_�   .   0           /   ;       ����                                                                                                                                                                                                                                                                                                                                              V       W���     �   :   <   R      (       console.log('Exclusive Gateway');5�_�   /   1           0   ;       ����                                                                                                                                                                                                                                                                                                                                              V       W���     �   :   <   R      $   console.log('Exclusive Gateway');5�_�   0   2           1   ;        ����                                                                                                                                                                                                                                                                                                                                              V       W���     �   :   <   R      !console.log('Exclusive Gateway');5�_�   1   3           2   <       ����                                                                                                                                                                                                                                                                                                                                              V       W���     �   ;   =   R         done(data);5�_�   2   4           3   <        ����                                                                                                                                                                                                                                                                                                                                              V       W���    �   ;   =   R      done(data);5�_�   3   5           4   A       ����                                                                                                                                                                                                                                                                                                                O                              V       W���     �   @   B   R      	console.log('Approved');5�_�   4   6           5   A        ����                                                                                                                                                                                                                                                                                                                O                              V       W���    �   @   B   R      console.log('Approved');5�_�   5   7           6   @        ����                                                                                                                                                                                                                                                                                                                A          @           G           V        W��     �   ?   H   R          console.log(data);       console.log('Approved');   	if(data.status == 'approved'){           return true;       }   	else{           return false;       }5�_�   6   8           7   @        ����                                                                                                                                                                                                                                                                                                                A          @           G           V        W��     �   ?   B   R      console.log(data);   console.log('Approved');5�_�   7   9           8   @        ����                                                                                                                                                                                                                                                                                                                A          @           G           V        W��    �   ?   H   R      console.log(data);   console.log('Approved');   if(data.status == 'approved'){       return true;   }   else{       return false;   }5�_�   8   :           9   K        ����                                                                                                                                                                                                                                                                                                                @          K          Q          V       W��     �   J   R   R          console.log(data);   	console.log('Rejected');   	if(data.status == 'rejected'){           return true;       } else {           return false;   	}5�_�   9   ;           :   K        ����                                                                                                                                                                                                                                                                                                                @          K           Q           V        W��     �   J   R   R      console.log(data);   console.log('Rejected');   if(data.status == 'rejected'){       return true;   } else {       return false;   }5�_�   :   >           ;          ����                                                                                                                                                                                                                                                                                                                K          K           Q           V        W��:     �         R      .exports.ApprovalDesk = function( data, done) {5�_�   ;   ?   =       >          ����                                                                                                                                                                                                                                                                                                                K          K           Q           V        W��_     �         R           console.log('ApprovalDesk');5�_�   >   @           ?   !       ����                                                                                                                                                                                                                                                                                                                K          K           Q           V        W��e     �       "   R      2exports.ApprovalDeskDone = function( data, done) {5�_�   ?               @   "       ����                                                                                                                                                                                                                                                                                                                K          K           Q           V        W��h    �   !   #   R      $    console.log('ApprovalDeskDone');5�_�   ;       <   >   =          ����                                                                                                                                                                                                                                                                                                                K          K           Q           V        W��Y     �         R      !    console.log(ApproveChangek');5�_�   ;           =   <          ����                                                                                                                                                                                                                                                                                                                K          K           Q           V        W��U     �         R      !    cApproveChangeApprovalDesk');5�_�                    ;       ����                                                                                                                                                                                                                                                                                                                P          O          Q           V        W��:     �   :   <   R         console.log("'");5�_�                   A       ����                                                                                                                                                                                                                                                                                                                P          O          Q           V        W��2     �   @   B   R      	console.log("'");5�_�                   A       ����                                                                                                                                                                                                                                                                                                                P          O          Q           V        W��+     �   @   B   R      console.log("Approved");5�_�                    A       ����                                                                                                                                                                                                                                                                                                                P          O          Q           V        W��'     �   @   B   R      console.log("Approved");5�_�                   Q       ����                                                                                                                                                                                                                                                                                                                            Q          Q          v       W���     �   P   R   R       5�_�                   Q       ����                                                                                                                                                                                                                                                                                                                            Q          S          v       W���     �   Q   R   R    �   P   R   R      		(               return false;   		)5�_�                   Q       ����                                                                                                                                                                                                                                                                                                                            Q          Q           V        W���     �   P   R   R      		eturn false;5�_�                   Q        ����                                                                                                                                                                                                                                                                                                                            Q           Q           V       W���     �   P   R   R      	return false;5�_�                    Q        ����                                                                                                                                                                                                                                                                                                                            Q           Q           V       W���     �   P   R   R              5��