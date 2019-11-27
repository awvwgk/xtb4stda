      subroutine printbas(n,at)
      implicit none
      include 'aoelementcommon.fh'

      integer n,at(n),nn(94),i,j,l
      character*30 atmp
      character*3 lnam(0:13)

      lnam(0)='s'
      lnam(1)='p'
      lnam(2)='d'
      lnam(3)='f'
      lnam(11)='S'
      lnam(12)='sp'
      lnam(13)='spd'

      nn=0
      do i=1,n
         nn(at(i))=nn(at(i))+1
      enddo

      write(*,*)' Z AO/shell   Hii/eV     exponent'
      do i=1,94
      atmp=timestp(i)
      if(nn(i).eq.0      ) cycle
      if(atmp(1:1).eq.'-') cycle
      write(*,'(i3,5x,A30,''  EN:'',F6.3,'' GAM:'',F6.3,
     .                    ''  GM3:'',F7.4)')
     .i,timestp(i),en(i),gam(i),gam3(i)
      do j=1,ao_n(i)
         l=ao_l(j,i)
         write(*,'(3x,i3,a3,2F12.6)')
     .   ao_pqn(j,i),lnam(l),ao_lev(j,i),ao_exp(j,i)
      enddo
      enddo

      end

      subroutine printbas2(n,at)
      implicit none
      include 'aoelementcommon.fh'

      integer n,at(n),nn(94),i,j,l
      character*30 atmp
      character*3 lnam(0:13)

      lnam(0)='s'
      lnam(1)='p'
      lnam(2)='d'
      lnam(3)='f'
      lnam(11)='S'
      lnam(12)='sp'
      lnam(13)='spd'

      nn=0
      do i=1,n
         nn(at(i))=nn(at(i))+1
      enddo

      write(*,*)' Z AO/shell   Hii/eV     exponent'
      do i=1,94
      atmp=timestp(i)
      if(nn(i).eq.0      ) cycle
      if(atmp(1:1).eq.'-') cycle
      write(*,'(i3,5x,A30,''  EN:'',F6.3,'' GM2:'',F6.3,
     .                    ''  GM3:'',F7.4,
     .                    ''  RAES:'',F5.2)')
     .i,timestp(i),en(i),gam(i),gam3(i),radaes(i)
      do j=1,ao_n(i)
         l=ao_l(j,i)
         write(*,'(3x,i3,a3,2F12.6)')
     .   ao_pqn(j,i),lnam(l),ao_lev(j,i),ao_exp(j,i)
      enddo
      enddo


      end