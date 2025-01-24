#include "stm32746g_discovery_ts.h"
#include "stm32746g_discovery_lcd.h"
#include "Process_DSP.h"
#include "button.h"
#include "Display.h"
#include "gen_ft8.h"
#include "main.h"
#include "stdio.h"
#include "decode_ft8.h"
#include "WF_Table.h"

#define FFT_X 0
#define FFT_Y 1
#define FFT_W (ft8_buffer - ft8_min_bin)

int FT_8_TouchIndex;

uint16_t cursor;
char rtc_date_string[9];
char rtc_time_string[9];
int decode_flag;
int FT8_Touch_Flag;

const int log_start = 240;
const int log_width = 230;

static uint8_t WF_Bfr[FFT_H * FFT_W];

char current_QSO_receive_message[];
char current_QSO_xmit_message[];

const int max_log_messages = 8;
display_message log_messages[8];

void update_log_display(int mode)
{
	for (int i = 0; i < max_log_messages - 1; i++)
	{
		strcpy(log_messages[i].message, log_messages[i + 1].message);
		log_messages[i].text_color = log_messages[i + 1].text_color;
	}

	if (mode == 0)
	{
		strcpy(log_messages[max_log_messages - 1].message,
			   current_QSO_receive_message);
		log_messages[max_log_messages - 1].text_color = 0;
	}
	else if (mode == 1)
	{
		strcpy(log_messages[max_log_messages - 1].message,
			   current_QSO_xmit_message);
		log_messages[max_log_messages - 1].text_color = 1;
	}

	BSP_LCD_SetTextColor(LCD_COLOR_BLACK);
	BSP_LCD_FillRect(log_start, 40, log_width, 160);

	BSP_LCD_SetFont(&Font16);

	for (int i = 0; i < max_log_messages; i++)
	{

		if (log_messages[i].text_color == 0)
			BSP_LCD_SetTextColor(LCD_COLOR_RED);
		else if (log_messages[i].text_color == 1)
			BSP_LCD_SetTextColor(LCD_COLOR_YELLOW);

		BSP_LCD_DisplayStringAt(log_start, 40 + i * 20,
								(const uint8_t *)log_messages[i].message, LEFT_MODE);
	}
}

void clear_log_messages(void)
{
	const char blank[] = "                    ";

	for (int i = 0; i < max_log_messages; i++)
		strcpy(log_messages[i].message, blank);
}

char current_Beacon_receive_message[40];
char current_Beacon_xmit_message[40];
int max_Beacon_log_messages = 10;
display_message Beacon_log_messages[10];

void update_Beacon_log_display(int mode)
{
	for (int i = 0; i < max_Beacon_log_messages - 1; i++)
	{
		strcpy(Beacon_log_messages[i].message,
			   Beacon_log_messages[i + 1].message);
		Beacon_log_messages[i].text_color =
			Beacon_log_messages[i + 1].text_color;
	}

	if (mode == 0)
	{
		strcpy(Beacon_log_messages[max_Beacon_log_messages - 1].message,
			   current_Beacon_receive_message);
		Beacon_log_messages[max_Beacon_log_messages - 1].text_color = 0;
	}
	else if (mode == 1)
	{
		strcpy(Beacon_log_messages[max_Beacon_log_messages - 1].message,
			   current_Beacon_xmit_message);
		Beacon_log_messages[max_Beacon_log_messages - 1].text_color = 1;
	}

	BSP_LCD_SetTextColor(LCD_COLOR_BLACK);
	BSP_LCD_FillRect(log_start, 40, log_width, 200);
	BSP_LCD_SetFont(&Font16);

	for (int i = 0; i < max_Beacon_log_messages; i++)
	{
		if (Beacon_log_messages[i].text_color == 0)
			BSP_LCD_SetTextColor(LCD_COLOR_RED);
		else if (Beacon_log_messages[i].text_color == 1)
			BSP_LCD_SetTextColor(LCD_COLOR_YELLOW);

		BSP_LCD_DisplayStringAt(log_start, 40 + i * 20,
								(const uint8_t *)Beacon_log_messages[i].message, LEFT_MODE);
	}
}

void clear_Beacon_log_messages(void)
{
	const char blank[] = "                    ";

	for (int i = 0; i < max_Beacon_log_messages; i++)
		strcpy(Beacon_log_messages[i].message, blank);
}

