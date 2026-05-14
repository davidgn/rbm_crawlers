package j;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.view.LayoutInflater;
/* renamed from: j.d  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0482d extends ContextWrapper {

    /* renamed from: f  reason: collision with root package name */
    public static Configuration f7876f;

    /* renamed from: a  reason: collision with root package name */
    public int f7877a;

    /* renamed from: b  reason: collision with root package name */
    public Resources.Theme f7878b;

    /* renamed from: c  reason: collision with root package name */
    public LayoutInflater f7879c;

    /* renamed from: d  reason: collision with root package name */
    public Configuration f7880d;

    /* renamed from: e  reason: collision with root package name */
    public Resources f7881e;

    public C0482d(Context context, int i) {
        super(context);
        this.f7877a = i;
    }

    public final void a(Configuration configuration) {
        if (this.f7881e != null) {
            throw new IllegalStateException("getResources() or getAssets() has already been called");
        }
        if (this.f7880d != null) {
            throw new IllegalStateException("Override configuration has already been set");
        }
        this.f7880d = new Configuration(configuration);
    }

    @Override // android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    public final void b() {
        if (this.f7878b == null) {
            this.f7878b = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.f7878b.setTo(theme);
            }
        }
        this.f7878b.applyStyle(this.f7877a, true);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final AssetManager getAssets() {
        return getResources().getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        if (this.f7881e == null) {
            Configuration configuration = this.f7880d;
            if (configuration != null) {
                if (f7876f == null) {
                    Configuration configuration2 = new Configuration();
                    configuration2.fontScale = 0.0f;
                    f7876f = configuration2;
                }
                if (!configuration.equals(f7876f)) {
                    this.f7881e = AbstractC0481c.a(this, this.f7880d).getResources();
                }
            }
            this.f7881e = super.getResources();
        }
        return this.f7881e;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Object getSystemService(String str) {
        if ("layout_inflater".equals(str)) {
            if (this.f7879c == null) {
                this.f7879c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
            }
            return this.f7879c;
        }
        return getBaseContext().getSystemService(str);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Resources.Theme getTheme() {
        Resources.Theme theme = this.f7878b;
        if (theme != null) {
            return theme;
        }
        if (this.f7877a == 0) {
            this.f7877a = 2131886588;
        }
        b();
        return this.f7878b;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void setTheme(int i) {
        if (this.f7877a != i) {
            this.f7877a = i;
            b();
        }
    }
}
