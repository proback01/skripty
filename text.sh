#!/bin/bash
text "Dobrý:den:zdraví:vás:kubec:vubec"
echo $text
echo $text | awk -F ":" '{print $2}'
echo $text | awk -F ":" '{print $6}'
