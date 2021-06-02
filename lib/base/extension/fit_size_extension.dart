
import '../../shared/size_fit.dart';

extension DoubleFit on double{
  double get px {
    return ZYSizeFit.setPx(this);
  }

  double get rpx {
    return ZYSizeFit.setRpx(this);
  }
}

extension IntFit on int {
  double get px {
    return ZYSizeFit.setPx(this.toDouble());
  }
  double get rpx {
    return ZYSizeFit.setRpx(this.toDouble());
  }
}