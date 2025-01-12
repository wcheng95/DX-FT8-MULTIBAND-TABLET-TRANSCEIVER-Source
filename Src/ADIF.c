/*
 * ADIF.c
 *
 *  Created on: Jun 18, 2023
 *      Author: Charley
 */

#include <ctype.h>

#include "ADIF.h"
#include "gen_ft8.h"
#include "DS3231.h"
#include "decode_ft8.h"
#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include "log_file.h"
#include "button.h"

static const char *trim_front(const char *ptr)
{
	while (isspace((int) *ptr))
		++ptr;
	return ptr;
}

static unsigned num_chars(const char *ptr)
{
	return (unsigned) strlen(trim_front(ptr));
}

void write_ADIF_Log(void)
{
	static char log_line[220];
	const char *freq = sBand_Data[BandIndex].display;

	make_Real_Time();
	make_Real_Date();

	int offset = sprintf(log_line, "<call:%1u>%s ", num_chars(Target_Call), trim_front(Target_Call));
	offset += sprintf(log_line+offset, "<gridsquare:%1u>%s ", num_chars(Target_Locator), trim_front(Target_Locator));
	offset += sprintf(log_line+offset, "<mode:3>FT8<qso_date:%1u>%s ", num_chars(log_rtc_date_string), trim_front(log_rtc_date_string));
	offset += sprintf(log_line+offset, "<time_on:%1u>%s ", num_chars(log_rtc_time_string), trim_front(log_rtc_time_string));
	offset += sprintf(log_line+offset, "<freq:%1u>%s ", num_chars(freq), trim_front(freq));
	offset += sprintf(log_line+offset, "<station_callsign:%1u>%s ", num_chars(Station_Call), trim_front(Station_Call));
	offset += sprintf(log_line+offset, "<my_gridsquare:%1u>%s ", num_chars(Locator), trim_front(Locator));
	offset += sprintf(log_line+offset, "<rst_sent:3:N>%3i ", Target_RSL);
	offset += sprintf(log_line+offset, "<rst_rcvd:3:N>%3i <tx_pwr:4>0.5 <eor>", Station_RSL);

	Write_Log_Data(log_line);
}
