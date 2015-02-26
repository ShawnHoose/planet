
! DO NOT EDIT THIS FILE!!!  
!  
! This file is automatically generated by write_network.py at 
! compile-time.  
!  
! To modify the species carried by the network, edit the appropriate inputs 
! file.

! An automatically generated "null" network.  This provides the properties
! of a set of non-reacting species.
!
! nspec            -- the number of species
! naux             -- the number of auxiliary variables
!
! aion             -- atomic number
! zion             -- proton number
!
! spec_names       -- the name of the isotope
! short_spec_names -- an abbreviated form of the species name
!
! aux_names        -- the name of the auxiliary variable
! short_aux_names  -- an abbreviated form of the auxiliary variable
!
!
! This module contains two routines:
!
!  network_init()        -- initialize the isotope properties
!
!  network_species_index -- return the index of the species given its name
!

module network

  use bl_types

  implicit none

  integer, parameter :: nspec = 1
  integer, parameter :: naux =  0

  character (len=16), save :: spec_names(nspec) 
  character (len= 5), save :: short_spec_names(nspec)
  character (len=16), save :: aux_names(naux)
  character (len= 5), save :: short_aux_names(naux)

  real(kind=dp_t), save :: aion(nspec), zion(nspec)

  logical, save :: network_initialized = .false.

contains
  
  subroutine network_init()

    spec_names(1) = "X"

    short_spec_names(1) = "X"

    aion(1) = 2.34

    zion(1) = 1.17


    network_initialized = .true.

  end subroutine network_init

  
  function network_species_index(name)

    character(len=*) :: name
    integer :: network_species_index, n

    network_species_index = -1

    do n = 1, nspec
       if (name == spec_names(n)) then
          network_species_index = n
          exit
       endif
    enddo

    if (naux > 0) then
       do n = 1, naux
          if (name == aux_names(n)) then
             network_species_index = n
	     exit
	  endif
       enddo
    endif
    
    return
  end function network_species_index

end module network
