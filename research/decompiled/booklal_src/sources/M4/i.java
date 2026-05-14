package M4;

import android.os.Build;
import java.lang.reflect.Method;
/* loaded from: classes2.dex */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    public Method f1987a;

    /* renamed from: b  reason: collision with root package name */
    public Method f1988b;

    /* renamed from: c  reason: collision with root package name */
    public Method f1989c;

    public /* synthetic */ i(Method method, Method method2, Method method3) {
        this.f1987a = method;
        this.f1988b = method2;
        this.f1989c = method3;
    }

    public static void a() {
        if (Build.VERSION.SDK_INT >= 29) {
            throw new UnsupportedClassVersionError("This function can only be used for API Level < 29.");
        }
    }
}
