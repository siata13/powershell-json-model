class ColorCode {
    [int[]]$rgba;
    [string]$hex;
}

class Color {
    [string]$color;
    [string]$category;
    [string]$type;
    [ColorCode]$code;
}

class Colors {
    [Color[]]$colors;
}