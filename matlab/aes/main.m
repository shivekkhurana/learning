function aes
    plaintext_hex =  {'00' '11' '22' '33' '44' '55' '66' '77' '88' '99' 'aa' 'bb' 'cc' 'dd' 'ee' 'ff'};

    [s_box, inv_s_box, w, poly_mat, inv_poly_mat] = aes_init({'00' '01' '02' '03' '04' '05' '06' '07' '08' '09' '0a' '0b' '0c' '0d' '0e' '0f'});
    
    plaintext = hex2dec(plaintext_hex);
    ciphertext = cipher(plaintext, w, s_box, poly_mat)
   
end

