# Scanserver image for Brother DCP-J152W

## Overview
Docker image including scan drivers and pre-configured setup for "Scan to file" hardware button.

## Run the image
I use following docker command to run the image:

```bash
docker run -d --privileged -v /dev/usb/lp0:/dev/usb/lp0 -v /mnt/biehlercloud/ScanShare:/biehlerscanshare  gabbersepp/brother-dcp152w-scan
```

Please note that you may need to install the original brother driver on the host system. I don't have tested it without. But I think without installing the driver the path `/dev/usb/lp0` does not exist.

## Links
Here are some links with additional information. I added them as a litle reminder for myself

+ [Some hints of Brother for brscan](https://support.brother.com/g/b/faqend.aspx?c=de&lang=de&prod=mfcl9550cdw_us_eu_as&faqid=faq00100611_000#ChangeAction)
+ [Scankey tool hints](https://wiki.ubuntuusers.de/Scanner/Brother/Scankey-Tool/)
