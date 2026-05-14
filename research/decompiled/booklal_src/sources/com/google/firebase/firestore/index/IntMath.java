package com.google.firebase.firestore.index;

import java.math.RoundingMode;
/* loaded from: classes2.dex */
public final class IntMath {

    /* renamed from: com.google.firebase.firestore.index.IntMath$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$java$math$RoundingMode;

        static {
            int[] iArr = new int[RoundingMode.values().length];
            $SwitchMap$java$math$RoundingMode = iArr;
            try {
                iArr[RoundingMode.UNNECESSARY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.UP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.CEILING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.FLOOR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.HALF_EVEN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.HALF_DOWN.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.HALF_UP.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    private IntMath() {
    }

    public static int divide(int i, int i4, RoundingMode roundingMode) {
        if (i4 != 0) {
            int i5 = i / i4;
            int i6 = i - (i4 * i5);
            if (i6 == 0) {
                return i5;
            }
            int i7 = ((i ^ i4) >> 31) | 1;
            switch (AnonymousClass1.$SwitchMap$java$math$RoundingMode[roundingMode.ordinal()]) {
                case 1:
                case 2:
                    return i5;
                case 3:
                    break;
                case 4:
                    if (i7 <= 0) {
                        return i5;
                    }
                    break;
                case 5:
                    if (i7 >= 0) {
                        return i5;
                    }
                    break;
                case 6:
                case 7:
                case 8:
                    int abs = Math.abs(i6);
                    int abs2 = abs - (Math.abs(i4) - abs);
                    if (abs2 == 0) {
                        if (roundingMode != RoundingMode.HALF_UP) {
                            if (!((roundingMode == RoundingMode.HALF_EVEN) & ((i5 & 1) != 0))) {
                                return i5;
                            }
                        }
                    } else if (abs2 <= 0) {
                        return i5;
                    }
                    break;
                default:
                    throw new AssertionError();
            }
            return i5 + i7;
        }
        throw new ArithmeticException("/ by zero");
    }
}
