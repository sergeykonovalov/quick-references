# Editor `vi`/`vim`

## Command Mode / Navigation (Esc)

Hit `Esc` any time to get to this mode.

### Navigate

- k = up one line
- j = down one line
- h = left one character
- l = right one character
- w = right one word
- b = left one word
- ^ = go to beginning of line
- $ = go to end of line

### Delete

- x = delete character
- dw = delete word
- dd = delete line
- D = delete from current position (till end of line)

### Replace

- r = replace current character
- cw = change current word
- cc = change current line
- c$ = change text from current position

### Search

- /<pattern> = forward search; then n/N
- ?<pattern> = reverse search; then n/N

### Misc

- C = save as c$
- ~ = reverse the case of character
- yy = copy line
- y<position> = copy <position>
- p = paste most recent deleted or yanked text
- u = undo
- Ctrl+R = redo

## Insert Mode (`iIaA`)

- i = insert here
- I = insert in beginning of line
- a = append here
- A = append end of line

## Line Mode (:)

### Saving

- :w = save file
- :w! = force save
- :q = quit
- :q! = quit without changes
- :wq! = write and quite
- :x = same as :wq

### Misc

- :n = position cursor to line n
- :$ = position cursor to last line
- :set nu = turn on line numbering
- :set nonu = turn off line numbering
- :help subcommand = get help

## Combinations

- `5k` = move five lines up
- `80i<Text><Esc>` = Insert <Text> 80 times
- `80i_<Esc>` = Insert 80 `_` characters.
