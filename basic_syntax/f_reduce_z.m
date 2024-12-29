function [z_final] = reduce_z(z)
    while z > 75
        z = z - 1;
    end
    z_final = z;
end