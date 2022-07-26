module RTDC(input clk,
            input rst,
            output reg [6:0] HRM, 
            output reg [6:0] HRL,
            output reg [6:0] MIN_M,
            output reg [6:0] MIN_L,
            output reg [6:0] SEC_M,
            output reg [6:0] SEC_L
);
reg [3:0] count1;//count1=SEC_M
reg [3:0] count2;//count2=SEC_l
reg [3:0] count3;//count3=MIN_M
reg [3:0] count4;//count4=MIN_L
reg [3:0] count5;//count5=HRM
reg [3:0] count6;//count6=HRL
always @(negedge clk)
begin
    if (rst==1) 
    begin
        count1<=0;
        count2<=0;  
        count3<=0;  
        count4<=0;  
        count5<=0;    
        count6<=0;    
    end
    else
    begin
        count2<=count2+1;
        if(count2==9)
        begin
            count2<=0;
            count1<=count1+1;
            if({count1,count2}==59)
            begin
                {count1,count2}<=0;
                count4=count4+1;
                if(count4==9)
                begin
                    count4<=0;
                    count3<=count3+1;
                    if({count3,count4}==59)
                    begin
                        {count3,count4}<=0;
                        count6<=count6+1;
                        if(count6==9)
                        begin
                            count6<=0;
                            count5<=count5+1;
                            if({count5,count6}==23)
                            begin
                                {count5,count6}<=0;
                            end
                        end
                    end
                end
            end
        end
    end
end 
always @(count1 or count2 or count3 or count4 or count5 or count6)
begin
case(count1)
0: SEC_M = 7'b0000001;
1: SEC_M = 7'b1001111;
2: SEC_M = 7'b0010010;
3: SEC_M = 7'b0000110;
4: SEC_M = 7'b1001100;
5: SEC_M = 7'b0100100;
6: SEC_M = 7'b0100000;
7: SEC_M = 7'b0001111;
8: SEC_M = 7'b0000000;
9: SEC_M = 7'b0000100;
default : SEC_M = 7'b1111111;
endcase

case(count2)

0: SEC_L = 7'b0000001;
1: SEC_L = 7'b1001111;
2: SEC_L = 7'b0010010;
3: SEC_L = 7'b0000110;
4: SEC_L = 7'b1001100;
5: SEC_L = 7'b0100100;
6: SEC_L = 7'b0100000;
7: SEC_L = 7'b0001111;
8: SEC_L = 7'b0000000;
9: SEC_L = 7'b0000100;
default : SEC_L = 7'b1111111;

endcase

case(count3)

0: MIN_M = 7'b0000001;
1: MIN_M = 7'b1001111;
2: MIN_M = 7'b0010010;
3: MIN_M = 7'b0000110;
4: MIN_M = 7'b1001100;
5: MIN_M = 7'b0100100;
6: MIN_M = 7'b0100000;
7: MIN_M = 7'b0001111;
8: MIN_M = 7'b0000000;
9: MIN_M = 7'b0000100;
default : MIN_M = 7'b1111111;
endcase
case(count4)

0: MIN_L = 7'b0000001;
1: MIN_L = 7'b1001111;
2: MIN_L = 7'b0010010; 
3: MIN_L = 7'b0000110;
4: MIN_L = 7'b1001100;
5: MIN_L = 7'b0100100;
6: MIN_L = 7'b0100000;
7: MIN_L = 7'b0001111;
8: MIN_L = 7'b0000000;
9: MIN_L = 7'b0000100;
default : MIN_L = 7'b1111111;

endcase

case(count5)

0: HRM = 7'b0000001;
1: HRM  =  7'b1001111;
2: HRM = 7'b0010010;
3: HRM = 7'b0000110;
4: HRM =  7'b1001100;
5: HRM = 7'b0100100;
6: HRM = 7'b0100000;
7: HRM = 7'b0001111;
8: HRM = 7'b000000;
9: HRM = 7'b0000100;
default : HRM = 7'b1111111;
endcase

case(count6)

0: HRL = 7'b0000001;
1: HRL = 7'b1001111;
2: HRL = 7'b0010010;
3: HRL = 7'b0000110;
4: HRL=  7'b1001100;
5: HRL = 7'b0100100;
6: HRL = 7'b0100000;
7: HRL = 7'b0001111;
8: HRL = 7'b0000000;
9: HRL = 760000100;
default : HRL = 7'b1111111;

endcase

end
endmodule
