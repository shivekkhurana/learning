function [s_box, inv_s_box, w, poly_mat, inv_poly_mat] = aes_init(key_hex)
    [s_box, inv_s_box] = s_box_gen;
    rcon = rcon_gen;
    % key_hex = {'00' '01' '02' '03' '04' '05' '06' '07' '08' '09' '0a' '0b' '0c' '0d' '0e' '0f'};
    key = hex2dec(key_hex); 
    w = key_expansion (key, s_box, rcon);
    [poly_mat, inv_poly_mat]= poly_mat_gen;
end

