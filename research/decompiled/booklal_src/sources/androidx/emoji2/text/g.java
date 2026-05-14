package androidx.emoji2.text;

import android.graphics.Rect;
import android.view.View;
import u0.AbstractC0880F;
import u0.C0914t;
/* loaded from: classes.dex */
public abstract class g {

    /* renamed from: a  reason: collision with root package name */
    public int f4078a;

    /* renamed from: b  reason: collision with root package name */
    public final Object f4079b;

    /* renamed from: c  reason: collision with root package name */
    public final Object f4080c;

    public g(AbstractC0880F abstractC0880F) {
        this.f4078a = Integer.MIN_VALUE;
        this.f4080c = new Rect();
        this.f4079b = abstractC0880F;
    }

    public static g a(AbstractC0880F abstractC0880F, int i) {
        if (i != 0) {
            if (i == 1) {
                return new C0914t(abstractC0880F, 1);
            }
            throw new IllegalArgumentException("invalid orientation");
        }
        return new C0914t(abstractC0880F, 0);
    }

    public abstract int b(View view);

    public abstract int c(View view);

    public abstract int d(View view);

    public abstract int e(View view);

    public abstract int f();

    public abstract int g();

    public abstract int h();

    public abstract int i();

    public abstract int j();

    public abstract int k();

    public abstract int l();

    public int m() {
        if (Integer.MIN_VALUE == this.f4078a) {
            return 0;
        }
        return l() - this.f4078a;
    }

    public abstract int n(View view);

    public abstract int o(View view);

    public abstract void p(int i);

    public g(i iVar) {
        this.f4078a = 0;
        this.f4080c = new d();
        this.f4079b = iVar;
    }
}
