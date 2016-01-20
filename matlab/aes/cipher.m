function ciphertext = cipher (plaintext, w, s_box, poly_mat)
    state = reshape (plaintext, 4, 4);
    round_key = (w(1:4, :));
    state = add_round_key (state, round_key);
    for i_round = 1 : 9

        state = sub_bytes (state, s_box);
        state = shift_rows (state);
        state = mix_columns (state, poly_mat);
        
        round_key = (w((1:4) + 4*i_round, :));
        state = add_round_key (state, round_key);
    end
    state = sub_bytes (state, s_box);
    state = shift_rows (state);
    round_key = (w(41:44, :));
    state = add_round_key (state, round_key);
    ciphertext = reshape (state, 1, 16);
end

function state_out = add_round_key (state_in, round_key)
    state_out = bitxor (state_in, round_key);
end

function state_out = shift_rows (state_in)
    state_out = cycle (state_in, 'left');
end

function state_out = mix_columns (state_in, poly_mat)
    mod_pol = bin2dec ('100011011');
    for i_col_state = 1 : 4
        for i_row_state = 1 : 4
            temp_state = 0;
            for i_inner = 1 : 4
                temp_prod = poly_mult (poly_mat(i_row_state, i_inner), state_in(i_inner, i_col_state), mod_pol);
                temp_state = bitxor (temp_state, temp_prod);
            end
            state_out(i_row_state, i_col_state) = temp_state;
        end
    end
end
