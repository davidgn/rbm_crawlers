package r;
/* loaded from: classes.dex */
public abstract class d {

    /* renamed from: a  reason: collision with root package name */
    public static final int[] f9918a = new int[0];

    /* renamed from: b  reason: collision with root package name */
    public static final Object[] f9919b = new Object[0];

    public static int a(int[] iArr, int i, int i4) {
        int i5 = i - 1;
        int i6 = 0;
        while (i6 <= i5) {
            int i7 = (i6 + i5) >>> 1;
            int i8 = iArr[i7];
            if (i8 < i4) {
                i6 = i7 + 1;
            } else if (i8 <= i4) {
                return i7;
            } else {
                i5 = i7 - 1;
            }
        }
        return ~i6;
    }

    public static int b(long[] jArr, int i, long j5) {
        int i4 = i - 1;
        int i5 = 0;
        while (i5 <= i4) {
            int i6 = (i5 + i4) >>> 1;
            int i7 = (jArr[i6] > j5 ? 1 : (jArr[i6] == j5 ? 0 : -1));
            if (i7 < 0) {
                i5 = i6 + 1;
            } else if (i7 <= 0) {
                return i6;
            } else {
                i4 = i6 - 1;
            }
        }
        return ~i5;
    }
}
