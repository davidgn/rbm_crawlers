package f2;

import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import g0.C0421a;
/* renamed from: f2.a  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0415a {

    /* renamed from: a  reason: collision with root package name */
    public static final LinearInterpolator f7321a = new LinearInterpolator();

    /* renamed from: b  reason: collision with root package name */
    public static final C0421a f7322b = new C0421a();

    /* renamed from: c  reason: collision with root package name */
    public static final C0421a f7323c = new g0.b(C0421a.f7361c);

    /* renamed from: d  reason: collision with root package name */
    public static final C0421a f7324d = new g0.b(C0421a.f7363e);

    /* renamed from: e  reason: collision with root package name */
    public static final DecelerateInterpolator f7325e = new DecelerateInterpolator();

    public static float a(float f5, float f6, float f7) {
        return ((f6 - f5) * f7) + f5;
    }
}
