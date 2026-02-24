src1 = RawSource("dec.yuv",352,288,"I420")
src2 = RawSource("dec0.yuv",352,288,"I420")
src3 = RawSource("dec1.yuv",352,288,"I420")
src4 = RawSource("dec2.yuv",352,288,"I420")
src5 = RawSource("dec3.yuv",352,288,"I420")

src01=StackHorizontal(src1,src2)
src02=StackHorizontal(src1,src3)
src03=StackHorizontal(src1,src4)
src04=StackHorizontal(src1,src5)
src = src01+src02+src03+src04
src = src.AssumeFPS(30)
src.Loop(1,0,1000)
