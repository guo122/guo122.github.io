
# Emacs

<https://www.emacswiki.org/emacs/EmacsForMacOS>

## move

```
C-v			// Move forward one screenful.
M-v			// Move backward one screenful.

C-l			// cursor to the center/top/bottom of the screen.
	
C-p			// Previous line.
C-n			// Next line.
C-b			// Backward.
C-f			// Forward.

M-f			// Move forward a word.
M-b			// Move backward a word.

C-a			// Move to beginning of line.
C-e			// Move to end of line.
M-a			// Move back to beginning of sentence.
M-e			// Move forward to end of sentence.

M-<			// Move to the beginning.
M->			// Move to the end.

M-{			// Backward paragraph.
M-}			// Forward paragraph.

C-M-p			// Jump (
C-M-n			// Jump )

M-g g			// Jump to specific number line.
```

## window

```
C-x 1		// Delete all but one window.
C-x 2
C-x 3
C-x 4 C-f
C-x 4 u

C-M-v		// Scroll the bottom window.
C-x o		// Go back to the top window.
```

## frames

```
C-x 5 2		// Create a new frame.
C-x 5 0		// Remove the selected frame.
```

## buffer

```
C-x C-s		// Save the file.
C-x s		// Save some buffers.
C-x C-b		// List buffers.
C-x b		// Switch buffer.
```

## autoSave
```
M-x recover-this-file
```

## delete

```
<DEL>       // Delete the character just before the cursor
C-d         // Delete the next character after the cursor

M-<DEL>     // Kill the word immediately before the cursor
M-d         // Kill the next word after the cursor

C-k         // Kill from the cursor position to end of line
M-k         // Kill to the end of the current sentence

C-y			// Yank the text back.
M-y			// Replaces that yanked text with the previous kill.
```

## undo

```
C-/
C-_
C-x u		// Undo
```

## search

```
C-s		// Forward search
C-r		// Reverse serach
```

## mode line

```
M-x text-mode
M-x auto-fill-mode
```

## help

```
C-h c C-p	// Brief description of the command.
C-h k C-p	// More information about a command.
C-h f 		// Describe a function.
C-h v		// The documentation of variables.
C-h a		// Command Apropos.
C-h i		// Read included Manuals.
C-h r		// Emacs manual.
```

## others

```
C-u num
C-g 		// cancel
C-x C-l		// (which is a disabled command)

C-<Space>
C-@			// set mark
```


