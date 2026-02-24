del *.txt

WaveletCoder.exe foreman.cfg
WaveletCoder.exe decoder.cfg InputFile=stream.wfc OutputFile=dec.yuv 
BitStreamExtractor.exe stream.wfc stream_out.wfc QualityLevel=3 SpatialLevel=3 TemporalLevel=4 ploss=0.1 randomizer=0
WaveletCoder.exe decoder.cfg InputFile=stream_out.wfc OutputFile=dec0.yuv 
psnr_yuv.exe foreman.yuv dec0.yuv 352 288
WaveletCoder.exe decoder.cfg InputFile=stream_out.wfc OutputFile=dec1.yuv ISTADecoding=1 
psnr_yuv.exe foreman.yuv dec1.yuv 352 288
pause
