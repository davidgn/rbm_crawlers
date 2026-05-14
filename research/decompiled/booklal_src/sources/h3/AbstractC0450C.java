package h3;

import C4.G;
import android.graphics.BitmapFactory;
import android.net.NetworkInfo;
/* renamed from: h3.C  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0450C {
    public static void a(int i, int i4, int i5, int i6, BitmapFactory.Options options, C0448A c0448a) {
        int max;
        double floor;
        if (i6 > i4 || i5 > i) {
            if (i4 == 0) {
                floor = Math.floor(i5 / i);
            } else if (i == 0) {
                floor = Math.floor(i6 / i4);
            } else {
                int floor2 = (int) Math.floor(i6 / i4);
                int floor3 = (int) Math.floor(i5 / i);
                max = c0448a.f7649g ? Math.max(floor2, floor3) : Math.min(floor2, floor3);
            }
            max = (int) floor;
        } else {
            max = 1;
        }
        options.inSampleSize = max;
        options.inJustDecodeBounds = false;
    }

    public static BitmapFactory.Options c(C0448A c0448a) {
        boolean a5 = c0448a.a();
        if (a5) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = a5;
            options.inInputShareable = false;
            options.inPurgeable = false;
            return options;
        }
        return null;
    }

    public abstract boolean b(C0448A c0448a);

    public int d() {
        return 0;
    }

    public abstract G e(C0448A c0448a, int i);

    public boolean f(NetworkInfo networkInfo) {
        return false;
    }
}
