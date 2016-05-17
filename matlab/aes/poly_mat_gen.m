function [poly_mat, inv_poly_mat] = poly_mat_gen
    row_hex = {'02' '03' '01' '01'};
    row = hex2dec(row_hex);
    rows = repmat(row, 4, 1);
    poly_mat = cycle(rows, 'right');
    inv_row_hex = {'0e' '0b' '0d' '09'};
    inv_row = hex2dec(inv_row_hex);
    inv_rows = repmat(inv_row, 4, 1);
    inv_poly_mat = cycle(inv_rows, 'right');
end