void show_wide(uint16_t x, uint16_t y, int variable)
{
	char string[7]; // print format stuff
	sprintf(string, "%6i", variable);
	BSP_LCD_SetFont(&Font16);
	BSP_LCD_SetTextColor(LCD_COLOR_YELLOW);
	BSP_LCD_DisplayStringAt(x, y, (const uint8_t *)string, LEFT_MODE);
}

void show_variable(uint16_t x, uint16_t y, int variable)
{
	char string[5]; // print format stuff
	sprintf(string, "%4i", variable);
	BSP_LCD_SetFont(&Font16);
	BSP_LCD_SetTextColor(LCD_COLOR_YELLOW);
	BSP_LCD_DisplayStringAt(x, y, (const uint8_t *)string, LEFT_MODE);
}

void show_short(uint16_t x, uint16_t y, uint8_t variable)
{
	char string[4]; // print format stuff
	sprintf(string, "%2i", variable);
	BSP_LCD_SetFont(&Font16);
	BSP_LCD_SetTextColor(LCD_COLOR_YELLOW);
	BSP_LCD_DisplayStringAt(x, y, (const uint8_t *)string, LEFT_MODE);
}

void show_UTC_time(uint16_t x, uint16_t y, int utc_hours, int utc_minutes,
				   int utc_seconds, int color)
{
	sprintf(rtc_time_string, "%02i:%02i:%02i", utc_hours, utc_minutes,
			utc_seconds);
	BSP_LCD_SetFont(&Font16);

	if (color == 0)
		BSP_LCD_SetTextColor(LCD_COLOR_WHITE);
	else if (color == 1)
		BSP_LCD_SetTextColor(LCD_COLOR_YELLOW);

	BSP_LCD_DisplayStringAt(x, y, (const uint8_t *)rtc_time_string, LEFT_MODE);
}

void show_Real_Date(uint16_t x, uint16_t y, int date, int month, int year)
{
	sprintf(rtc_date_string, "%02i/%02i/%02i", date, month, year);
	BSP_LCD_SetFont(&Font16);
	BSP_LCD_SetTextColor(LCD_COLOR_GREEN);
	BSP_LCD_DisplayStringAt(x, y, (const uint8_t *)rtc_date_string, LEFT_MODE);
}

void setup_display(void)
{
	BSP_LCD_SetTextColor(LCD_COLOR_BLACK);
	BSP_LCD_FillRect(0, 0, 480, 272);

	BSP_LCD_SetFont(&Font16);

	BSP_LCD_SetFont(&Font16);
	BSP_LCD_SetBackColor(LCD_COLOR_BLACK);
	BSP_LCD_SetTextColor(LCD_COLOR_GREEN);

	BSP_LCD_DisplayStringAt(0, 60, (const uint8_t *)"DX FT8: A FT8 Xceiver", LEFT_MODE);
	BSP_LCD_DisplayStringAt(50, 80, (const uint8_t *)"Hardware: V2.0", LEFT_MODE);
	BSP_LCD_DisplayStringAt(50, 100, (const uint8_t *)"Firmware: V1.9", LEFT_MODE);
	BSP_LCD_DisplayStringAt(50, 120, (const uint8_t *)"W5BAA - WB2CBA", LEFT_MODE);

	BSP_LCD_DisplayStringAt(50, 160,
							(Band_Minimum == _20M)
								? (const uint8_t *)"Five Band Board"
								: (const uint8_t *)"Seven Band Board",
							LEFT_MODE);

	if (strlen(Station_Call) == 0 || strlen(Locator) == 0)
	{
		BSP_LCD_DisplayStringAt(0, 180, (const uint8_t *)"Invalid Call or Locator", LEFT_MODE);
	}
	else
	{
		char callOrLocator[32];
		sprintf(callOrLocator, "Call    : %s", Station_Call);
		BSP_LCD_DisplayStringAt(50, 180, (const uint8_t *)callOrLocator, LEFT_MODE);
		sprintf(callOrLocator, "Locator : %s", Locator);
		BSP_LCD_DisplayStringAt(50, 200, (const uint8_t *)callOrLocator, LEFT_MODE);
	}

	for (int buttonId = 0; buttonId <= 9; ++buttonId)
		drawButton(buttonId);
}

