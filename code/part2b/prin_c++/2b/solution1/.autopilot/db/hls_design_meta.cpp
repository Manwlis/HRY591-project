#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("size", 32, hls_in, 0, "ap_stable", "in_data", 1),
	Port_Property("dim", 32, hls_in, 1, "ap_stable", "in_data", 1),
	Port_Property("threshold", 32, hls_in, 2, "ap_stable", "in_data", 1),
	Port_Property("data0_0", 32, hls_in, 3, "ap_stable", "in_data", 1),
	Port_Property("data0_1", 32, hls_in, 4, "ap_stable", "in_data", 1),
	Port_Property("data0_2", 32, hls_in, 5, "ap_stable", "in_data", 1),
	Port_Property("data0_3", 32, hls_in, 6, "ap_stable", "in_data", 1),
	Port_Property("data0_4", 32, hls_in, 7, "ap_stable", "in_data", 1),
	Port_Property("data0_5", 32, hls_in, 8, "ap_stable", "in_data", 1),
	Port_Property("data0_6", 32, hls_in, 9, "ap_stable", "in_data", 1),
	Port_Property("data0_7", 32, hls_in, 10, "ap_stable", "in_data", 1),
	Port_Property("data0_8", 32, hls_in, 11, "ap_stable", "in_data", 1),
	Port_Property("data0_9", 32, hls_in, 12, "ap_stable", "in_data", 1),
	Port_Property("data0_10", 32, hls_in, 13, "ap_stable", "in_data", 1),
	Port_Property("data0_11", 32, hls_in, 14, "ap_stable", "in_data", 1),
	Port_Property("data0_12", 32, hls_in, 15, "ap_stable", "in_data", 1),
	Port_Property("data0_13", 32, hls_in, 16, "ap_stable", "in_data", 1),
	Port_Property("data0_14", 32, hls_in, 17, "ap_stable", "in_data", 1),
	Port_Property("data0_15", 32, hls_in, 18, "ap_stable", "in_data", 1),
	Port_Property("data1_req_din", 1, hls_out, 19, "ap_bus", "fifo_data", 1),
	Port_Property("data1_req_full_n", 1, hls_in, 19, "ap_bus", "fifo_status", 1),
	Port_Property("data1_req_write", 1, hls_out, 19, "ap_bus", "fifo_update", 1),
	Port_Property("data1_rsp_empty_n", 1, hls_in, 19, "ap_bus", "fifo_status", 1),
	Port_Property("data1_rsp_read", 1, hls_out, 19, "ap_bus", "fifo_update", 1),
	Port_Property("data1_address", 32, hls_out, 19, "ap_bus", "unknown", 1),
	Port_Property("data1_datain", 32, hls_in, 19, "ap_bus", "unknown", 1),
	Port_Property("data1_dataout", 32, hls_out, 19, "ap_bus", "unknown", 1),
	Port_Property("data1_size", 32, hls_out, 19, "ap_bus", "unknown", 1),
	Port_Property("data_out_req_din", 1, hls_out, 20, "ap_bus", "fifo_data", 1),
	Port_Property("data_out_req_full_n", 1, hls_in, 20, "ap_bus", "fifo_status", 1),
	Port_Property("data_out_req_write", 1, hls_out, 20, "ap_bus", "fifo_update", 1),
	Port_Property("data_out_rsp_empty_n", 1, hls_in, 20, "ap_bus", "fifo_status", 1),
	Port_Property("data_out_rsp_read", 1, hls_out, 20, "ap_bus", "fifo_update", 1),
	Port_Property("data_out_address", 32, hls_out, 20, "ap_bus", "unknown", 1),
	Port_Property("data_out_datain", 32, hls_in, 20, "ap_bus", "unknown", 1),
	Port_Property("data_out_dataout", 32, hls_out, 20, "ap_bus", "unknown", 1),
	Port_Property("data_out_size", 32, hls_out, 20, "ap_bus", "unknown", 1),
};
const char* HLS_Design_Meta::dut_name = "myFuncAccel4";