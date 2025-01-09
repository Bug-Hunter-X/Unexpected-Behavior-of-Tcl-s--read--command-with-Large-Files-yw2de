proc read_file_iter {filename} {    set f [open $filename r]    if {$f == -1} {        return -1    }    set data ""    while {[gets $f line] != -1} {        append data $line\n    }    close $f    return $data}
proc read_file_buffered {filename bufferSize} { 
    set f [open $filename r] 
    if {$f == -1} { 
        return -1 
    } 
    set data "" 
    while { [read $f dataChunk $bufferSize] > 0} { 
        append data $dataChunk 
    } 
    close $f 
    return $data
} 