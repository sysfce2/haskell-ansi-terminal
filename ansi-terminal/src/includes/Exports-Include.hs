-- This file contains code that is common to modules
-- System.Console.ANSI.Unix and System.Console.ANSI.Windows, namely the module
-- exports and the associated Haddock documentation.

    -- * Basic data types
    module System.Console.ANSI.Types

    -- * Cursor movement by character
  , cursorUp
  , cursorDown
  , cursorForward
  , cursorBackward
    -- ** \'h...\' variants
  , hCursorUp
  , hCursorDown
  , hCursorForward
  , hCursorBackward
    -- ** \'...Code\' variants
  , cursorUpCode
  , cursorDownCode
  , cursorForwardCode
  , cursorBackwardCode

    -- * Cursor movement by line
    -- | The difference between movements \"by character\" and \"by line\" is
    -- that @*Line@ functions additionally move the cursor to the start of the
    -- line, while functions like @cursorUp@ and @cursorDown@ keep the column
    -- the same.
  , cursorUpLine
  , cursorDownLine
    -- ** \'h...\' variants
  , hCursorUpLine
  , hCursorDownLine
    -- ** \'...Code\' variants
  , cursorUpLineCode
  , cursorDownLineCode

    -- * Directly changing cursor position
  , setCursorColumn
  , setCursorPosition
    -- ** \'h...\' variants
  , hSetCursorColumn
  , hSetCursorPosition
    -- ** \'...Code\' variants
  , setCursorColumnCode
  , setCursorPositionCode

    -- * Saving, restoring and reporting cursor position
    -- | These code sequences are not part of the ECMA-48 standard; they are
    -- popular, but non-portable extensions. On Unix-like operating systems,
    -- they correspond to @rc@ and @sc@ capabilities in the @terminfo@ database.
    --
    -- Cursor positions are relative to the viewport, not to its content.
    --
  , saveCursor
  , restoreCursor
  , reportCursorPosition
    -- ** \'h...\' variants
  , hSaveCursor
  , hRestoreCursor
  , hReportCursorPosition
    -- ** \'...Code\' variants
  , saveCursorCode
  , restoreCursorCode
  , reportCursorPositionCode

    -- * Clearing parts of the screen
    -- | Note that these functions only clear parts of the screen. They do not
    -- move the cursor. Some functions are based on the whole screen and others
    -- are based on the line in which the cursor is located.
  , clearFromCursorToScreenEnd
  , clearFromCursorToScreenBeginning
  , clearScreen
  , clearFromCursorToLineEnd
  , clearFromCursorToLineBeginning
  , clearLine
    -- ** \'h...\' variants
  , hClearFromCursorToScreenEnd
  , hClearFromCursorToScreenBeginning
  , hClearScreen
  , hClearFromCursorToLineEnd
  , hClearFromCursorToLineBeginning
  , hClearLine
    -- ** \'...Code\' variants
  , clearFromCursorToScreenEndCode
  , clearFromCursorToScreenBeginningCode
  , clearScreenCode
  , clearFromCursorToLineEndCode
  , clearFromCursorToLineBeginningCode
  , clearLineCode

    -- * Scrolling the screen
  , scrollPageUp
  , scrollPageDown
    -- ** \'h...\' variants
  , hScrollPageUp
  , hScrollPageDown
    -- ** \'...Code\' variants
  , scrollPageUpCode
  , scrollPageDownCode

    -- * Using screen buffers
    -- | These code sequences are not part of the ECMA-48 standard; they are
    -- popular, but non-portable extensions. On Unix-like operating systems,
    -- they correspond to the @smcup@ and @rmcup@ capabilities in the @terminfo@
    -- database. Windows Terminal supports them. On Windows, if emulation is
    -- required, switching between alternate and normal screen buffers is not
    -- emulated.
  , useAlternateScreenBuffer
  , useNormalScreenBuffer
    -- ** \'h...\' variants
  , hUseAlternateScreenBuffer
  , hUseNormalScreenBuffer
    -- ** \'...Code\' variants
  , useAlternateScreenBufferCode
  , useNormalScreenBufferCode

    -- * Reporting the background or foreground colors
  , reportLayerColor
  , hReportLayerColor
  , reportLayerColorCode

    -- * Select Graphic Rendition mode: colors and other whizzy stuff
  , setSGR
  , hSetSGR
  , setSGRCode

    -- * Cursor visibilty changes
    -- | These code sequences are not part of the ECMA-48 standard; they are
    -- popular, but non-portable extensions. In practice, many terminals support
    -- them.
  , hideCursor
  , showCursor
    -- ** \'h...\' variants
  , hHideCursor
  , hShowCursor
    -- ** \'...Code\' variants
  , hideCursorCode
  , showCursorCode

    -- * Hyperlinks
    -- | These code sequences are not part of the ECMA-48 standard or an Xterm
    -- extension. However, in practice, many terminals support them, including
    -- Windows Terminal. On Windows, if emulation is required, hyperlinks are
    -- not emulated.
  , hyperlink
  , hyperlinkWithId
  , hyperlinkWithParams
    -- ** \'h...\' variants
  , hHyperlink
  , hHyperlinkWithId
  , hHyperlinkWithParams
    -- ** \'...Code\' variants
  , hyperlinkCode
  , hyperlinkWithIdCode
  , hyperlinkWithParamsCode

    -- * Changing the title
  , setTitle
  , hSetTitle
  , setTitleCode

    -- * Checking if handle supports ANSI (not portable: GHC only)
  , hSupportsANSI
  , hSupportsANSIColor
  , hSupportsANSIWithoutEmulation

    -- * Getting the cursor position
  , getCursorPosition
  , hGetCursorPosition
  , getReportedCursorPosition
  , cursorPosition

    -- * Getting the terminal size
  , getTerminalSize
  , hGetTerminalSize

    -- * Getting the background or foreground colors
  , getLayerColor
  , hGetLayerColor
  , getReportedLayerColor
  , layerColor
