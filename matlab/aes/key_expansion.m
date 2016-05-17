function w = key_expansion(key, s_box, rcon)
   w = reshape(key, 4, 4);
   for i=5:44
       temp = w(i-1, :);
       if mod(i, 4) == 1
           temp = rot_word(temp);
           temp = sub_bytes(temp, s_box);
           r = rcon((i-1)/4, :);
           temp = bitxor(temp, r);
       end
       w(i, :) = bitxor(w(i-4, :), temp);
   end
end

function w_out = rot_word(w_in)
    w_out = w_in([2 3 4 1]);
end



