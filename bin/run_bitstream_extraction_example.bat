del *.txt

WaveletCoder.exe foreman.cfg

BitStreamExtractor.exe stream.wfc stream_out.wfc QualityLevel=0 SpatialLevel=3 TemporalLevel=4 ploss=0.0 randomizer=0
WaveletCoder.exe decoder.cfg InputFile=stream_out.wfc OutputFile=dec0.yuv
psnr_yuv.exe soccer.yuv dec0.yuv 352 288

BitStreamExtractor.exe stream.wfc stream_out.wfc QualityLevel=1 SpatialLevel=3 TemporalLevel=4 ploss=0.0 randomizer=0
WaveletCoder.exe decoder.cfg InputFile=stream_out.wfc OutputFile=dec1.yuv
psnr_yuv.exe soccer.yuv dec1.yuv 352 288

BitStreamExtractor.exe stream.wfc stream_out.wfc QualityLevel=2 SpatialLevel=3 TemporalLevel=4 ploss=0.0 randomizer=0
WaveletCoder.exe decoder.cfg InputFile=stream_out.wfc OutputFile=dec2.yuv
psnr_yuv.exe soccer.yuv dec2.yuv 352 288

BitStreamExtractor.exe stream.wfc stream_out.wfc QualityLevel=3 SpatialLevel=3 TemporalLevel=4 ploss=0.0 randomizer=0
WaveletCoder.exe decoder.cfg InputFile=stream_out.wfc OutputFile=dec3.yuv
psnr_yuv.exe soccer.yuv dec3.yuv 352 288

pause
