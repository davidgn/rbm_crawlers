package F0;

import android.os.Build;
/* loaded from: classes.dex */
public abstract class y {

    /* renamed from: a  reason: collision with root package name */
    public static final boolean f903a;

    /* renamed from: b  reason: collision with root package name */
    public static final boolean f904b;

    /* renamed from: c  reason: collision with root package name */
    public static final boolean f905c;

    static {
        int i = Build.VERSION.SDK_INT;
        f903a = true;
        f904b = true;
        f905c = i >= 28;
    }
}
