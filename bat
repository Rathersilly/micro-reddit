= SSttrriinngg  <<  OObbjjeecctt

------------------------------------------------------------------------
= IInncclluuddeess::
Comparable (from ruby core)

Colorize::InstanceMethods (from gem colorize-0.8.1)

Diff::LCS (from gem diff-lcs-1.4.4)

------------------------------------------------------------------------
= EExxtteennddeedd  bbyy::
Colorize::ClassMethods (from gem colorize-0.8.1)

(from ruby core)
------------------------------------------------------------------------





A String object holds and manipulates an arbitrary sequence of bytes,
typically representing characters. String objects may be created using
String::new or as literals.

Because of aliasing issues, users of strings should be aware of the
methods that modify the contents of a String object.  Typically, methods
with names ending in ``!'' modify their receiver, while those without a
``!'' return a new String.  However, there are exceptions, such as
String#[]=.
------------------------------------------------------------------------
= CCllaassss  mmeetthhooddss::

  new
  try_convert

= IInnssttaannccee  mmeetthhooddss::

  %
  *
  +
  +@
  -@
  <<
  <=>
  ==
  ===
  =~
  []
  []=
  ascii_only?
  b
  bytes
  bytesize
  byteslice
  capitalize
  capitalize!
  casecmp
  casecmp?
  center
  chars
  chomp
  chomp!
  chop
  chop!
  chr
  clear
  codepoints
  concat
  count
  crypt
  delete
  delete!
  delete_prefix
  delete_prefix!
  delete_suffix
  delete_suffix!
  downcase
  downcase!
  dump
  each_byte
  each_char
  each_codepoint
  each_grapheme_cluster
  each_line
  empty?
  encode
  encode!
  encoding
  end_with?
  eql?
  force_encoding
  freeze
  getbyte
  grapheme_clusters
  gsub
  gsub!
  hash
  hex
  include?
  index
  initialize_copy
  insert
  inspect
  intern
  iseuc
  isjis
  issjis
  isutf8
  kconv
  length
  lines
  ljust
  lstrip
  lstrip!
  match
  match?
  next
  next!
  oct
  ord
  partition
  prepend
  replace
  reverse
  reverse!
  rindex
  rjust
  rpartition
  rstrip
  rstrip!
  scan
  scrub
  scrub!
  setbyte
  shellescape
  shellsplit
  size
  slice
  slice!
  split
  squeeze
  squeeze!
  start_with?
  strip
  strip!
  sub
  sub!
  succ
  succ!
  sum
  swapcase
  swapcase!
  to_c
  to_d
  to_f
  to_i
  to_r
  to_s
  to_str
  to_sym
  toeuc
  tojis
  tolocale
  tosjis
  toutf16
  toutf32
  toutf8
  tr
  tr!
  tr_s
  tr_s!
  undump
  unicode_normalize
  unicode_normalize!
  unicode_normalized?
  unpack
  unpack1
  upcase
  upcase!
  upto
  valid_encoding?

(from gem colorize-0.8.1)
------------------------------------------------------------------------
String class extension.
------------------------------------------------------------------------
(from gem rubocop-1.8.1)
------------------------------------------------------------------------
Extensions to the core String class
------------------------------------------------------------------------
= IInnssttaannccee  mmeetthhooddss::

  blank?

(from gem unicode-display_width-2.0.0)
------------------------------------------------------------------------
= IInnssttaannccee  mmeetthhooddss::

  display_width

(from gem yard-0.9.26)
------------------------------------------------------------------------
= IInnssttaannccee  mmeetthhooddss::

  shell_split

------------------------------------------------------------------------
Also found in:
  gem diff-lcs-1.4.4

