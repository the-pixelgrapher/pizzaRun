if (message_timer > 0)
{
	message_timer -= 1/60;
}

if (message_timer <= 0)
{
	message_string = 0;
}