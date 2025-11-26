#include "button.h"
unsigned int key_code[16] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
//unsigned char arrayMaskOutputOfKey [8] = {0x80,0x40,0x20,0x10,0x01,0x02,0x04,0x08};
//unsigned char arrayMaskInputOfKey [8] = {0x01,0x02,0x04,0x08,0x10,0x20,0x40,0x80};
unsigned char arrayMaskOutputOfKey [4] = {0x10, 0x20, 0x40, 0x80};
unsigned char arrayMaskInputOfKey [4] = {0x01, 0x02, 0x04, 0x08};
unsigned char arrayMaskInputOfButton [8] = {0x01, 0x02, 0x04, 0x08,
    0x10, 0x20, 0x40, 0x80};

void init_key_matrix() {
    PORTB = 0xF0;
    PORTB |= 0xF0;


}

void scan_key_matrix() {
    int row, col;
    unsigned char out_mask;

    for (row = 0; row < 4; row++) {

        // set toàn b? hàng HIGH
        PORTB |= 0xF0;

        // h? 1 hàng xu?ng LOW
        out_mask = arrayMaskOutputOfKey[row];
        PORTB &= ~out_mask;

        button_delay_ms(5);

        for (col = 0; col < 4; col++) {

            int index = row * 4 + col;

            if ((PORTB & arrayMaskInputOfKey[col]) == 0) {
                if (key_code[index] == 0)
                    key_code[index] = 1;
                else
                    key_code[index] = 2;
            } else {
                key_code[index] = 0;
            }
        }
    }
}

void scan_key_button() {
    int i, j;
    for (i = 0; i < 8; i++) {
        if ((PORT_BUTTON & arrayMaskInputOfButton[i]) == 0)
            key_code[i] = key_code[i] + 1;
        else
            key_code[i] = 0;

    }
}


//ham nay de giup cac ban hieu ro viec quet ma tran phim
//Sau khi da hieu ve cach quet ma tran phim thi xoa di, hoac luu lai o mot file khac

void button_delay_ms(int value) {
    int i, j;
    for (i = 0; i < value; i++)
        for (j = 0; j < 238; j++);
}
