package l1;

import android.os.Build;
import com.google.android.gms.fido.fido2.api.common.UserVerificationMethods;
import java.io.File;
/* loaded from: classes.dex */
public final class u {

    /* renamed from: f  reason: collision with root package name */
    public static final File f8733f = new File("/proc/self/fd");

    /* renamed from: g  reason: collision with root package name */
    public static volatile u f8734g;

    /* renamed from: a  reason: collision with root package name */
    public final boolean f8735a;

    /* renamed from: b  reason: collision with root package name */
    public final int f8736b;

    /* renamed from: c  reason: collision with root package name */
    public final int f8737c;

    /* renamed from: d  reason: collision with root package name */
    public int f8738d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f8739e = true;

    public u() {
        String str = Build.MODEL;
        if (str != null && str.length() >= 7) {
            str.substring(0, 7).getClass();
        }
        this.f8735a = true;
        if (Build.VERSION.SDK_INT >= 28) {
            this.f8736b = 20000;
            this.f8737c = 0;
            return;
        }
        this.f8736b = 700;
        this.f8737c = UserVerificationMethods.USER_VERIFY_PATTERN;
    }

    public static u a() {
        if (f8734g == null) {
            synchronized (u.class) {
                try {
                    if (f8734g == null) {
                        f8734g = new u();
                    }
                } finally {
                }
            }
        }
        return f8734g;
    }
}
