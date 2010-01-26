!> \file
!> $Id$
!> \author Chris Bradley
!> \brief This module handles all distributed matrix vector IO routines.
!>
!> \section LICENSE
!>
!> Version: MPL 1.1/GPL 2.0/LGPL 2.1
!>
!> The contents of this file are subject to the Mozilla Public License
!> Version 1.1 (the "License"); you may not use this file except in
!> compliance with the License. You may obtain a copy of the License at
!> http://www.mozilla.org/MPL/
!>
!> Software distributed under the License is distributed on an "AS IS"
!> basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See the
!> License for the specific language governing rights and limitations
!> under the License.
!>
!> The Original Code is openCMISS
!>
!> The Initial Developer of the Original Code is University of Auckland,
!> Auckland, New Zealand and University of Oxford, Oxford, United
!> Kingdom. Portions created by the University of Auckland and University
!> of Oxford are Copyright (C) 2007 by the University of Auckland and
!> the University of Oxford. All Rights Reserved.
!>
!> Contributor(s):
!>
!> Alternatively, the contents of this file may be used under the terms of
!> either the GNU General Public License Version 2 or later (the "GPL"), or
!> the GNU Lesser General Public License Version 2.1 or later (the "LGPL"),
!> in which case the provisions of the GPL or the LGPL are applicable instead
!> of those above. If you wish to allow use of your version of this file only
!> under the terms of either the GPL or the LGPL, and not to allow others to
!> use your version of this file under the terms of the MPL, indicate your
!> decision by deleting the provisions above and replace them with the notice
!> and other provisions required by the GPL or the LGPL. If you do not delete
!> the provisions above, a recipient may use your version of this file under
!> the terms of any one of the MPL, the GPL or the LGPL.
!>

!> This module handles all distributed_matrix_vector_IO.
MODULE DISTRIUBTED_MATRIX_VECTOR_IO
  
  USE BASE_ROUTINES
  USE ISO_VARYING_STRING
  USE KINDS
  USE STRINGS
  USE TYPES
  
  IMPLICIT NONE
  
  PRIVATE
  
  !Module types

  !Module variables
  
  !Interfaces

  PUBLIC DISTRIBUTED_MATRIX_VECTOR_IO_CLOSE,DISTRIBUTED_MATRIX_VECTOR_IO_OPEN,DISTRIBUTED_VECTOR_IO_READ,DISTRIBUTED_VECTOR_IO_WRITE
  
CONTAINS
  
  !
  !================================================================================================================================
  !
  
  !>Closes a distributed matrix vector IO file. 
  SUBROUTINE DISTRIBUTED_MATRIX_VECTOR_IO_CLOSE(ERR,ERROR,*)
    
    !Argument variables
    INTEGER(INTG), INTENT(OUT) :: ERR !<The error code
    TYPE(VARYING_STRING), INTENT(OUT) :: ERROR !<The error string
    !Local Variables
    
    CALL ENTERS("DISTRIBUTED_MATRIX_VECTOR_IO_CLOSE",ERR,ERROR,*999)
    
     
    CALL EXITS("DISTRIBUTED_MATRIX_VECTOR_IO_CLOSE")
    RETURN
999 CALL ERRORS("DISTRIBUTED_MATRIX_VECTOR_IO_CLOSE",ERR,ERROR)
    CALL EXITS("DISTRIBUTED_MATRIX_VECTOR_IO_CLOSE")
    RETURN 1
  END SUBROUTINE DISTRIBUTED_MATRIX_VECTOR_IO_CLOSE

  !
  !================================================================================================================================
  !
  
  !>Opens a distributed matrix vector IO file. 
  SUBROUTINE DISTRIBUTED_MATRIX_VECTOR_IO_OPEN(ERR,ERROR,*)
    
    !Argument variables
    INTEGER(INTG), INTENT(OUT) :: ERR !<The error code
    TYPE(VARYING_STRING), INTENT(OUT) :: ERROR !<The error string
    !Local Variables
    
    CALL ENTERS("DISTRIBUTED_MATRIX_VECTOR_IO_OPEN",ERR,ERROR,*999)
    
     
    CALL EXITS("DISTRIBUTED_MATRIX_VECTOR_IO_OPEN")
    RETURN
999 CALL ERRORS("DISTRIBUTED_MATRIX_VECTOR_IO_OPEN",ERR,ERROR)
    CALL EXITS("DISTRIBUTED_MATRIX_VECTOR_IO_OPEN")
    RETURN 1
  END SUBROUTINE DISTRIBUTED_MATRIX_VECTOR_IO_OPEN

  !
  !================================================================================================================================
  !
  
  !>Reads a distributed vector from a file file. 
  SUBROUTINE DISTRIBUTED_VECTOR_IO_READ(FILE,OFFSET,DISTRIBUTED_VECTOR,ERR,ERROR,*)
    
    !Argument variables
    INTEGER(INTG), INTENT(IN) :: FILE !<Should be pointer to file object
    INTEGER(INTG), INTENT(INOUT) :: OFFSET !Should be large integer
    TYPE(DISTRIBUTED_VECTOR_TYPE), POINTER :: DISTRIBUTED_VECTOR !<On exit, a pointer to the distributed vector read. Should not be associated on entry.
    INTEGER(INTG), INTENT(OUT) :: ERR !<The error code
    TYPE(VARYING_STRING), INTENT(OUT) :: ERROR !<The error string
    !Local Variables
    
    CALL ENTERS("DISTRIBUTED_VECTOR_IO_READ",ERR,ERROR,*999)
    
     
    CALL EXITS("DISTRIBUTED_VECTOR_IO_READ")
    RETURN
999 CALL ERRORS("DISTRIBUTED_VECTOR_IO_READ",ERR,ERROR)
    CALL EXITS("DISTRIBUTED_VECTOR_IO_READ")
    RETURN 1
  END SUBROUTINE DISTRIBUTED_VECTOR_IO_READ
  
  !
  !================================================================================================================================
  !
  
  !>Reads a distributed vector from a file file. 
  SUBROUTINE DISTRIBUTED_VECTOR_IO_WRITE(FILE,OFFSET,DISTRIBUTED_VECTOR,ERR,ERROR,*)
    
    !Argument variables
    INTEGER(INTG), INTENT(IN) :: FILE !<Should be pointer to file object
    INTEGER(INTG), INTENT(INOUT) :: OFFSET !Should be large integer
    TYPE(DISTRIBUTED_VECTOR_TYPE), POINTER :: DISTRIBUTED_VECTOR !<A pointer to the distributed vector to write
    INTEGER(INTG), INTENT(OUT) :: ERR !<The error code
    TYPE(VARYING_STRING), INTENT(OUT) :: ERROR !<The error string
    !Local Variables
    
    CALL ENTERS("DISTRIBUTED_VECTOR_IO_WRITE",ERR,ERROR,*999)

    IF(ASSOCIATED(DISTRIBUTED_VECTOR)) THEN
    ELSE
      CALL FLAG_ERROR("Distributed vector is not associated.",ERR,ERROR,*999)
    ENDIF    
     
    CALL EXITS("DISTRIBUTED_VECTOR_IO_WRITE")
    RETURN
999 CALL ERRORS("DISTRIBUTED_VECTOR_IO_WRITE",ERR,ERROR)
    CALL EXITS("DISTRIBUTED_VECTOR_IO_WRITE")
    RETURN 1
  END SUBROUTINE DISTRIBUTED_VECTOR_IO_WRITE
  
  !
  !================================================================================================================================
  !
  
 
END MODULE DISTRIUBTED_MATRIX_VECTOR_IO
