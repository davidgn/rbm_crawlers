package y1;

import android.graphics.Bitmap;
import android.os.Looper;
import java.util.ArrayList;
import java.util.Collection;
/* renamed from: y1.k  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0994k {

    /* renamed from: a  reason: collision with root package name */
    public static final char[] f11549a = "0123456789abcdef".toCharArray();

    /* renamed from: b  reason: collision with root package name */
    public static final char[] f11550b = new char[64];

    public static boolean a(Object obj, Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    public static int b(int i, int i4, Bitmap.Config config) {
        int i5 = i * i4;
        if (config == null) {
            config = Bitmap.Config.ARGB_8888;
        }
        int i6 = AbstractC0993j.f11548a[config.ordinal()];
        int i7 = 1;
        if (i6 != 1) {
            i7 = 2;
            if (i6 != 2 && i6 != 3) {
                i7 = 4;
                if (i6 == 4) {
                    i7 = 8;
                }
            }
        }
        return i5 * i7;
    }

    public static int c(Bitmap bitmap) {
        if (!bitmap.isRecycled()) {
            try {
                return bitmap.getAllocationByteCount();
            } catch (NullPointerException unused) {
                return bitmap.getRowBytes() * bitmap.getHeight();
            }
        }
        throw new IllegalStateException("Cannot obtain size for recycled Bitmap: " + bitmap + "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig());
    }

    public static ArrayList d(Collection collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (Object obj : collection) {
            if (obj != null) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static int e(int i, int i4) {
        return (i4 * 31) + i;
    }

    public static int f(int i, Object obj) {
        return e(obj == null ? 0 : obj.hashCode(), i);
    }

    public static boolean g() {
        return !(Looper.myLooper() == Looper.getMainLooper());
    }

    public static boolean h(int i, int i4) {
        return (i > 0 || i == Integer.MIN_VALUE) && (i4 > 0 || i4 == Integer.MIN_VALUE);
    }
}
