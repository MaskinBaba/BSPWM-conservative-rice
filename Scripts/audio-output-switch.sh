# /bin/sh

csource="$(pactl get-default-sink)"

headphone="alsa_output.pci-0000_00_14.2.analog-stereo"
monitor="alsa_output.pci-0000_00_01.1.hdmi-stereo"

if [[ $csource == $headphone ]]; then
	pactl set-default-sink $monitor
else
	pactl set-default-sink $headphone
fi

