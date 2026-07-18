`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/09/2026 12:31:40 AM
// Design Name: 
// Module Name: Traffic_light_sys
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Traffic_light_sys(north_light,west_light,south_light,east_light,clk,reset);
output reg [3:0] north_light,west_light,south_light,east_light;
input wire clk;
input wire reset;

reg [2:0] state;

parameter north_green = 3'b000, north_yellow = 3'b001, west_green = 3'b010, west_yellow = 3'b011, south_green = 3'b100, south_yellow = 3'b101, east_green = 3'b110, east_yellow = 3'b111;

reg [3:0] count;

always@(posedge clk, posedge reset)
begin
    if(reset==1)
        begin
        state <= north_green;
        count <= 3'b0000;
        end
    else
        begin
        case(state)
            north_green:
              begin
                if(count==4'b1111)
                begin
                count <= 4'b0000;
                state <= north_yellow;
                end
              else
                begin
                count <= count+4'b0001;
                state <= north_green;
                end
              end
              
            north_yellow:
              begin
                if(count==4'b0011)
                begin
                count <= 4'b0000;
                state <= west_green;
                end
              else
                begin
                    count <= count+4'b0001;
                    state <= north_yellow;
                end
              end
            
            west_green:
                begin
                    if(count==4'b1111)
                    begin
                    count <= 4'b0000;
                    state <= west_yellow;
                    end
                else
                    begin
                    count <= count+4'b0001;
                    state <= west_green;
                    end
                end
                
             west_yellow:
                begin
                    if(count==4'b0011)
                    begin
                    count <= 4'b0000;
                    state <= south_green;
                    end
                else
                    begin
                    count <= count+4'b0001;
                    state <= west_yellow;
                    end
                end
                
           south_green:
                begin
                    if(count==4'b1111)
                    begin
                    count <= 4'b0000;
                    state <= south_yellow;
                    end
                else
                    begin
                    count <= count+4'b0001;
                    state <= south_green;
                    end
                end
                
            south_yellow:
                begin
                    if(count==4'b0011)
                    begin
                    count <= 4'b0000;
                    state <= east_green;
                    end
               else
                    begin
                    count <= count+4'b0001;
                    state <= south_yellow;
                    end
               end
           
           east_green:
                begin
                    if(count==4'b1111)
                    begin
                    count <= 4'b0000;
                    state <= east_yellow;
                    end
                else
                    begin
                    count <= count+4'b0001;
                    state <= east_green;
                    end
                end
            
            east_yellow:
                begin
                    if(count==4'b0011)
                    begin
                    count <=4'b0000;
                    state <= north_green;
                    end
                else
                    begin
                    count <= count+4'b0001;
                    state <= east_yellow;
                    end
                end
             endcase // case (state)
       end
end

always@(state)
    begin
        case (state) // green_light = 001, yellow_light = 010, red_light = 100
            north_green:
                begin
                    north_light <= 3'b001; //north green light
                    west_light <= 3'b100; //west red light
                    south_light <= 3'b100; //south red light
                    east_light <= 3'b100; //east red light
                end
            
            north_yellow:
                begin
                    north_light <= 3'b010; //north yellow light
                    west_light <= 3'b100; //west red light
                    south_light <= 3'b100; //south red light
                    east_light <= 3'b100; //east red light
                end
                
            west_green:
                begin
                    north_light <= 3'b100; //north red light
                    west_light <= 3'b001; //west green light
                    south_light <= 3'b100; //south red light
                    east_light <= 3'b100; //east red light
                end
                
            west_yellow:
                begin
                    north_light <= 3'b100; //north red light
                    west_light <= 3'b010; //west yellow light
                    south_light <= 3'b100; //south red light
                    east_light <= 3'b100; //east red light
                end
                
            south_green:
                begin
                    north_light <= 3'b100; //north red light
                    west_light <= 3'b100; //west red light
                    south_light <= 3'b001; //south green light
                    east_light <= 3'b100; //east red light
                end
                
            south_yellow:
                begin
                    north_light <= 3'b100; //north red light
                    west_light <= 3'b100; //west red light
                    south_light <= 3'b010; //south yellow light
                    east_light <= 3'b100; //east red light
                end
                
            east_green:
                begin
                    north_light <= 3'b100; //north red light
                    west_light <= 3'b100; //west red light
                    south_light <= 3'b100; //south red light
                    east_light <= 3'b001; //east green light
                end
                
            east_yellow:
                begin
                    north_light <= 3'b100; //north red light
                    west_light <= 3'b100; //west red light
                    south_light <= 3'b100; //south red light
                    east_light <= 3'b010; //east yellow light
                end
            endcase
end
endmodule
