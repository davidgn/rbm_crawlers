package S;

import android.content.res.Resources;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.widget.ListView;
import com.google.firebase.messaging.ServiceStarter;
import l.C0596q0;
/* loaded from: classes.dex */
public final class g implements View.OnTouchListener {

    /* renamed from: w  reason: collision with root package name */
    public static final int f2501w = ViewConfiguration.getTapTimeout();

    /* renamed from: a  reason: collision with root package name */
    public final a f2502a;

    /* renamed from: b  reason: collision with root package name */
    public final AccelerateInterpolator f2503b;

    /* renamed from: c  reason: collision with root package name */
    public final ListView f2504c;

    /* renamed from: d  reason: collision with root package name */
    public A2.h f2505d;

    /* renamed from: e  reason: collision with root package name */
    public final float[] f2506e;

    /* renamed from: f  reason: collision with root package name */
    public final float[] f2507f;

    /* renamed from: l  reason: collision with root package name */
    public final int f2508l;

    /* renamed from: m  reason: collision with root package name */
    public final int f2509m;

    /* renamed from: n  reason: collision with root package name */
    public final float[] f2510n;
    public final float[] o;

    /* renamed from: p  reason: collision with root package name */
    public final float[] f2511p;

    /* renamed from: q  reason: collision with root package name */
    public boolean f2512q;

    /* renamed from: r  reason: collision with root package name */
    public boolean f2513r;

    /* renamed from: s  reason: collision with root package name */
    public boolean f2514s;

    /* renamed from: t  reason: collision with root package name */
    public boolean f2515t;

    /* renamed from: u  reason: collision with root package name */
    public boolean f2516u;

    /* renamed from: v  reason: collision with root package name */
    public final C0596q0 f2517v;

    /* JADX WARN: Type inference failed for: r1v0, types: [S.a, java.lang.Object] */
    public g(C0596q0 c0596q0) {
        ?? obj = new Object();
        obj.f2497e = Long.MIN_VALUE;
        obj.f2499g = -1L;
        obj.f2498f = 0L;
        this.f2502a = obj;
        this.f2503b = new AccelerateInterpolator();
        float[] fArr = {0.0f, 0.0f};
        this.f2506e = fArr;
        float[] fArr2 = {Float.MAX_VALUE, Float.MAX_VALUE};
        this.f2507f = fArr2;
        float[] fArr3 = {0.0f, 0.0f};
        this.f2510n = fArr3;
        float[] fArr4 = {0.0f, 0.0f};
        this.o = fArr4;
        float[] fArr5 = {Float.MAX_VALUE, Float.MAX_VALUE};
        this.f2511p = fArr5;
        this.f2504c = c0596q0;
        float f5 = Resources.getSystem().getDisplayMetrics().density;
        float f6 = ((int) ((1575.0f * f5) + 0.5f)) / 1000.0f;
        fArr5[0] = f6;
        fArr5[1] = f6;
        float f7 = ((int) ((f5 * 315.0f) + 0.5f)) / 1000.0f;
        fArr4[0] = f7;
        fArr4[1] = f7;
        this.f2508l = 1;
        fArr2[0] = Float.MAX_VALUE;
        fArr2[1] = Float.MAX_VALUE;
        fArr[0] = 0.2f;
        fArr[1] = 0.2f;
        fArr3[0] = 0.001f;
        fArr3[1] = 0.001f;
        this.f2509m = f2501w;
        obj.f2493a = ServiceStarter.ERROR_UNKNOWN;
        obj.f2494b = ServiceStarter.ERROR_UNKNOWN;
        this.f2517v = c0596q0;
    }

