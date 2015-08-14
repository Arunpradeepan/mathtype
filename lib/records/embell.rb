# EMBELL record (6):
# Consists of:
# record type (6)
# options
# [nudge] if mtefOPT_NUDGE is set
# [embell] embellishment type
# The embellishment types are:

# value symbol  description
# 2 emb1DOT over single dot
# 3 emb2DOT over double dot
# 4 emb3DOT over triple dot
# 5 emb1PRIME single prime
# 6 emb2PRIME double prime
# 7 embBPRIME backwards prime (left of character)
# 8 embTILDE  tilde
# 9 embHAT  hat (circumflex)
# 10  embNOT  diagonal slash through character
# 11  embRARROW over right arrow
# 12  embLARROW over left arrow
# 13  embBARROW over both arrow (left and right)
# 14  embR1ARROW  over right single-barbed arrow
# 15  embL1ARROW  over left single-barbed arrow
# 16  embMBAR mid-height horizontal bar
# 17  embOBAR over-bar
# 18  emb3PRIME triple prime
# 19  embFROWN  over-arc, concave downward
# 20  embSMILE  over-arc, concave upward
# 21  embX_BARS double diagonal bars
# 22  embUP_BAR bottom-left to top-right diagonal bar
# 23  embDOWN_BAR top-left to bottom-right diagonal bar
# 24  emb4DOT over quad dot
# 25  embU_1DOT under single dot
# 26  embU_2DOT under double dot
# 27  embU_3DOT under triple dot
# 28  embU_4DOT under quad dot
# 29  embU_BAR  under bar
# 30  embU_TILDE  under tilde (~)
# 31  embU_FROWN  under arc (ends point down)
# 32  embU_SMILE  under arc (ends point up)
# 33  embU_RARROW under right arrow
# 34  embU_LARROW under left arrow
# 35  embU_BARROW under both arrow (left and right)
# 36  embU_R1ARROW  under right arrow (1 barb)
# 37  embU_L1ARROW  under left arrow (1 barb)

module Mathtype
  class RecordEmbell < BinData::Record
    int8 :options

    nudge :nudge, onlyif: lambda { options & OPTIONS["mtefOPT_NUDGE"] > 0 }

    int8 :embell
  end
end
