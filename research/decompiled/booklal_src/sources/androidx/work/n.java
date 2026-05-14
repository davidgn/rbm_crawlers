package androidx.work;

import android.util.Log;
/* loaded from: classes.dex */
public final class n {

    /* renamed from: b  reason: collision with root package name */
    public static n f4768b;

    /* renamed from: a  reason: collision with root package name */
    public int f4769a;

    public /* synthetic */ n(int i) {
        this.f4769a = i;
    }

    public static synchronized n c() {
        n nVar;
        synchronized (n.class) {
            try {
                if (f4768b == null) {
                    f4768b = new n(3);
                }
                nVar = f4768b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return nVar;
    }

    public static String e(String str) {
        int length = str.length();
        StringBuilder sb = new StringBuilder(23);
        sb.append("WM-");
        if (length >= 20) {
            sb.append(str.substring(0, 20));
        } else {
            sb.append(str);
        }
        return sb.toString();
    }

    public void a(String str, String str2, Throwable... thArr) {
        if (this.f4769a <= 3) {
            if (thArr.length >= 1) {
                Log.d(str, str2, thArr[0]);
            } else {
                Log.d(str, str2);
            }
        }
    }

    public void b(String str, String str2, Throwable... thArr) {
        if (this.f4769a <= 6) {
            if (thArr.length >= 1) {
                Log.e(str, str2, thArr[0]);
            } else {
                Log.e(str, str2);
            }
        }
    }

    public void d(String str, String str2, Throwable... thArr) {
        if (this.f4769a <= 4) {
            if (thArr.length >= 1) {
                Log.i(str, str2, thArr[0]);
            } else {
                Log.i(str, str2);
            }
        }
    }

    public void f(String str, String str2, Throwable... thArr) {
        if (this.f4769a <= 5) {
            if (thArr.length >= 1) {
                Log.w(str, str2, thArr[0]);
            } else {
                Log.w(str, str2);
            }
        }
    }
}
