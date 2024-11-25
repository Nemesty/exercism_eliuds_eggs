

pub fn eggCount(number: usize) usize {
    const bit_length: usize = @bitSizeOf(@TypeOf(number));
    var bit_count: usize = 0;
    for (0..bit_length) |i| {
        if (((number >> @intCast(i)) & 1) != 0) {
            bit_count += 1;
        } else {
            continue;
        }
    }
    return bit_count;
}
