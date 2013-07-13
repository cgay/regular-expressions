module:     dylan-user
author:     Nick Kramer (nkramer@cs.cmu.edu)
synopsis:   Contains the library and module definitions for the Regular
            Expressions library.
copyright: see below

//======================================================================
//
// Copyright (c) 1994  Carnegie Mellon University
// Copyright (c) 1998, 1999, 2000  Gwydion Dylan Maintainers
// All rights reserved.
// 
// Use and copying of this software and preparation of derivative
// works based on this software are permitted, including commercial
// use, provided that the following conditions are observed:
// 
// 1. This copyright notice must be retained in full on any copies
//    and on appropriate parts of any derivative works.
// 2. Documentation (paper or online) accompanying any system that
//    incorporates this software, or any part of it, must acknowledge
//    the contribution of the Gwydion Project at Carnegie Mellon
//    University, and the Gwydion Dylan Maintainers.
// 
// This software is made available "as is".  Neither the authors nor
// Carnegie Mellon University make any warranty about the software,
// its performance, or its conformity to any specification.
// 
// Bug reports should be sent to <gd-bugs@gwydiondylan.org>; questions,
// comments and suggestions are welcome at <gd-hackers@gwydiondylan.org>.
// Also, see http://www.gwydiondylan.org/ for updates and documentation. 
//
//======================================================================

define library regular-expressions
  use dylan;
  use common-dylan;
  use strings;
  export
    regular-expressions,
    regex-implementation;
end library regular-expressions;

define module regular-expressions
  create
    <regex>,
    <regex-match>,
    <match-group>,
    <regex-error>,
      regex-error-pattern,
    <invalid-regex>,
    <invalid-match-group>,

    // Compiling and accessing regex info
    compile-regex,
    regex-group-count,
    regex-pattern,

    // Search and replace
    regex-search,
    regex-search-strings,
    regex-position,
    regex-replace,

    // Accessing match groups and individual group info
    match-group,
    groups-by-position,
    groups-by-name,
    group-text,
    group-start,
    group-end;
end module regular-expressions;

define module regex-implementation
  use common-dylan;
  use dylan-extensions,
    import: { <byte-character>, string-hash };
  use strings,
    import: { char-equal-ic?,
              decimal-digit? };
  use %strings,
    import: { make-substring-positioner };
  use regular-expressions,
    export: all;
  export
    // extra exports for the test suite to use
    <mark>,
    *regex-cache*;
end module regex-implementation;
