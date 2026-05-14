package B;

import android.os.Handler;
import android.os.Looper;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
/* renamed from: B.j  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0019j {

    /* renamed from: a  reason: collision with root package name */
    public static final Class f151a;

    /* renamed from: b  reason: collision with root package name */
    public static final Field f152b;

    /* renamed from: c  reason: collision with root package name */
    public static final Field f153c;

    /* renamed from: d  reason: collision with root package name */
    public static final Method f154d;

    /* renamed from: e  reason: collision with root package name */
    public static final Method f155e;

    /* renamed from: f  reason: collision with root package name */
    public static final Method f156f;

    /* renamed from: g  reason: collision with root package name */
    public static final Handler f157g = new Handler(Looper.getMainLooper());

    /* JADX WARN: Removed duplicated region for block: B:24:0x006b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0054 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        /*
            java.lang.Class<android.app.Activity> r0 = android.app.Activity.class
            android.os.Handler r1 = new android.os.Handler
            android.os.Looper r2 = android.os.Looper.getMainLooper()
            r1.<init>(r2)
            B.AbstractC0019j.f157g = r1
            r1 = 0
            java.lang.String r2 = "android.app.ActivityThread"
            java.lang.Class r2 = java.lang.Class.forName(r2)     // Catch: java.lang.Throwable -> L15
            goto L16
        L15:
            r2 = r1
        L16:
            B.AbstractC0019j.f151a = r2
            r2 = 1
            java.lang.String r3 = "mMainThread"
            java.lang.reflect.Field r3 = r0.getDeclaredField(r3)     // Catch: java.lang.Throwable -> L23
            r3.setAccessible(r2)     // Catch: java.lang.Throwable -> L23
            goto L24
        L23:
            r3 = r1
        L24:
            B.AbstractC0019j.f152b = r3
            java.lang.String r3 = "mToken"
            java.lang.reflect.Field r0 = r0.getDeclaredField(r3)     // Catch: java.lang.Throwable -> L30
            r0.setAccessible(r2)     // Catch: java.lang.Throwable -> L30
            goto L31
        L30:
            r0 = r1
        L31:
            B.AbstractC0019j.f153c = r0
            java.lang.Class r0 = B.AbstractC0019j.f151a
            java.lang.Class<android.os.IBinder> r3 = android.os.IBinder.class
            java.lang.String r4 = "performStopActivity"
            if (r0 != 0) goto L3d
        L3b:
            r0 = r1
            goto L4c
        L3d:
            java.lang.Class r5 = java.lang.Boolean.TYPE     // Catch: java.lang.Throwable -> L3b
            java.lang.Class<java.lang.String> r6 = java.lang.String.class
            java.lang.Class[] r5 = new java.lang.Class[]{r3, r5, r6}     // Catch: java.lang.Throwable -> L3b
            java.lang.reflect.Method r0 = r0.getDeclaredMethod(r4, r5)     // Catch: java.lang.Throwable -> L3b
            r0.setAccessible(r2)     // Catch: java.lang.Throwable -> L3b
        L4c:
            B.AbstractC0019j.f154d = r0
            java.lang.Class r0 = B.AbstractC0019j.f151a
            if (r0 != 0) goto L54
        L52:
            r0 = r1
            goto L61
        L54:
            java.lang.Class r5 = java.lang.Boolean.TYPE     // Catch: java.lang.Throwable -> L52
            java.lang.Class[] r3 = new java.lang.Class[]{r3, r5}     // Catch: java.lang.Throwable -> L52
            java.lang.reflect.Method r0 = r0.getDeclaredMethod(r4, r3)     // Catch: java.lang.Throwable -> L52
            r0.setAccessible(r2)     // Catch: java.lang.Throwable -> L52
        L61:
            B.AbstractC0019j.f155e = r0
            java.lang.Class r0 = B.AbstractC0019j.f151a
            int r3 = android.os.Build.VERSION.SDK_INT
            r4 = 27
            if (r3 != r4) goto L8c
            if (r0 != 0) goto L6e
            goto L8c
        L6e:
            java.lang.String r3 = "requestRelaunchActivity"
            java.lang.Class<android.os.IBinder> r4 = android.os.IBinder.class
            java.lang.Class<java.util.List> r5 = java.util.List.class
            java.lang.Class<java.util.List> r6 = java.util.List.class
            java.lang.Class r7 = java.lang.Integer.TYPE     // Catch: java.lang.Throwable -> L8c
            java.lang.Class r12 = java.lang.Boolean.TYPE     // Catch: java.lang.Throwable -> L8c
            java.lang.Class<android.content.res.Configuration> r9 = android.content.res.Configuration.class
            java.lang.Class<android.content.res.Configuration> r10 = android.content.res.Configuration.class
            r8 = r12
            r11 = r12
            java.lang.Class[] r4 = new java.lang.Class[]{r4, r5, r6, r7, r8, r9, r10, r11, r12}     // Catch: java.lang.Throwable -> L8c
            java.lang.reflect.Method r0 = r0.getDeclaredMethod(r3, r4)     // Catch: java.lang.Throwable -> L8c
            r0.setAccessible(r2)     // Catch: java.lang.Throwable -> L8c
            r1 = r0
        L8c:
            B.AbstractC0019j.f156f = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: B.AbstractC0019j.<clinit>():void");
    }
}
