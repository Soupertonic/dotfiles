declare-option str nightshade "rgb:2f5461"
declare-option str nightshadedarker "rgb:17484a"
declare-option str nightshadedark "rgb:10363c"

declare-option str horizon "rgb:b2ecff"
declare-option str caustic "rgb:9dfcc3"

declare-option str deep "rgb:7ebdb6"
declare-option str deeper "rgb:19655a"
declare-option str abyss "rgb:0b232b"

declare-option str algae "rgb:8bf084"
declare-option str sea "rgb:91ebdc"
declare-option str reflection "rgb:e6f8fa"
declare-option str slag "rgb:f5eccc"

declare-option str sunray "rgb:fbfb5c"
declare-option str sunraydarker "rgb:46460b"

declare-option str flare "rgb:ff9b65"
declare-option str flaredarker "rgb:50270d"

declare-option str jelly "rgb:90f5da"
declare-option str jellydarker "rgb:227d65"

set-face global value "%opt{horizon}"
set-face global comment "%opt{algae}"
set-face global string "%opt{sea}"
set-face global module "%opt{sea}"
set-face global type "%opt{caustic}"
set-face global attribute "%opt{caustic}"
set-face global keyword "%opt{slag}"
set-face global meta "%opt{slag}"
set-face global builtin "%opt{caustic}"

set-face global Default "%opt{reflection},%opt{abyss}"
set-face global MatchingChar "%opt{reflection},%opt{deeper}"

set-face global Prompt "%opt{jelly},%opt{jellydarker}"
set-face global MenuForeground "%opt{sunray},%opt{sunraydarker}"
set-face global MenuBackground "%opt{reflection},%opt{nightshadedark}"

set-face global Information "%opt{reflection},%opt{nightshadedark}"
set-face global StatusLine "%opt{reflection},%opt{nightshadedark}"
set-face global StatusLineInfo "%opt{horizon},%opt{nightshadedark}"
set-face global StatusLineMode "%opt{caustic},%opt{nightshadedark}"

set-face global LineNumbers "%opt{nightshade},%opt{abyss}"
set-face global LineNumberCursor "%opt{reflection},%opt{abyss}"

set-face global PrimaryCursor "%opt{abyss},%opt{sunray}"
set-face global PrimaryCursorEol "%opt{abyss},%opt{sunray}"

set-face global SecondaryCursor "%opt{abyss},%opt{flare}"
set-face global SecondaryCursorEol "%opt{abyss},%opt{flare}"

set-face global PrimarySelection "%opt{sunray},%opt{sunraydarker}"
set-face global SecondarySelection "%opt{flare},%opt{flaredarker}"

set-face global BufferPadding "%opt{nightshade},%opt{abyss}"
