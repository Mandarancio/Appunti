## Copyright (C) 2016 Martino Ferrari
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {Function File} {@var{retval} =} find_m (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Martino Ferrari <martino@martino-desktop>
## Created: 2016-11-06

function ind = find_m (ev, perc)
  tot_ev = sum(ev);
  ind = -1;
  t = 0;
  
  for i=1:size(ev)(1)
    t= t+ev(i);
    if (t/tot_ev>=perc)
      ind = i;
      break;
    endif
  endfor
endfunction
