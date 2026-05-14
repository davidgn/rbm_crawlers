package com.google.protobuf;

import sun.misc.Unsafe;
/* loaded from: classes2.dex */
public final class b1 extends d1 {

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ int f6680b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ b1(Unsafe unsafe, int i) {
        super(unsafe);
        this.f6680b = i;
    }

    @Override // com.google.protobuf.d1
    public final void c(long j5, long j6, long j7, byte[] bArr) {
        switch (this.f6680b) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }

    @Override // com.google.protobuf.d1
    public final boolean d(long j5, Object obj) {
        switch (this.f6680b) {
            case 0:
                if (e1.f6712h) {
                    if (e1.h(j5, obj) == 0) {
                        return false;
                    }
                } else if (e1.i(j5, obj) == 0) {
                    return false;
                }
                return true;
            default:
                if (e1.f6712h) {
                    if (e1.h(j5, obj) == 0) {
                        return false;
                    }
                } else if (e1.i(j5, obj) == 0) {
                    return false;
                }
                return true;
        }
    }

    @Override // com.google.protobuf.d1
    public final byte e(long j5) {
        switch (this.f6680b) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }

    @Override // com.google.protobuf.d1
    public final byte f(long j5, Object obj) {
        switch (this.f6680b) {
            case 0:
                return e1.f6712h ? e1.h(j5, obj) : e1.i(j5, obj);
            default:
                return e1.f6712h ? e1.h(j5, obj) : e1.i(j5, obj);
        }
    }

    @Override // com.google.protobuf.d1
    public final double g(long j5, Object obj) {
        switch (this.f6680b) {
            case 0:
                return Double.longBitsToDouble(j(j5, obj));
            default:
                return Double.longBitsToDouble(j(j5, obj));
        }
    }

    @Override // com.google.protobuf.d1
    public final float h(long j5, Object obj) {
        switch (this.f6680b) {
            case 0:
                return Float.intBitsToFloat(i(j5, obj));
            default:
                return Float.intBitsToFloat(i(j5, obj));
        }
    }

    @Override // com.google.protobuf.d1
    public final void m(Object obj, long j5, boolean z4) {
        switch (this.f6680b) {
            case 0:
                if (e1.f6712h) {
                    e1.p(obj, j5, z4 ? (byte) 1 : (byte) 0);
                    return;
                } else {
                    e1.q(obj, j5, z4 ? (byte) 1 : (byte) 0);
                    return;
                }
            default:
                if (e1.f6712h) {
                    e1.p(obj, j5, z4 ? (byte) 1 : (byte) 0);
                    return;
                } else {
                    e1.q(obj, j5, z4 ? (byte) 1 : (byte) 0);
                    return;
                }
        }
    }

    @Override // com.google.protobuf.d1
    public final void n(Object obj, long j5, byte b5) {
        switch (this.f6680b) {
            case 0:
                if (e1.f6712h) {
                    e1.p(obj, j5, b5);
                    return;
                } else {
                    e1.q(obj, j5, b5);
                    return;
                }
            default:
                if (e1.f6712h) {
                    e1.p(obj, j5, b5);
                    return;
                } else {
                    e1.q(obj, j5, b5);
                    return;
                }
        }
    }

    @Override // com.google.protobuf.d1
    public final void o(Object obj, long j5, double d2) {
        switch (this.f6680b) {
            case 0:
                r(obj, j5, Double.doubleToLongBits(d2));
                return;
            default:
                r(obj, j5, Double.doubleToLongBits(d2));
                return;
        }
    }

    @Override // com.google.protobuf.d1
    public final void p(Object obj, long j5, float f5) {
        switch (this.f6680b) {
            case 0:
                q(obj, j5, Float.floatToIntBits(f5));
                return;
            default:
                q(obj, j5, Float.floatToIntBits(f5));
                return;
        }
    }

    @Override // com.google.protobuf.d1
    public final boolean u() {
        switch (this.f6680b) {
            case 0:
                return false;
            default:
                return false;
        }
    }
}