void Set_Cursor_Frequency(void)
{
	NCO_Frequency = (double)((float)cursor * FFT_Resolution + ft8_min_freq);
}

uint16_t valx, valy;

void Process_Touch(void)
{
	TS_StateTypeDef TS_State;

	if (!Tune_On && !xmit_flag && !Beacon_On)
		sButtonData[5].state = 0;
	else
		sButtonData[5].state = 1;

	BSP_TS_GetState(&TS_State);

	if (TS_State.touchDetected > 0)
	{
		valx = (uint16_t)TS_State.touchX[0];
		valy = (uint16_t)TS_State.touchY[0];

		do
		{
			BSP_TS_GetState(&TS_State);
		} while (TS_State.touchDetected > 0);

		if (FFT_Touch() == 1)
		{
			cursor = (valx - FFT_X);
			NCO_Frequency = (double)(cursor + ft8_min_bin) * FFT_Resolution;
			show_variable(400, 25, (int)NCO_Frequency);
		}
		else
		{
			checkButton();
		}

		FT8_Touch_Flag = FT8_Touch();
	}
}

uint16_t FFT_Touch(void)
{
	if ((valx > FFT_X && valx < FFT_X + FFT_W) && (valy > FFT_Y && valy < 30))
		return 1;
	return 0;
}

uint16_t testButton(uint16_t x, uint16_t y, uint16_t w, uint16_t h)
{
	y = y + 15; // compensate for draw offset

	if ((valx < x + w && valx > x) && (valy > y && valy < y + h))
	{
		return 1;
	}
	return 0;
}

int FT8_Touch(void)
{
	int y_test;
	if ((valx > 0 && valx < 240) && (valy > 40 && valy < 240))
	{
		y_test = valy - 40;

		FT_8_TouchIndex = y_test / 20;

		return 1;
	}
	return 0;
}

const int marker_line_colour_index = 15;
const int max_noise_data_count = 3;
const int max_noise_free_datasets_count = 3;

static int noise_free_datasets_count = 0;

void Display_WF(void)
{
	const int last_line_offset = FFT_W * (FFT_H - 1);

	// shift data in memory by one time step (FFT_W)
	memmove(WF_Bfr, &WF_Bfr[FFT_W], last_line_offset);

	// set the new data in the last line unless a marker line is to be drawn
	for (int x = 0; x < FFT_W; x++)
	{
		WF_Bfr[last_line_offset + x] = (ft8_marker) ? marker_line_colour_index : FFT_Buffer[x + ft8_min_bin];
	}

	// draw the waterfall
	BSP_LCD_SetTextColor(LCD_COLOR_BLACK);
	BSP_LCD_FillRect(0, 0, FFT_W, FFT_H);
	uint8_t* ptr = WF_Bfr;
	for (int y = 0; y < FFT_H; y++)
	{
		for (int x = 0; x < FFT_W; x++)
		{
			const uint8_t pixel = *ptr++ & 15;
			// pixels with value 0 and 1 are both black
			if (pixel > 1)
				BSP_LCD_DrawPixel(x, y, WFPalette[pixel]);
		}

		BSP_LCD_DrawPixel(cursor, y, LCD_COLOR_RED);
		// Each FFT datum is 6.25hz, the transmit bandwidth is 50Hz (= 8 pixels)
		BSP_LCD_DrawPixel(cursor + 8, y, LCD_COLOR_RED);
	}

	if (!ft8_marker && Auto_Sync)
	{
		// count the number of noise items seen in the current data
		int noise_data_count = 0;
		ptr = &WF_Bfr[last_line_offset];
		for (int x = 0; x < FFT_W; x++)
		{
			if ((*ptr++ > 0) && (++noise_data_count >= max_noise_data_count))
				break;
		}

		// if less than the maximum noise items in the current data
		if (noise_data_count < max_noise_data_count)
		{
			// if sufficient noise free data sets are seen it's time to synchronise
			if (++noise_free_datasets_count >= max_noise_free_datasets_count)
			{
				FT8_Sync();
				Auto_Sync = 0;
				noise_free_datasets_count = 0;
				sButtonData[5].state = 0;
				drawButton(5);
			}
		}
		else
		{
			noise_free_datasets_count = 0;
		}
	}

	ft8_marker = 0;
}