    public static float b(float f5, float f6, float f7) {
        return f5 > f7 ? f7 : f5 < f6 ? f6 : f5;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float a(float r4, float r5, float r6, int r7) {
        /*
            r3 = this;
            float[] r0 = r3.f2506e
            r0 = r0[r7]
            float[] r1 = r3.f2507f
            r1 = r1[r7]
            float r0 = r0 * r5
            r2 = 0
            float r0 = b(r0, r2, r1)
            float r1 = r3.c(r4, r0)
            float r5 = r5 - r4
            float r4 = r3.c(r5, r0)
            float r4 = r4 - r1
            int r5 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            android.view.animation.AccelerateInterpolator r0 = r3.f2503b
            if (r5 >= 0) goto L25
            float r4 = -r4
            float r4 = r0.getInterpolation(r4)
            float r4 = -r4
            goto L2d
        L25:
            int r5 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r5 <= 0) goto L36
            float r4 = r0.getInterpolation(r4)
        L2d:
            r5 = -1082130432(0xffffffffbf800000, float:-1.0)
            r0 = 1065353216(0x3f800000, float:1.0)
            float r4 = b(r4, r5, r0)
            goto L37
        L36:
            r4 = r2
        L37:
            int r5 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r5 != 0) goto L3c
            return r2
        L3c:
            float[] r0 = r3.f2510n
            r0 = r0[r7]
            float[] r1 = r3.o
            r1 = r1[r7]
            float[] r2 = r3.f2511p
            r7 = r2[r7]
            float r0 = r0 * r6
            if (r5 <= 0) goto L51
            float r4 = r4 * r0
            float r4 = b(r4, r1, r7)
            return r4
        L51:
            float r4 = -r4
            float r4 = r4 * r0
            float r4 = b(r4, r1, r7)
            float r4 = -r4
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: S.g.a(float, float, float, int):float");
    }

    public final float c(float f5, float f6) {
        if (f6 == 0.0f) {
            return 0.0f;
        }
        int i = this.f2508l;
        if (i == 0 || i == 1) {
            if (f5 < f6) {
                if (f5 >= 0.0f) {
                    return 1.0f - (f5 / f6);
                }
                if (this.f2515t && i == 1) {
                    return 1.0f;
                }
            }
        } else if (i == 2 && f5 < 0.0f) {
            return f5 / (-f6);
        }
        return 0.0f;
    }

    public final void d() {
        int i = 0;
        if (this.f2513r) {
            this.f2515t = false;
            return;
        }
        a aVar = this.f2502a;
        long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        int i4 = (int) (currentAnimationTimeMillis - aVar.f2497e);
        int i5 = aVar.f2494b;
        if (i4 > i5) {
            i = i5;
        } else if (i4 >= 0) {
            i = i4;
        }
        aVar.i = i;
        aVar.f2500h = aVar.a(currentAnimationTimeMillis);
        aVar.f2499g = currentAnimationTimeMillis;
    }

    public final boolean e() {
        C0596q0 c0596q0;
        int count;
        a aVar = this.f2502a;
        float f5 = aVar.f2496d;
        int abs = (int) (f5 / Math.abs(f5));
        Math.abs(aVar.f2495c);
        if (abs == 0 || (count = (c0596q0 = this.f2517v).getCount()) == 0) {
            return false;
        }
        int childCount = c0596q0.getChildCount();
        int firstVisiblePosition = c0596q0.getFirstVisiblePosition();
        int i = firstVisiblePosition + childCount;
        if (abs > 0) {
            if (i >= count && c0596q0.getChildAt(childCount - 1).getBottom() <= c0596q0.getHeight()) {
                return false;
            }
        } else if (abs >= 0) {
            return false;
        } else {
            if (firstVisiblePosition <= 0 && c0596q0.getChildAt(0).getTop() >= 0) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0013, code lost:
        if (r0 != 3) goto L12;
     */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouch(android.view.View r8, android.view.MotionEvent r9) {
        /*
            r7 = this;
            boolean r0 = r7.f2516u
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            int r0 = r9.getActionMasked()
            r2 = 1
            if (r0 == 0) goto L1a
            if (r0 == r2) goto L16
            r3 = 2
            if (r0 == r3) goto L1e
            r8 = 3
            if (r0 == r8) goto L16
            goto L7c
        L16:
            r7.d()
            goto L7c
        L1a:
            r7.f2514s = r2
            r7.f2512q = r1
        L1e:
            float r0 = r9.getX()
            int r3 = r8.getWidth()
            float r3 = (float) r3
            android.widget.ListView r4 = r7.f2504c
            int r5 = r4.getWidth()
            float r5 = (float) r5
            float r0 = r7.a(r0, r3, r5, r1)
            float r9 = r9.getY()
            int r8 = r8.getHeight()
            float r8 = (float) r8
            int r3 = r4.getHeight()
            float r3 = (float) r3
            float r8 = r7.a(r9, r8, r3, r2)
            S.a r9 = r7.f2502a
            r9.f2495c = r0
            r9.f2496d = r8
            boolean r8 = r7.f2515t
            if (r8 != 0) goto L7c
            boolean r8 = r7.e()
            if (r8 == 0) goto L7c
            A2.h r8 = r7.f2505d
            if (r8 != 0) goto L60
            A2.h r8 = new A2.h
            r9 = 4
            r8.<init>(r7, r9)
            r7.f2505d = r8
        L60:
            r7.f2515t = r2
            r7.f2513r = r2
            boolean r8 = r7.f2512q
            if (r8 != 0) goto L75
            int r8 = r7.f2509m
            if (r8 <= 0) goto L75
            A2.h r9 = r7.f2505d
            long r5 = (long) r8
            java.util.WeakHashMap r8 = M.AbstractC0070a0.f1813a
            r4.postOnAnimationDelayed(r9, r5)
            goto L7a
        L75:
            A2.h r8 = r7.f2505d
            r8.run()
        L7a:
            r7.f2512q = r2
        L7c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: S.g.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }
}
