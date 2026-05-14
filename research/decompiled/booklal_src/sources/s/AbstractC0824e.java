package s;
/* renamed from: s.e  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract /* synthetic */ class AbstractC0824e {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int[] f10055a = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15};

    public static /* synthetic */ boolean a(int i, int i4) {
        if (i != 0) {
            return i == i4;
        }
        throw null;
    }

    public static StringBuilder b(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        return sb;
    }

    public static StringBuilder c(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(str2);
        return sb;
    }

    public static /* synthetic */ int d(int i) {
        if (i != 0) {
            return i - 1;
        }
        throw null;
    }

    public static /* synthetic */ int[] e(int i) {
        int[] iArr = new int[i];
        System.arraycopy(f10055a, 0, iArr, 0, i);
        return iArr;
    }
}
